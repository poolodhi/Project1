package stu_pro;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MR. V.P. SINGH
 */

import java.io.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BC_fileprocess implements Global_variables{
    public void write_in_file(StringBuilder s,String filename) throws IOException{
        File file = new File(filename);
        BufferedWriter writer = null;
        try {
            writer = new BufferedWriter(new FileWriter(file));
            writer.write(s.toString());
        } finally {
            if (writer != null) writer.close();
            System.out.println("Backward chain file created");
        }
        
    }
    public void fileprocess(String sourcefilename,String destfilename){
        
        String function_start="(join-ands-start ?adr)";
        String if_condition_part1="(if (eq ?f FALSE) then \n" +"(do-for-fact ((?f1 rules))";
        String if_condition_part2="(bind ?f ?f1))\n)";
        String function="(join-ands ?f)";
        String start_of_rule="";
        String else_part="";
        ArrayList<String> if_part=new ArrayList<>();
        ArrayList<String> or_else_part=new ArrayList<>();
        StringBuilder rule = new StringBuilder();
        boolean or_flag=false;
        int j=0;
        
        
        try{
        
            BufferedReader br = new BufferedReader(new FileReader(sourcefilename));
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();

            while (line != null) {
                if(line.contains("(defrule")){
                    //System.out.println(line);
                    start_of_rule=line;
                }else if(line.startsWith("\t(rules")||line.startsWith("\t(and (rules")
                        ||line.startsWith("\t(or (rules")||line.startsWith("\t?")){
                    if(line.contains("(and (rules")){
                        line=line.replace(")))","))");
                        line=line.replace("(and (rules","(rules");
                    }if(line.contains("(or (rules")){
                        line=line.replace(")))","))");
                        line=line.replace("(or (rules","(rules");
                        or_flag=true;
                    }
                    
                    
                    Pattern pattern = Pattern.compile("\"(\\w)+\"");
                    Matcher matcher = pattern.matcher(line);
                    ArrayList<String> or_in_test=new ArrayList<>();
                    while (matcher.find()){
                        
                        //System.out.println(matcher.group());
                        int k=line.indexOf(matcher.group())+matcher.group().length();
                        String b=line.substring(k+1, k+3);
                        //System.out.println("b:"+b);
                        if(line.contains("(or (test (=")){
                            or_flag=true;
                            String line2=line.replace(b,matcher.group().replace("\"", ""));
                            line2=line2.replaceAll("\\(test.*0\\)\\)","");
                            line2=line2.replaceAll("\\(or \\)","");
                            or_in_test.add(line2);
                        }
                        if(line.contains("(test (=")&&(!line.contains("(or (test "))){
                            line=line.replace(b,matcher.group().replace("\"", ""));
                        }
                        //line=line.replaceAll("\\(test.*0\\)\\)","");
                        //System.out.println("matcher:"+line);  
                    }
                    if(or_in_test.size()>0){
                        line="";
                        for(String s1:or_in_test){
                            else_part="";
                            String x[]=s1.replace("(rules","~(rules").split("~");
                            for(String x1:x){
                                if(x1.contains("(rules")){
                                 String z=x1.replace("(rules","").replace("))",")").replace("(","(eq ?f1:");
                                 if(!z.contains(":compare-value")){
                                 z=z+"(eq ?f1:compare-value none)";
                                 }if(!z.contains(":value")){
                                 z=z+"(eq ?f1:value none)";
                                 }
                                 String s="(bind ?f (assert"+x1+"))\n"+if_condition_part1+
                                            "(and"+z+")\n"+if_condition_part2+function; 
                                    else_part+=s;   
                                }
                            } 
                            or_else_part.add(else_part);
                        }
                        //System.out.println("or_in_test:"+line);
                        or_in_test.clear();
                    }else{
                        line=line.replaceAll("\\(test.*0\\)\\)","");
                        line=line.replaceAll("\\(or.*\\)","");
                        //Pattern p = Pattern.compile("\\(not.*\\)\\)");
                        //Matcher m = pattern.matcher(line);
                        //if(m.find()){System.out.println(m.group());}
                        line=line.replaceAll("\\(not.*\\)\\)","");
                        else_part="";
                        String x[]=line.replace("(rules","~(rules").split("~");
                        for(String x1:x){
                            if(x1.contains("(rules")){
                                 String z=x1.replace("(rules","").replace("))",")").replace("(","(eq ?f1:");
                                 if(!z.contains(":compare-value")){
                                 z=z+"(eq ?f1:compare-value none)";
                                 }if(!z.contains(":value")){
                                 z=z+"(eq ?f1:value none)";
                                 }
                                 String s="(bind ?f (assert"+x1+"))\n"+if_condition_part1+
                                            "(and"+z+")\n"+if_condition_part2+function; 
                                if(or_flag){
                                    //System.out.println("or_flag:"+s);
                                    or_else_part.add(s);
                                }else{
                                    else_part+=s;   
                                }
                            }
                        }
                    }
                        
                        
                        
                        
                        
                        
                        
                        
                }else if(line.startsWith("\t(assert")&&line.contains("(rules")){
                    line=line.replace(")))","))");
                    line=line.replace("(assert", "");
                    if_part.add(("?adr<-"+line.replace("\t","")).replace("<- ","<-"));
                }else if(line.startsWith(")")){
                    /*System.out.println(line);
                    System.out.println(if_part.size());
                    for(String s:if_part){
                    System.out.println(if_part);
                    }
                    */
                    for(int i=0;i<if_part.size();i++){
                        rule=new StringBuilder();
                        if(!or_flag){
                        rule.append(start_of_rule).append("-").append(i).append(System.lineSeparator());
                        //System.out.println("rule is:"+i+rule);
                        rule.append(if_part.get(i)).append(System.lineSeparator());
                        rule.append("=>").append(System.lineSeparator());
                        rule.append(function_start).append(System.lineSeparator());
                        rule.append(else_part).append(System.lineSeparator());
                        rule.append(")").append(System.lineSeparator()).append(System.lineSeparator());
                        //String everything = rule.toString();
                        //System.out.println(everything);
                        sb.append(rule);
                        }else{
                            for(int k=0;k<or_else_part.size();k++){
                                rule=new StringBuilder();
                                rule.append(start_of_rule).append("-").append(i);
                                rule.append("-").append(k).append(System.lineSeparator());
                                //System.out.println("rule is:"+i+rule);
                                rule.append(if_part.get(i)).append(System.lineSeparator());
                                rule.append("=>").append(System.lineSeparator());
                                rule.append(function_start).append(System.lineSeparator());
                                rule.append(or_else_part.get(k)).append(System.lineSeparator());
                                rule.append(")").append(System.lineSeparator()).append(System.lineSeparator());
                                //String everything = rule.toString();
                                //System.out.println(rule);
                                sb.append(rule);
                            }
                        }
                    }
                    if_part.clear();
                    or_else_part.clear();
                    
                    or_flag=false;
                }
                line = br.readLine();
            }
            //String everything = sb.toString();
            //System.out.println(everything);
            write_in_file(sb,destfilename);
        }catch(FileNotFoundException e){
            System.out.println(rule_base+"File not found");
        }catch(IOException e){
             System.out.println("IO exception");
        }catch(Exception e){
            System.out.println("Some error");
        }
    }
}
