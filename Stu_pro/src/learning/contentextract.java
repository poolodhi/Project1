package learning;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import opennlp.tools.postag.POSModel;
import opennlp.tools.postag.POSTaggerME;
import opennlp.tools.tokenize.WhitespaceTokenizer;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class contentextract implements global_variables{
    private InputStream inputStream; 
    private POSModel model; 
    private POSTaggerME tagger; 
    private WhitespaceTokenizer whitespaceTokenizer;
    public void sentence_postag_intialize() throws FileNotFoundException, IOException{
    inputStream = new FileInputStream(startingpath+"en-pos-maxent.bin");
    model = new POSModel(inputStream);
    tagger = new POSTaggerME(model);
    whitespaceTokenizer= WhitespaceTokenizer.INSTANCE;
    }
       
        void wherereadfile(String line) throws Exception{
        
         try {
             
            int count=0;
                sentence_postag_intialize();
                String[] tokens = whitespaceTokenizer.tokenize(line);
                //Generating tags 
                String[] tags = tagger.tag(tokens);
                
                String value="",comparevalue="",sep="";
                boolean noun1=false,seprator1=false,noun2=false,change_flag=false;
                for(int i=0;i<tokens.length;i++){
                    String t=tags[i];
                    if(i==0&&tokens[i].equalsIgnoreCase("in")){
                    change_flag=true;
                    }
                    /*System.out.println(t);
                    if((t.contains("NN")||t.contains("NNS")||t.contains("NNP")||t.contains("NNPS"))&&!noun1){
                    value+=tokens[i];
                    }*/
                    if(!noun1||!seprator1){
                        //System.out.println("value is :");
                        if(t.contains("JJ")||t.contains("JJR")||t.contains("JJS")||t.contains("CD")){
                        value+=" "+tokens[i];
                        }
                        else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                                t.contains("NNPS")){
                        value+=" "+tokens[i];
                        noun1=true;
                        }
                        else if(noun1&&!t.contains("CC")){
                            seprator1=true;
                            
                        }else if(t.contains("CC")){
                        }else{
                        value="";
                        }
                    }else if(!noun2){
                        if(t.contains("JJ")||t.contains("JJR")||t.contains("JJS")||t.contains("CD")){
                        comparevalue+=" "+tokens[i];
                        }
                        else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||t.contains("NNPS")||t.contains("CD")){
                        comparevalue+=" "+tokens[i];
                        noun2=true;
                        }else if(!t.contains("CC")){
                        comparevalue="";
                        }
                    }
                    else if(noun2){
                            //seprator1=true;
                            if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||t.contains("NNPS")||t.contains("CD")){
                                if(sep.equalsIgnoreCase("")){
                                comparevalue+=" "+tokens[i];
                                }else{
                                comparevalue+=sep+" "+tokens[i];
                                }
                                sep="";
                            } else if(t.contains("DT")||t.contains("IN")||t.contains("CD")){
                                sep+=" "+tokens[i];
                            }else{
                            break;
                            }
                        }
                    }
                    if(change_flag){
                    String temp=value;
                    value=comparevalue;
                    comparevalue=temp;
                    }
                    if(value.startsWith(" ")){
                    value=value.replaceFirst(" ","");
                    }
                    if(comparevalue.startsWith(" ")){
                    comparevalue=comparevalue.replaceFirst(" ","");
                    }
                    value=value.replace(" ","-").replace("(","").replace(")","")
                            .replace("\"","").replace("'s","").replace(",","")
                            .replace("&","and").replace("*","").replace(";","");
                    comparevalue=comparevalue.replace(" ","-").replace("(","")
                            .replace(")","").replace("\"","").replace("'s","")
                            .replace(",","").replace("&","and").replace("*","")
                            .replace(";","");
                    String data;
                    
                    if(!value.isEmpty()&&!comparevalue.isEmpty()){
                        data="(rules (fact-is have)(compare-value "+value
                            +")(value "+comparevalue+"))";
                    }else{
                        data="";
                    }
                    data=data.toLowerCase();
                    System.out.println(data);
                    if(!factdata.toString().contains(data)&&!data.isEmpty()){
                        factdata.append(data);
                        factdata.append(System.getProperty("line.separator"));
                    }
                    
                    //System.out.println((++count)+". comparevalue is :"+value+"  and value is:"+comparevalue);
                    //POSSample sample = new POSSample(tokens, tags);
                    //System.out.println(sample.toString());

                
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        
        
        void whatreadfile(String line) throws Exception{
        
         try {
             
            line=line.replace(".","");
            boolean changeValue=false;
            boolean gotVerb=false,gotFirstNoun=false,gotSecondNoun=false;
            String value="",comparevalue="",fact="";
                if(line.contains("is called")||line.contains("known as")){
                    changeValue=true;
                }  
                sentence_postag_intialize();
                String[] tokens = whitespaceTokenizer.tokenize(line);
                //Generating tags 
                String[] tags = tagger.tag(tokens);
                
                
                for(int i=0;i<tokens.length;i++){
                    String t=tags[i];
                    
                    if(!gotFirstNoun){
                        if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")||t.contains("PRP")){
                        value+=" "+tokens[i];    
                        gotFirstNoun=true;
                        }
                    }else if(gotFirstNoun && !gotVerb){
                        if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        value+=" "+tokens[i];
                        }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                        fact+=" "+tokens[i];
                        gotVerb=true;
                        }
                    }else if(gotVerb && !gotSecondNoun){
                        if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")
                            ||t.contains("RBS")||t.contains("RBR")||t.contains("RB")||t.contains("TO")){
                        fact+=" "+tokens[i];
                        }else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")){
                        comparevalue+=" "+tokens[i];    
                        gotSecondNoun=true;
                        }
                    }else if(gotSecondNoun){
                        if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        comparevalue+=" "+tokens[i];
                        }else{}
                    }
                }
                
                if(changeValue){
                    fact="is";
                    String temp=value;
                    value=comparevalue;
                    comparevalue=temp;
                }
                               
                if(!fact.isEmpty()){
                    if(value.startsWith(" ")){
                        value=value.replaceFirst(" ","");
                    }
                    if(fact.startsWith(" ")){
                        fact=fact.replaceFirst(" ","");
                    }
                    if(comparevalue.startsWith(" ")){
                        comparevalue=comparevalue.replaceFirst(" ","");
                    }
                    value=value.replace(" ","-").replace("(","").replace(")","")
                            .replace("\"","").replace("'s","").replace(",","")
                            .replace("&","and").replace("*","").replace(";","");
                    fact=fact.replace(" ","-").replace("(","").replace(")","")
                            .replace("\"","").replace("'s","").replace(",","")
                            .replace("&","and").replace("*","").replace(";","");
                    comparevalue=comparevalue.replace(" ","-").replace("(","")
                            .replace(")","").replace("\"","").replace("'s","")
                            .replace(",","").replace("&","and").replace("*","")
                            .replace(";","");

                    String data;
                    if(value.isEmpty()&&comparevalue.isEmpty()){
                        data="";
                    }else if(value.isEmpty()&&!comparevalue.isEmpty()){
                            data="(rules (fact-is "+fact+")(compare-value "+comparevalue
                                +"))";
                    }else if(!value.isEmpty()&&comparevalue.isEmpty()){
                            data="(rules (fact-is "+fact+")(value "+value+"))";
                    }else{
                            data="(rules (fact-is "+fact+")(value "+value
                                    +")(compare-value "+comparevalue+"))";
                    }

                    data=data.toLowerCase();
                    System.out.println(data);
                    if(!factdata.toString().contains(data)&&!data.isEmpty()){
                        factdata.append(data);
                        factdata.append(System.getProperty("line.separator"));
                    }
                }
                //System.out.println((++count)+". value is :"+value+"     fact is:"+fact+"     comparevalue is:"+comparevalue);
                
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
        
    String converttofact(String value,String fact,String comparevalue){
        String data="";
        if(!fact.isEmpty()){
                    if(value.startsWith(" ")){
                        value=value.replaceFirst(" ","");
                    }
                    if(fact.startsWith(" ")){
                        fact=fact.replaceFirst(" ","");
                    }
                    if(comparevalue.startsWith(" ")){
                        comparevalue=comparevalue.replaceFirst(" ","");
                    }
                    value=value.replace(" ","-").replace("(","").replace(")","")
                            .replace("\"","").replace("'s","").replace(",","")
                            .replace("&","and").replace("*","").replace(";","");
                    fact=fact.replace(" ","-").replace("(","").replace(")","")
                            .replace("\"","").replace("'s","").replace(",","")
                            .replace("&","and").replace("*","").replace(";","");
                    comparevalue=comparevalue.replace(" ","-").replace("(","")
                            .replace(")","").replace("\"","").replace("'s","")
                            .replace(",","").replace("&","and").replace("*","")
                            .replace(";","");

                    
                    if(value.isEmpty()&&comparevalue.isEmpty()){
                        data="";
                    }else if(value.isEmpty()&&!comparevalue.isEmpty()){
                            data="(rules (fact-is "+fact+")(compare-value "+comparevalue
                                +"))";
                    }else if(!value.isEmpty()&&comparevalue.isEmpty()){
                            data="(rules (fact-is "+fact+")(value "+value+"))";
                    }else{
                            data="(rules (fact-is "+fact+")(value "+value
                                    +")(compare-value "+comparevalue+"))";
                    }
                  
        }
        return data;
    }
    
    
    String createrule(String a,String d){
        Date date = new Date();
        if(!a.isEmpty()&&!d.isEmpty()){
        String rule="\n(defrule gen-"+date.getTime()+"\n";
        rule=rule+"\t"+a+"\n\t=>\n\t(assert"+d+")\n)";
        return rule;
        }else{
        return "";
        }
        
    }
    
    
    String divideString(String line,String tag) throws Exception{
        
            line=line.replace(".","");
            boolean changeValue=false;
            boolean gotVerb=false,gotFirstNoun=false,gotSecondNoun=false;
            String value="",comparevalue="",fact="";
            
            //sentence_postag_intialize();
            //String[] tokens = whitespaceTokenizer.tokenize(line);
            //String[] tags = tagger.tag(tokens);
                String tokens[]=line.split(" ");
                String tags[]=tag.split(" ");
            for(int i=0;i<tokens.length;i++){
                String t=tags[i];
                //System.out.println(tokens[i]+t);    
                if(!gotFirstNoun){
                    if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                        t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                        t.contains("JJS")||t.contains("CD")||t.contains("PRP")){
                        value+=" "+tokens[i];    
                        gotFirstNoun=true;
                        }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                        fact+=" "+tokens[i];
                        gotVerb=true;
                        gotFirstNoun=true;
                        }
                }else if(gotFirstNoun && !gotVerb){
                    if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                        t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                        t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        value+=" "+tokens[i];
                        }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                        fact+=" "+tokens[i];
                        gotVerb=true;
                        }
                }else if(gotVerb && !gotSecondNoun){
                        if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")
                            ||t.contains("RBS")||t.contains("RBR")||t.contains("RB")||t.contains("TO")){
                        fact+=" "+tokens[i];
                }else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")){
                        comparevalue+=" "+tokens[i];    
                        gotSecondNoun=true;
                        }
                }else if(gotSecondNoun){
                        if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        comparevalue+=" "+tokens[i];
                        }else{}
                    }
                }
            System.out.println(" value is :"+value+"     fact is:"+fact+"     comparevalue is:"+comparevalue);    
            return converttofact(value,fact,comparevalue);
    }
    String divideString1(String line) throws Exception{
        
            line=line.replace(".","");
            boolean changeValue=false;
            boolean gotVerb=false,gotFirstNoun=false,gotSecondNoun=false;
            String value="",comparevalue="",fact="";
            
            sentence_postag_intialize();
            String[] tokens = whitespaceTokenizer.tokenize(line);
            String[] tags = tagger.tag(tokens);
            for(int i=0;i<tokens.length;i++){
                String t=tags[i];
                //System.out.println(tokens[i]+t);    
                if(!gotFirstNoun){
                    if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                        t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                        t.contains("JJS")||t.contains("CD")||t.contains("PRP")){
                        value+=" "+tokens[i];    
                        gotFirstNoun=true;
                        }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                        fact+=" "+tokens[i];
                        gotVerb=true;
                        gotFirstNoun=true;
                        }
                }else if(gotFirstNoun && !gotVerb){
                    if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                        t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                        t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        value+=" "+tokens[i];
                        }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                        fact+=" "+tokens[i];
                        gotVerb=true;
                        }
                }else if(gotVerb && !gotSecondNoun){
                        if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                            ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")
                            ||t.contains("RBS")||t.contains("RBR")||t.contains("RB")||t.contains("TO")){
                        fact+=" "+tokens[i];
                }else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")){
                        comparevalue+=" "+tokens[i];    
                        gotSecondNoun=true;
                        }
                }else if(gotSecondNoun){
                        if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                            t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                            t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                        comparevalue+=" "+tokens[i];
                        }else{}
                    }
                }
            System.out.println(" value is :"+value+"     fact is:"+fact+"     comparevalue is:"+comparevalue);    
            return converttofact(value,fact,comparevalue);
    }
    
    void whathappenreadfile(String line) throws Exception{
        String ance="";
        String dece="";
         try {
             
            //File read = new File("src\\files\\what-happen.txt");
            //BufferedReader reader=new BufferedReader(new FileReader(read));
            //StringBuilder sb = new StringBuilder();
            //String line = reader.readLine();
            //while (line != null) {
                line=line.replace(","," ,").replace("If","if");
                    
                    if((line.contains("if ")&&!line.matches("\\wif "))||line.contains("If ")){
                        //n.simple_postagging(line);
                        if(line.contains("then")){
                            String s[]=line.split("then");
                            System.out.println(s[0]+"====>\n"+s[1]);
                            ance=divideString1(s[0]);
                            dece=divideString1(s[1]);
                        }else if(line.contains(" ,")&&(line.startsWith("if")||line.startsWith("If"))){
                            String s[]=line.split(" , ");
                            System.out.println(s[0]+"====>\n"+s[1]);
                            ance=divideString1(s[0]);
                            dece=divideString1(s[1]);
                        }else if(!(line.startsWith("if")||line.startsWith("If"))){
                            String s[]=line.split(" if ");
                            if(s.length>1){
                            System.out.println(s[1]+"====>\n"+s[0]);
                            ance=divideString1(s[1]);
                            dece=divideString1(s[0]);
                            }
                            
                        }
                        //StringBuilder a=new StringBuilder();
                        //    a.append(createrule(ance,dece));
                        //    System.out.println(a.toString());
                    }
/*=================================*/
                    else{
                        
                        line=line.replace(",","").replace("/ ","").replace("/"," ");
                        //n.simple_postagging(line);
                        sentence_postag_intialize();
                        String[] tokens = whitespaceTokenizer.tokenize(line);
                        String[] tags = tagger.tag(tokens);
                        String sentence[]=new String [5];
                        String sentence_tags[]=new String [5];
                        int count=0;
                        //String s="";
                        for(int i=0;i<tokens.length;i++){
                            
                            checkForWhen=i;
                            
                            //System.out.println(s);
                            String t=tags[i];
                            if(!gotsentence){
                                getsentence(t,tokens[i]);
                            }else{
                            sentence[count]=s;
                            sentence_tags[count]=tag;
                            count++;
                            s="";
                            tag="";
                            gotFirstNoun=false;
                            gotVerb=false;
                            gotSecondNoun=false;
                            goback=false;
                            gotsentence=false;
                            i--;
                                if(gotWhen){
                                gotWhen=false;
                                s="when";
                                tag="WRB";
                                }
                            }
                            if(goback){
                                //System.out.println("got a goback");
                                i--;
                                goback=false;
                            }
                        }
                            sentence[count]=s;
                            sentence_tags[count]=tag;
                            count++;
                            s="";
                            tag="";
                            gotFirstNoun=false;
                            gotVerb=false;
                            gotSecondNoun=false;
                            goback=false;
                            gotsentence=false;
                        for(String s:sentence){
                            System.out.println(":::::sentence:::::"+s);
                            if(s==null)break;
                        }
                        
                        
                        if (sentence[0]==null||sentence[1]==null){
                            ance="";dece="";
                        }else if(sentence[0].isEmpty()||sentence[1].isEmpty()){
                            ance="";dece="";
                        }else if(sentence[0].contains("when")){
                            ance=divideString(sentence[0],sentence_tags[0]);
                            dece=divideString(sentence[1],sentence_tags[1]);
                        }else if(sentence[1].contains("when")){
                            ance=divideString(sentence[1],sentence_tags[1]);
                            dece=divideString(sentence[0],sentence_tags[0]);
                        }else{
                            ance=divideString(sentence[0],sentence_tags[0]);
                            dece=divideString(sentence[1],sentence_tags[1]);
                        }
                        //StringBuilder a=new StringBuilder();
                        //    a.append(createrule(ance,dece));
                        //    System.out.println(a.toString());
                    }
                    
                    String data=createrule(ance,dece);
                    data=data.toLowerCase();
                    ance=ance.toLowerCase();
                    System.out.println("DATA:"+ data);
                    if(!factdata.toString().contains(ance)&&!ance.isEmpty()){
                        factdata.append(ance);
                        factdata.append(System.getProperty("line.separator"));
                    }
                    if(!ruledata.toString().contains(data)&&!data.isEmpty()){
                        ruledata.append(data);
                        ruledata.append(System.getProperty("line.separator"));
                    }
                //line = reader.readLine();
            //}
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    boolean gotFirstNoun=false,gotVerb=false,gotSecondNoun=false;
    boolean goback=false,gotsentence=false;
    boolean gotWhen=false;
    int checkForWhen=-1;
    String s="";
    String tag="";
    public void getsentence(String t,String token){
        if(!(checkForWhen==0)&&(token.equals("when")||token.equals("When"))){
            gotsentence=true;
            gotWhen=true;
            return;
        }
        
        if(token.equals("and")||token.equals("and")){
            gotFirstNoun=false;
            gotVerb=false;
            gotSecondNoun=false;
            goback=false;
            gotsentence=false;
            s+=" "+token;
            tag+=" "+t;
            return;
        }
        
        if(!gotFirstNoun){
            if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                t.contains("JJS")||t.contains("CD")||t.contains("PRP")){
                s+=" "+token;
                tag+=" "+t;
                gotFirstNoun=true;
            }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                s+=" "+token;
                tag+=" "+t;
                gotVerb=true;
                gotFirstNoun=true;
            }else{
                s+=" "+token;
                tag+=" "+t;
            }
        }else if(gotFirstNoun && !gotVerb){
            if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||
                    t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                    t.contains("JJS")||t.contains("CD")||t.contains("IN")||t.contains("TO")){
                s+=" "+token;
                tag+=" "+t;
            }else if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                    ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")){
                s+=" "+token;
                tag+=" "+t;
                gotVerb=true;
            }else{
                s+=" "+token;
                tag+=" "+t;
            }
        }else if(gotVerb && !gotSecondNoun){
            if(t.contains("VB")||t.contains("VBD")||t.contains("VBG")
                    ||t.contains("VBN")||t.contains("VBP")||t.contains("VBZ")
                    ||t.contains("RBS")||t.contains("RBR")||t.contains("RB")||t.contains("TO")){
                s+=" "+token;
                tag+=" "+t;
            }else if(t.contains("NN")||t.contains("NNS")||t.contains("NNP")||t.contains("PRP")||
                    t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                    t.contains("JJS")||t.contains("CD")||t.contains("PRP$")){
                s+=" "+token;
                tag+=" "+t;
                gotSecondNoun=true;
            }else{
                s+=" "+token;
                tag+=" "+t;
            }
        }else if(gotSecondNoun){
            if(t.contains("NN")||t.contains("PRP$")||t.contains("NNS")||t.contains("NNP")||
                    t.contains("NNPS")||t.contains("JJ")||t.contains("JJR")||
                    t.contains("JJS")||t.contains("CD")||t.contains("IN")||
                    t.contains("PRP")||t.contains("TO")){
                s+=" "+token;
                tag+=" "+t;
            }else{
                goback=true;
                gotsentence=true;
            }
        }
    }
}
