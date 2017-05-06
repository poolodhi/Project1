package stu_pro;


import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MR. V.P. SINGH
 */



class facts_have{
    public String fact_is,value,compare_value;
    public facts_have(){
    fact_is="none";
    value="none";
    compare_value="none";
    }
    public void print(){
    System.out.println(fact_is+" "+value+" "+compare_value);
    }
    public boolean check_none(){
        return !(fact_is.equals("none")&&value.equals("none")
                &&compare_value.equals("none"));
    }
}
public class Conclusion_Query implements Global_variables{
     
    String preprocess(String c1){
        c1=c1.replace("\t","");
        c1=c1.replace(")))",")");
        c1=c1.replace(")) (",")");
        if(c1.contains("value ?"))c1=c1.replace("(value ?)","");
        if(c1.contains("compare-value ?"))c1=c1.replace("(compare-value ?)","");
        return c1;
    }
    
    boolean fact_matched(String c1,String fact,String value,String compare_value){
        
        final boolean contain_fact=c1.contains("fact-is "+fact);
        final boolean contain_value=c1.contains("value "+value);
        final boolean contain_c_value=c1.contains("compare-value "+compare_value);
        if(contain_fact&&(c1.contains("value ?")||
               contain_value)&&(c1.contains("compare-value ?")
                ||contain_c_value)){
            //System.out.println("===get fact===due to 1");
            return true;
           
        }else if(contain_fact&&(c1.contains("value ?")
                ||contain_value)){
            //System.out.println("===get fact===due to 2");
            return true;
        }else if(contain_fact&&(c1.contains("compare-value ?")
                ||contain_c_value)){
            //System.out.println("===get fact===due to 3");
            return true;
        }else if(contain_fact){
            return true;
        }
        return false;
    }
    
