/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package stu_pro;

import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.clipsrules.jni.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/**
 *
 * @author MR. V.P. SINGH
 */
class facts_mapping implements Comparable{
    int fact;
    ArrayList<Integer> facts_connected=new ArrayList<>();
    boolean fact_correct=true;
    boolean fact_check=false;
    void print(){
    System.out.println(fact+"=>"+printfactlist()+" "+fact_correct+" "+fact_check);
    }
    
    String printfactlist(){
        String s="";
        for(Integer i:facts_connected)
            s+=i.toString()+",";
        return s;
    }
    
    
    @Override
    public String toString() {
        return "";
    }

    @Override
    public int compareTo(Object t) {
        int comparefact=((facts_mapping)t).fact;
        /* For Ascending order*/
        return this.fact-comparefact;

    }
    
}


public class BackwardChaining implements Global_variables {
    
    private final ArrayList<String> fact_in_bc=new ArrayList<>();
    private final ArrayList<Integer> fact_in_bc_fbase=new ArrayList<>();
    private final ArrayList<facts_mapping> fact_map=new ArrayList<>();
    
    /*void print_fact_in_bc(){
        for(String f:fact_in_bc){
                System.out.println("index of"+fact_in_bc.indexOf(f)+" "+f);
            }
    }
    */
    
    
    void make_fact_map(String af){
        facts_mapping fm=new facts_mapping();
        String f[]=af.split("/");
        fm.fact=Integer.parseInt(f[0]);
        String f1[]=f[1].split("-");
        for(String a:f1){
            if(!a.equals("")){
                Integer i=Integer.parseInt(a);
                //System.out.println("added=====>"+i);
                fm.facts_connected.add(i);
            }
        }
        //fm.print();
        fact_map.add(fm);
    }
    void setting_facts_value_main(){
        for(facts_mapping f:fact_map){
            setting_facts_value(f);
        }
    }
    void setting_facts_value(facts_mapping f){
            if(f.fact_check){return;}
            int i=fact_map.indexOf(f);
            
            if(!f.fact_correct){
                fact_map.get(i).fact_check=true;
                return;
            }
            
            f.facts_connected.stream().forEach((g) -> {
                if(fact_in_bc_fbase.contains(g));
                else{
                        facts_mapping h=contains_fact(fact_map,g);
                        if(h!=null){
                            int length=fact_map.size();
                            int j=fact_map.indexOf(h);
                            fact_map.get(i).fact_correct=false;
                            do{
                                setting_facts_value(h);
                                if(h.fact_correct){
                                    fact_map.get(i).fact_correct=true;
                                    break;
                                }
                                j++;
                                if(j>=length){break;}
                            }while(fact_map.get(j).fact!=fact_map.get(j-1).fact);
                        }else{
                            fact_map.get(i).fact_correct=false;
                        }
                }
        });
            fact_map.get(i).fact_check=true;
    }
    
    facts_mapping contains_fact(ArrayList<facts_mapping> c, int g) {
        for(facts_mapping o : c) {
            if(o != null && o.fact==g) {
                return o;
            }
        }
        return null;
    }
    
    void rv_processing(Environment clips){
         PrimitiveValue rv; 
         String rv1;
         String evalString = "?*and-bound*"; 
         rv = clips.eval(evalString); 
                try { 
                    System.out.println(" \nrv = " + rv.toString()); 
                    rv1=rv.toString().replace("\"","");
                    String []and_facts=rv1.split("~");
                    for(String af:and_facts){
                        //System.out.println("fact map got from clips:"+af);
                        if(!af.equals("-"))
                        {
                            make_fact_map(af);
                        }
                    }
                    //clips.clear(); 
                    Collections.sort(fact_map);
                } 
            catch (Exception e) 
                { 
                     e.printStackTrace();
                    System.out.println("Invalid string value"); }
    
    }
    
    void delete_rules(int retract_fact[],Environment clips){
        for(int i:retract_fact){
               if(i==0)break;
                //System.out.println("deleted rule:"+i);
                clips.eval("(retract "+i+")");
                 //clips.eval("(facts)");
                fact_in_bc_fbase.remove(fact_in_bc_fbase.indexOf(i));
           }
           /*//rules in fact base
           fact_in_bc_fbase.stream().forEach((value) -> {
               System.out.println("Value = " + value);
            });
           */  
    }
    
