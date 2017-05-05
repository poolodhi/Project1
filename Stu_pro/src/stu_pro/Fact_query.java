/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stu_pro;

import java.util.ArrayList;
import java.util.Iterator;
import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;
import net.sf.clipsrules.jni.PrimitiveValue;

/**
 *
 * @author MR. V.P. SINGH
 */
public class Fact_query {
    
    public boolean useLoop(ArrayList<String> arr, String targetValue) {
          Iterator itr=arr.iterator();//getting Iterator from arraylist to traverse elements  
            while(itr.hasNext()){  
             if(itr.next().equals(targetValue))
		return false;
             //System.out.println(itr.next());  
            }  
        
	return true;
    }
    
    
    public String fact_query(String y,String x[],Environment clips,PrimitiveValue rv){
        
        boolean check_value_flag=false;
        if(!x[0].equals("none")){
            check_value_flag=true;
        }
        
        String query="(eq ?f:fact-is "+x[1]+")";
        String evalStr = "(find-all-facts ((?f rules )) "+query+")";
        String f_l = clips.eval(evalStr).toString();
        System.out.println("facts got matched are : "+f_l);
        String[] factlist=f_l.split(" ");
        int factcount = factlist.length;
        System.out.println("Facts that got matched after infrencing ......... "+factcount);
        
        try{
            if(f_l.equals("()")){throw new Exception();}
            if(x[0].equals("none")&&x[2].equals("none")){
              /*---- direct ans from if FACT IS THERE IN FACT BASE---- content of the value is answered
              eg:- query    -----> college-closed-on
                    ans     -----> college closed on Sunday diwali holi 
              */
              String ans="",value1="",fact_is="";
              ArrayList<String> value=new ArrayList<>();
              value.add("");
              for(int i=0;i<factcount;i++){
                  FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(i);
                  value1=fv.getFactSlot("value").toString();
                  fact_is=fv.getFactSlot("fact-is").toString();
                  if(useLoop(value,value1)){
                      value.add(value1);
                      ans+=value1+", ";
                  }
                }
              System.out.println("\n"+ans+fact_is.replace("-", " ")+" ");
            }
            else{
                String ans="",value1="",slot1,slot2,fact_is="",m;
                String [] value=new String[20];
                for(int i=0,j=0;i<factcount;i++){
                    FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(i);

                    if(check_value_flag){
                        slot1="value";
                        slot2="compare-value";
                        m=x[0];
                    }else{
                        slot1="compare-value";
                        slot2="value";
                        m=x[2];
                    }
                    value1=fv.getFactSlot(slot1).toString();
                    //System.out.println(value1);
                    if((!(value1.equals("none")))&&(value1.equalsIgnoreCase(m))){
                        fact_is=fv.getFactSlot("fact-is").toString();
                        value[j]=fv.getFactSlot(slot2).toString();
                        ans+=value[j]+", ";
                        j++;
                      }
                }
                if(!ans.equals("")){
                    if(check_value_flag){
                        //System.out.println("\n"+x[1].replace("-", " ")+" "+fact_is.replace("-", " ")+" "+ans.replace("-", " "));
                        return "\n"+x[0]+" "+fact_is+" "+ans;
                    }else{
                        //System.out.println("\n"+ans.replace("-", " ")+fact_is.replace("-", " ")+" "+x[1].replace("-", " "));
                        return "\n"+ans+" "+fact_is+" "+x[2];
                    }
                }
                else{
                 throw new Exception();
                }
            }
            
            
            
            
        }catch (Exception e){ 
            //e.printStackTrace();
            //System.out.println("\n Not able to infer exact query. Please try to improve your query.");
            return "\n Not able to infer exact query.\n Please try to improve your query.";
        }
        return "";
    }
}