    facts_have create_facts_have_object(String d[]){
        facts_have fh1=new facts_have();
        int start,end;
        
        for(String d1:d){
        if(d1.contains("fact-is")){
            start=d1.indexOf("s ");
            end=d1.length();
            fh1.fact_is=d1.substring(start+2, end);
        }else if(d1.contains("compare-value")){
            start=d1.indexOf("e ");
            end=d1.length();
            fh1.compare_value=d1.substring(start+2, end);
        }else if(d1.contains("value")){
            start=d1.indexOf("e ");
            end=d1.length();
            fh1.value=d1.substring(start+2, end);
        }
        }
    return fh1;
    }
    
    
    ArrayList<facts_have> filesearch(String fact,String value,String compare_value){
        ArrayList<facts_have> fh=new ArrayList<>();
        System.out.println("inside file serach");
        String line = "",line2="";
        boolean f=false;
        try {
        BufferedReader br = new BufferedReader(new FileReader(rule_base));
        try {
            while((line = br.readLine()) != null)
            { 
                if(line.startsWith("\t(rules")||line.startsWith("\t(and")){
                    //System.out.println(line);
                    if(line.contains("fact-is "+fact)){
                        //System.out.println(line);
                        line2=line;
                        f=true;
                    }
                continue;
                }
                if(f&&(!line.contains("=>"))){
                    f=false;
                    line2+=line;    
                }
                if(line.contains("=>")&&(!line2.equals(""))){
                    String a="str-compare";
                    boolean assert_other_facts=false,fact_matched_flag;
                    if(line2.contains(a)){
                        int k=0;
                        
                        //System.out.println(line2);
                        
                        Pattern pattern = Pattern.compile("\"(\\w|\\-)+\"");
                        Matcher matcher = pattern.matcher(line2);
                        
                        while (matcher.find())
                        {   String factgot="";
                            //System.out.println(matcher.group());
                            k=line2.indexOf(matcher.group())+matcher.group().length();
                            String b=line2.substring(k+1, k+3);
                            String line3=line2.replace(b,matcher.group().replace("\"", ""));
                            //System.out.println(k+" "+line3);
                            line3=line3.replaceAll("(\\?\\w)", "?");
                            line3=line3.replace("rules","~");
                            line3=line3.replace("(test","~");
                            
                            String c[]=line3.split("~");
                            for(String c1:c){
                                //System.out.println(c1);
                                fact_matched_flag=fact_matched(c1,fact,value,compare_value);
                                if(fact_matched_flag){
                                    factgot=c1;
                                    assert_other_facts=fact_matched_flag;
                                    //System.out.println("===get fact===");
                                }
                            
                            }
                            if(assert_other_facts){
                               //System.out.println("in assert");
                                for(String c1:c){
                                    if(c1.contains("(fact-is")&&(!c1.equals(factgot))){
                                        facts_have fh1=new facts_have();
                                        c1=preprocess(c1);
                                        //System.out.println("in strcompare loop: "+c1);
                                    
                                        String d[]=c1.split("\\)");
                                    
                                        
                                        fh1=create_facts_have_object(d); 
                                        
                                        if(fh1.check_none()){
                                            //System.out.println("inserted in facts_have arraylist");
                                            //fh1.print();
                                            fh.add(fh1);
                                        }
                                    }
                                }
                            }
                        }
                        
                        line2="";
                    }else{
                            String line3,factgot="";
                            line2=line2.replaceAll("(\\?\\w)", "?");
                            //System.out.println(line2);
                            line3=line2.replace("rules","~");
                            String c[]=line3.split("~");
                        
                            for(String c1:c){
                                //System.out.println(c1);
                                 fact_matched_flag=fact_matched(c1,fact,value,compare_value);
                                if(fact_matched_flag){
                                    factgot=c1;
                                    assert_other_facts=fact_matched_flag;
                                    //System.out.println("===get fact===");
                                }
                            }
                            
                            if(assert_other_facts){
                                //System.out.println("in assert==== factgot:"+factgot);
                                for(String c1:c){
                                    //System.out.println(">>>"+c1+(c1.contains("(fact-is")&&(!c1.equals(factgot))));
                                    if(c1.contains("(fact-is")&&(!c1.equals(factgot))){
                                        facts_have fh1=new facts_have();
                                        c1=preprocess(c1);
                                        //System.out.println("in not str loop: "+c1);
                                    
                                        String d[]=c1.split("\\)");
                                    
                                        fh1=create_facts_have_object(d); 
                                        if(fh1.check_none()){
                                            //System.out.println("inserted in facts_have arraylist");
                                            //fh1.print();
                                            fh.add(fh1);
                                        }
                                    
                                    }
                                }
                            }
                    line2="";
                    }
                    f=false;   
                }     
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    }
        return fh;
    } 
    
    String conclusion_query(String y,String x[],Environment clips){
        Environment clips2=new Environment();
       
        
        clips.reset(); 
        String str="(rules(fact-is "+x[1]+")(value "+x[0]+")(compare-value "+x[2]+"))";
        clips.assertString(str);
        clips.run();
            
        String evalStr = "(find-all-facts ((?f rules )) (or(not(eq ?f:fact-is "+x[1]
                +"))(not(eq ?f:value "+x[0]+"))(not(eq ?f:compare-value "+x[2]+"))))";
        Object fact_list =clips.eval("(facts)").getValue();
        String f_l = clips.eval(evalStr).toString();
        System.out.println("facts got matched are : "+f_l);
        String[] factlist=f_l.split(" ");
        int factcount = factlist.length;
            
        
        try{
            if(f_l.equals("()")){ 
                ArrayList<facts_have> fh=filesearch(x[1],x[0],x[2]);
                facts_have fh2;
                
                if(fh.isEmpty()){throw new Exception();}
                
                else{
                    int totaloldfacts=0;
                clips2.load(template);
                clips2.load(fact_base); 
                clips2.reset();
                clips2.run();
                //clips2.eval("(facts)");
                 Iterator itr=fh.iterator();//getting Iterator from arraylist to traverse elements  
                while(itr.hasNext()){  
                    fh2=(facts_have)itr.next();
                    //fh2.print();
                String q="",q1="",q2="",q3="";
                if(!fh2.fact_is.equals("none")){q1="(eq ?f:fact-is "+fh2.fact_is+")";}
                if(!fh2.value.equals("none")){q2="(eq ?f:value "+fh2.value+")";}
                if(!fh2.compare_value.equals("none")){q3="(eq ?f:compare-value "+fh2.compare_value+")";}
                
                if(!fh2.fact_is.equals("none")){
                    if(fh2.value.equals("none")&&fh2.compare_value.equals("none")){
                    q=q1;
                    }else {
                    q="(and "+q1+q2+q3+")";
                    }
                }
                
                
                String evalStr2 = "(find-all-facts ((?f rules )) "+q+")" ;
                String f_l1 = clips2.eval(evalStr2).toString();
                System.out.println("facts got matched are : "+f_l1);
                String[] factlist1=f_l1.split(" ");
                int factcount1 = factlist1.length;
                totaloldfacts+=factcount1;
                        if(f_l1.equals("()")){throw new Exception();}
                for(int i=0;i<factcount1;i++){
                    FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips2.eval(evalStr2)).get(i);
                    String value=fv.getFactSlot("value").toString();
                    String fact_is=fv.getFactSlot("fact-is").toString();
                    String compare_value=fv.getFactSlot("compare-value").toString();
                    String str1="(rules(fact-is "+fact_is+")(value "+value+")(compare-value "+compare_value+"))";
                    clips.assertString(str1);
                    
                }
                }
                clips.run();
                //clips.eval("(facts)");
                
                
                
                
                f_l = clips.eval(evalStr).toString();
                System.out.println("facts got matched are : "+f_l);
                factlist=f_l.split(" ");
                factcount = factlist.length;
                
                if(f_l.equals("()")){throw new Exception();}
                
                String answer="";String answer1="";
                String old_fact_is,old_value,old_compare_value;
                String fact_is="",value="",compare_value="";
                //System.out.println("\n\n"+y.replace("what-happen","").replace("-"," ")+" with some basic facts implies");
                String Ans=y.replace("what-happen","").replace("-"," ")+" with some basic facts implies\n";
                for(int i=totaloldfacts;i<factcount;i++){
                    
                    old_fact_is=fact_is;
                    old_value=value;
                    old_compare_value=compare_value;
                    FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(i);
                    value=fv.getFactSlot("value").toString();
                    fact_is=fv.getFactSlot("fact-is").toString();
                    compare_value=fv.getFactSlot("compare-value").toString();
                    if(value.equals("none")){value="";}
                    if(compare_value.equals("none")){compare_value="";}
                    
                     if(i>totaloldfacts&& fact_is.equals(old_fact_is) && old_value.equals(value)){
                        answer1+=", "+compare_value;
                        }else if(i>totaloldfacts&& fact_is.equals(old_fact_is) && old_compare_value.equals(compare_value)){
                        answer1=value+", "+answer1;
                        }else{
                            if(i>totaloldfacts&&!fact_is.equals(old_fact_is)){
                                answer+=answer1+".\n";
                            }  
                        answer1="";
                        }
                        if(answer1.equals("")){
                        answer1=value+" "+fact_is+" "+compare_value;
                        }
                
                }
                answer+=answer1+".";
                //System.out.println(answer);
                if(!answer.equals(".")){
                    return Ans+answer;
                }else{
                  return y.replace("what-happen","")+" implies\nNothing";  
                }
                
                
                }
            
            }else{
                String answer="";String answer1="";
                String old_fact_is,old_value,old_compare_value;
                String fact_is="",value="",compare_value="";
            boolean f=true;
            //System.out.println("\n\n"+y.replace("what-happen","")+" implies");
            String Ans=y.replace("what-happen","")+" implies\n";
            for(int i=0;i<factcount;i++){
                
                    old_fact_is=fact_is;
                    old_value=value;
                    old_compare_value=compare_value;
              
                FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(i);
                value=fv.getFactSlot("value").toString();
                fact_is=fv.getFactSlot("fact-is").toString();
                compare_value=fv.getFactSlot("compare-value").toString();
                if(value.equals("none")){value="";}
                if(compare_value.equals("none")){compare_value="";}
                //System.out.println(value.replace("-", " ")+" "+fact_is.replace("-", " ")+" "+compare_value.replace("-", " "));
                
                if(i>0 && fact_is.equals(old_fact_is) && old_value.equals(value)){
                answer1+=", "+compare_value;
                }else if(i>0 && fact_is.equals(old_fact_is) && old_compare_value.equals(compare_value)){
                answer1=value+", "+answer1;
                }else{
                    if(i>0&&!fact_is.equals(old_fact_is)){
                        answer+=answer1+".\n";
                    }  
                answer1="";
                }
                if(answer1.equals("")){
                answer1=value+" "+fact_is+" "+compare_value;
                }
                f=false;
            }
            answer+=answer1+".";
            if(f){
                System.out.println("Nothing");
                return Ans+"Nothing";
                //filesearch(x[2]);
            }else{
            //System.out.println(answer.replace("-"," "));
            return Ans+answer.replace("-"," ");
            }
            }
        }catch(Exception e){
            //e.printStackTrace();
            //System.out.println("\n Not able to infer exact query. Please try to improve your query.");
            return y.replace("what-happen","")+" implies Nothing"+"\nNot able to infer exact query.\nPlease try to improve your query.";
        }
    }

   
    
}