    String getanswer(int Stopvalue){
        String Answer="";
        for(facts_mapping f:fact_map){
            
            if(f.fact>Stopvalue){
                break;
            }
            if(f.fact_correct){
                for(Integer i:f.facts_connected){
                    //System.out.println(fact_in_bc.get(i-1));
                    Answer+=fact_in_bc.get(i-1)+" & ";
                }
                Answer=Answer.substring(0,Answer.length()-3)+".\nOR\n";
            }
            
        }
        if(!Answer.equals("")){
            Answer=Answer.substring(0,Answer.length()-3);
        }
        return Answer;
    }
    
    public String main2(String x[]){
        
         Environment clips=new Environment(); 
         Environment clips2=new Environment(); 
         String ans="";
         
         
         clips2.load(template);
         clips2.load(fact_base);
         clips2.load(learn_facts1);
         //clips.eval("(facts)"); 
         clips.load(template);
         clips.load(bc_rule_base);
         clips.load(bc_rule_learn);
         //clips.load("C:\\Users\\MR. V.P. SINGH\\Desktop\\bc.clp");
         clips.reset();
         clips.run();
         

         String str="";
         str="(rules(fact-is "+x[1]+")(value "+x[0]+")(compare-value "+x[2]+"))";

         clips.assertString(str);
         clips.run();
         //clips.eval("(facts)");
         
       
        String evalStr = "(find-all-facts ((?f rules )) TRUE)";
        String f_l = clips.eval(evalStr).toString();
        System.out.println("facts got matched are : "+f_l);
        String[] factlist=f_l.split(" ");
        int factcount = factlist.length;
        System.out.println("Facts that got matched after infrencing ......... "+factcount);
       
        
        int retract_fact[]=new int[20];
        try{    
        if(f_l.equals("()")||factcount<=1){
            //System.out.println("Don't know");
            ans="Don't know";
        }    
        else{
            
            clips2.reset();
            clips2.run();
            rv_processing(clips);
            for(int i=0,j=0;i<factcount+1;i++){
                FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(i);
                String value=fv.getFactSlot("value").toString();
                String fact_is=fv.getFactSlot("fact-is").toString();
                String compare_value=fv.getFactSlot("compare-value").toString();
                String query="(find-all-facts ((?f rules )) (and(eq ?f:fact-is "+fact_is
                        +")(eq ?f:value "+value+")(eq ?f:compare-value "+compare_value+")))";
                
                
                if(fact_is.equals("con-check")){
                    String str1="(rules(fact-is "+fact_is+")(value "+value+")(compare-value "+compare_value+"))";
                    clips2.assertString(str1);
                    fact_is="";
                }
                
                
                if(value.equalsIgnoreCase("none")){value="";}
                if(compare_value.equalsIgnoreCase("none")){compare_value="";}
                if(fact_is.equalsIgnoreCase("student")&&value.equalsIgnoreCase("none")
                        &&compare_value.equalsIgnoreCase("none")){fact_is="person is student";}
                
                String fact=value+" "+fact_is+" "+compare_value;
                
                
                fact_in_bc.add(fact);
                fact_in_bc_fbase.add(i+1);
                //System.out.println(value+" "+fact_is+" "+compare_value);

                
                String f_l1 = clips2.eval(query).toString();
                //System.out.println("facts got matched are : "+f_l1);
                if(f_l1.equals("()")){
                    retract_fact[j]=i+1;
                    j++;
                    //System.out.println((i+1)+" added");
                } 
            }  
        }
        }catch(Exception e){
        //System.out.println("Don't know");
        }
        
        
            delete_rules(retract_fact,clips);
            /*
            fact_map.stream().forEach((f) -> {
                f.print();
            });
            */
            setting_facts_value_main();
            /*
            fact_map.stream().forEach((f) -> {
                f.print();
            });
            */
            ans=getanswer(1);
            if(ans.equals("")){
                ans="Don't know";
            }
            //System.out.println(ans.replace("  "," ").replace("-"," "));
            if(ans.equals("Don't know")){
                return ans+" when "+x[0]+" "+x[1]+" "+x[2];
            }
            return "when "+ans.replace("  "," ")+"then "+x[0]+" "+x[1]+" "+x[2];
    }
}
