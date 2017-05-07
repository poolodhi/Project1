/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package learning;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import opennlp.tools.chunker.ChunkerME;
import opennlp.tools.chunker.ChunkerModel;
import opennlp.tools.cmdline.postag.POSModelLoader;
import opennlp.tools.namefind.NameFinderME;
import opennlp.tools.namefind.TokenNameFinderModel;
import opennlp.tools.parser.ParserModel;
import opennlp.tools.postag.POSModel;
import opennlp.tools.postag.POSTaggerME;
import opennlp.tools.sentdetect.SentenceDetectorME;
import opennlp.tools.sentdetect.SentenceModel;
import opennlp.tools.tokenize.TokenizerME;
import opennlp.tools.tokenize.TokenizerModel;
import opennlp.tools.tokenize.WhitespaceTokenizer;
import opennlp.tools.util.InvalidFormatException;
import opennlp.tools.util.Span;
import java.util.*;
import opennlp.tools.cmdline.parser.ParserTool;
import opennlp.tools.parser.Parse;
import opennlp.tools.parser.Parser;
import opennlp.tools.parser.ParserFactory;
import opennlp.tools.postag.POSSample;
/**
 *
 * @author MR. V.P. SINGH
 */
public class nlptest {
    private static String startingpath="..\\libraries used\\opennlp-tools-1.5.0\\extra depenency\\" ;
    private ArrayList<String> posSentences;
    private ArrayList<String> paraSentences;
    
    public nlptest(){
        posSentences=new ArrayList();
        paraSentences=new ArrayList();
    }
    
    public void sentenceDetector(String para) throws InvalidFormatException,IOException{
        try ( // always start with a model, a model is learned from training data
            InputStream is = new FileInputStream(startingpath+"en-sent.bin")) {
            SentenceModel model = new SentenceModel(is);
            SentenceDetectorME sdetector = new SentenceDetectorME(model);
            
            String sentences[] = sdetector.sentDetect(para);
            
            System.out.println("~~number of sentences in the below para "+sentences.length);
            for(int i=0;i<sentences.length;i++){
                System.out.println(sentences[i]);
                paraSentences.add(sentences[i]);
            }
        }
    }
    
    
    public void postagging() throws FileNotFoundException, IOException{
        InputStream inputStream = new FileInputStream(startingpath+"en-pos-maxent.bin"); 
        POSModel model = new POSModel(inputStream); 
       
        //Instantiating POSTaggerME class 
        POSTaggerME tagger = new POSTaggerME(model); 
       
        
        for (String paraSentence : paraSentences) {
            //Tokenizing the sentence using WhitespaceTokenizer class
            WhitespaceTokenizer whitespaceTokenizer= WhitespaceTokenizer.INSTANCE;
            String[] tokens = whitespaceTokenizer.tokenize(paraSentence);
            
            //Generating tags 
            String[] tags = tagger.tag(tokens);
            
            //Instantiating the POSSample class
            POSSample sample = new POSSample(tokens, tags);
            System.out.println(sample.toString());
            posSentences.add(sample.toString());
        }
    }
    
    
    
    
     public void simple_postagging(String sentence) throws FileNotFoundException, IOException{
        InputStream inputStream = new FileInputStream(startingpath+"en-pos-maxent.bin"); 
        POSModel model = new POSModel(inputStream); 
       
        //Instantiating POSTaggerME class 
        POSTaggerME tagger = new POSTaggerME(model); 
       
        
            //Tokenizing the sentence using WhitespaceTokenizer class
            WhitespaceTokenizer whitespaceTokenizer= WhitespaceTokenizer.INSTANCE;
            String[] tokens = whitespaceTokenizer.tokenize(sentence);
            
            //Generating tags 
            String[] tags = tagger.tag(tokens);
            
            //Instantiating the POSSample class
            POSSample sample = new POSSample(tokens, tags);
            System.out.println(sample.toString());
        
    }
    
    
    
