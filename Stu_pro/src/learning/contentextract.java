package learning;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
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
                    value=value.replace(" ","-");
                    comparevalue=comparevalue.replace(" ","-");
                    String data;
                    
                    if(!value.isEmpty()&&!comparevalue.isEmpty()){
                        data="(rules (fact-is have)(compare-value "+value
                            +")(value "+comparevalue+"))";
                    }else{
                        data="";
                    }
                    
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
                    value=value.replace(" ","-");
                    fact=fact.replace(" ","-");
                    comparevalue=comparevalue.replace(" ","-");

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
}
