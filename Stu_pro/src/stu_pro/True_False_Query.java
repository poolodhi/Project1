/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stu_pro;

import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;
import net.sf.clipsrules.jni.PrimitiveValue;

/**
 *
 * @author MR. V.P. SINGH
 */
public class True_False_Query {
    
    String truefalse_query(String y,String x[],Environment clips,PrimitiveValue rv){
       
        String Ans="";
        
        String query="(and(eq ?f:fact-is "+x[1]+")(eq ?f:value "+x[0]+")(eq ?f:compare-value "+x[2]+"))";
        
        try{
                
            String evalStr = "(find-all-facts ((?f rules )) "+query+")";
            String f_l = clips.eval(evalStr).toString();
            System.out.println("facts got matched are : "+f_l);
            String[] factlist=f_l.split(" ");
            
            int factcount = factlist.length;
            System.out.println("Facts that got matched after infrencing ......... "+factcount);
            
           if(f_l.equals("()")){throw new Exception();}
           else{
                return "\n"+x[0]+" "+x[1]+" "+x[2]+" is TRUE.";
            }   
        }catch(Exception e){
            //e.printStackTrace();
            //System.out.println("\n Not able to infer exact query. Please try to improve your query.");       
            return "\n"+x[0]+" "+x[1]+" "+x[2]+" is FALSE.";
        } 
    }
}