    public void parsing1(String s) throws Exception{  
      //Loading parser model 
      InputStream inputStream = new FileInputStream(startingpath+"en-parser-chunking.bin"); 
      ParserModel model = new ParserModel(inputStream); 
       
      //Creating a parser 
      Parser parser = ParserFactory.create(model); 
      
      //Parsing the sentence 
      String sentence = "Tutorialspoint is the largest tutorial library.";
      Parse topParses[] = ParserTool.parseLine(sentence , parser, 1); 
    
      for (Parse p : topParses) 
         p.show();          
   } 
    
    
    /************************************************************************/
    
    
    
    public static void SentenceDetect() throws InvalidFormatException,IOException {
	String paragraph = "Hi. How are you? This is Mike.";
 
        try ( // always start with a model, a model is learned from training data
            InputStream is = new FileInputStream(startingpath+"en-sent.bin")) {
            SentenceModel model = new SentenceModel(is);
            SentenceDetectorME sdetector = new SentenceDetectorME(model);
            
            String sentences[] = sdetector.sentDetect(paragraph);
            
            System.out.println(sentences[0]);
            System.out.println(sentences[1]);
        }        
}
    
    
    
    
    public void namedetection()throws Exception{        
      
      //Loading the tokenizer model 
      InputStream inputStreamTokenizer = new 
         FileInputStream(startingpath+"en-token.bin");
      TokenizerModel tokenModel = new TokenizerModel(inputStreamTokenizer); 
       
      //Instantiating the TokenizerME class 
      TokenizerME tokenizer = new TokenizerME(tokenModel); 
       
      //Tokenizing the sentence in to a string array 
      String sentence = "Mike is senior programming manager and Rama is a clerk both are working at Tutorialspoint"; 
      String tokens[] = tokenizer.tokenize(sentence); 
       
      //Loading the NER-person model 
      InputStream inputStreamNameFinder = new 
         FileInputStream(startingpath+"en-ner-person.bin");       
      TokenNameFinderModel model = new TokenNameFinderModel(inputStreamNameFinder);
      
      //Instantiating the NameFinderME class 
      NameFinderME nameFinder = new NameFinderME(model);       
      
      //Finding the names in the sentence 
      Span nameSpans[] = nameFinder.find(tokens);        
      
      //Printing the names and their spans in a sentence 
      for(Span s: nameSpans)        
         System.out.println(s.toString()+"  "+tokens[s.getStart()]);      
   }    
     public static void main2() throws IOException { 
      //Tokenizing the sentence 
      String sentence = "Hi welcome to Tutorialspoint";       
      WhitespaceTokenizer whitespaceTokenizer= WhitespaceTokenizer.INSTANCE; 
      String[] tokens = whitespaceTokenizer.tokenize(sentence); 
     
      //Generating the POS tags 
      //Load the parts of speech model 
      File file = new File(startingpath+"en-pos-maxent.bin"); 
      POSModel model = new POSModelLoader().load(file);     
      
      //Constructing the tagger 
      POSTaggerME tagger = new POSTaggerME(model);        
      
      //Generating tags from the tokens 
      String[] tags = tagger.tag(tokens);    
    
      //Loading the chunker model 
      InputStream inputStream = new 
         FileInputStream(startingpath+"en-chunker.bin"); 
      ChunkerModel chunkerModel = new ChunkerModel(inputStream);  
      
      //Instantiate the ChunkerME class 
      ChunkerME chunkerME = new ChunkerME(chunkerModel);
       
      //Generating the chunks 
      String result[] = chunkerME.chunk(tokens, tags); 
  
      for (String s : result) 
         System.out.println(s);         
   }    
     
    public void Parse() throws InvalidFormatException, IOException {
        try ( // http://sourceforge.net/apps/mediawiki/opennlp/index.php?title=Parser#Training_Tool
                InputStream is = new FileInputStream(startingpath+"en-parser-chunking.bin")) {
            ParserModel model = new ParserModel(is);
            
            Parser parser = ParserFactory.create(model);
            
            String sentence = "In Spain, Mr. Clean is known as Don Limpio";
            Parse topParses[] = ParserTool.parseLine(sentence, parser, 1);
            
            for (Parse p : topParses)
                p.show();
            
            is.close();
            
            /*
            * (TOP (S (NP (NN Programcreek) ) (VP (VBZ is) (NP (DT a) (ADJP (RB
            * very) (JJ huge) (CC and) (JJ useful) ) ) ) (. website.) ) )
     */ }
}
}      
