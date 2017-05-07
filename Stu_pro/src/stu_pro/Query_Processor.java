/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stu_pro;
import java.io.*;
import java.util.*;  
import java.io.IOException;
import java.util.Scanner;
import net.sf.clipsrules.jni.*;
import java.util.regex.*;
/**
 *
 * @author MR. V.P. SINGH
 */


public class Query_Processor implements Global_variables{
    
    boolean flag_fc,flag_bc;
    public Query_Processor(){
        flag_fc=true;
        flag_bc=true;
    }
    
    public void change_flag(boolean fc,boolean bc){
        flag_fc=(!fc);
        flag_bc=(!bc);
        //System.out.println("flags fc "+flag_fc+"flag bc "+flag_bc);
    }
    
    public void load_facts(Environment clips){
        
        clips.load(template);//rule and fact template
        clips.load(rule_base); //rule base
        clips.load(fact_base); //fact base
        clips.load(learn_rules1);
        clips.load(learn_facts1);
        if (new File(otherdatabase).exists()){//new facts file load
            clips.load(otherdatabase);
        }//else{throw new FileNotFoundException("new facts file not found");}
        
        System.out.println("files loaded in database");
    }
  
    
    
    public String main2(String y) throws IOException {
        Environment clips; 
        PrimitiveValue rv = null; 

        clips = new Environment(); 
        String Answer="";
        
        //Scanner scan=new Scanner(System.in);
        //System.out.println("\nwhat is your query?");
        //String y=scan.nextLine();
        System.out.println(y);
        String[] x=y.toLowerCase().split(" ");
        
        
        String y1[]=new String[3];
        y1[0]=x[1];
        y1[1]=x[2];
        y1[2]=x[3];
        if(y1[0].equals("-")){y1[0]="none";}
        if(y1[2].equals("-")){y1[2]="none";}
            
        
        if(flag_fc&&flag_bc){
            if(y.contains("what-if")||y.contains("what-happen")){ //some editing happned here
                Conclusion_Query conclusion_object=new Conclusion_Query(); 
                clips.load(template);
                clips.load(rule_base); //rule base

                Answer=conclusion_object.conclusion_query(y , y1 , clips);
            }else if(y.contains("t/f")){
                True_False_Query tfq_object=new True_False_Query();
                load_facts(clips);
                clips.reset(); 
                clips.run(); 
                Answer=tfq_object.truefalse_query(y,y1,clips,rv);
            }else if(y.contains("when")){
                BackwardChaining tbc=new BackwardChaining();
                Answer=tbc.main2(y1);
            }else{
                load_facts(clips);
                clips.reset(); 
                clips.run();
                //clips.eval("(facts)");
                Fact_query fq=new Fact_query();
                /*if(y.contains("placement")){
                    y1[0]="none";
                    y1[1]="refer-to";
                    y1[2]="t-and-p";
                    Answer=fq.fact_query(y,y1,clips,rv);
                }else*/ if(y.contains("where-is")){
                    y1[1]="have";
                    Answer=fq.fact_query(y,y1,clips,rv);
                }else if(y.contains("what-is")){
                    if(y1[1].equals("-")){
                        y1[1]="is";
                    }
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
                else{
                    Answer=fq.fact_query(y,y1,clips,rv);
                }    
            }
        }else if(flag_fc&&!flag_bc){
            if(y.contains("what-if")||y.contains("what-happen")){ //some editing happned here
                Conclusion_Query conclusion_object=new Conclusion_Query(); 
                clips.load(template);
                clips.load(rule_base); //rule base

                Answer=conclusion_object.conclusion_query(y , y1 , clips);
            }else if(y.contains("t/f")){
                True_False_Query tfq_object=new True_False_Query();
                load_facts(clips);
                clips.reset(); 
                clips.run(); 
                Answer=tfq_object.truefalse_query(y,y1,clips,rv);
            }else if(y.contains("when")){
                Conclusion_Query conclusion_object=new Conclusion_Query(); 
                clips.load(template);
                clips.load(rule_base); //rule base

                Answer=conclusion_object.conclusion_query(y , y1 , clips);
                if(Answer.contains("Not able to infer exact query.")){
                    load_facts(clips);
                    clips.reset(); 
                    clips.run();
                    Fact_query fq=new Fact_query();
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
            }else{
                load_facts(clips);
                clips.reset(); 
                clips.run();
                //clips.eval("(facts)");
                Fact_query fq=new Fact_query();
                if(y.contains("where-is")){
                    y1[1]="have";
                    Answer=fq.fact_query(y,y1,clips,rv);
                }else if(y.contains("what-is")){
                    if(y1[1].equals("-")){
                        y1[1]="is";
                    }
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
                else{
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
            }
        }else if(!flag_fc&&flag_bc){
            if(y.contains("what-if")||y.contains("what-happen")){ 
                load_facts(clips);
                clips.reset(); 
                clips.run();
                Fact_query fq=new Fact_query();
                Answer=fq.fact_query(y,y1,clips,rv);
            }else if(y.contains("t/f")){
                True_False_Query tfq_object=new True_False_Query();
                load_facts(clips);
                clips.reset(); 
                clips.run(); 
                Answer=tfq_object.truefalse_query(y,y1,clips,rv);
            }else if(y.contains("when")){
                BackwardChaining tbc=new BackwardChaining();
                Answer=tbc.main2(y1);
            }else{
                load_facts(clips);
                clips.reset(); 
                clips.run();
                //clips.eval("(facts)");
                Fact_query fq=new Fact_query();
                if(y.contains("where-is")){
                    y1[1]="have";
                    Answer=fq.fact_query(y,y1,clips,rv);
                }else if(y.contains("what-is")){
                    if(y1[1].equals("-")){
                        y1[1]="is";
                    }
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
                else{
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
            }
        }else{
            if(y.contains("what-if")||y.contains("what-happen")||y.contains("when")){ 
                load_facts(clips);
                clips.reset(); 
                clips.run();
                Fact_query fq=new Fact_query();
                Answer=fq.fact_query(y,y1,clips,rv);
            }else if(y.contains("t/f")){
                True_False_Query tfq_object=new True_False_Query();
                load_facts(clips);
                clips.reset(); 
                clips.run(); 
                Answer=tfq_object.truefalse_query(y,y1,clips,rv);
            }else{
                load_facts(clips);
                clips.reset(); 
                clips.run();
                //clips.eval("(facts)");
                Fact_query fq=new Fact_query();
                if(y.contains("where-is")){
                    y1[1]="have";
                    Answer=fq.fact_query(y,y1,clips,rv);
                }else if(y.contains("what-is")){
                    if(y1[1].equals("-")){
                        y1[1]="is";
                    }
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
                else{
                    Answer=fq.fact_query(y,y1,clips,rv);
                }
            }
        }
        Answer_processor ap=new Answer_processor();
        Answer=ap.answer_processing(Answer);
        System.out.println(Answer);
        return Answer;
        
        //System.out.println("\nIf you did not recived desired answer then Please try to improve your query.");  
    }
}
