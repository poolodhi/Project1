/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package learning;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import opennlp.tools.sentdetect.SentenceDetectorME;
import opennlp.tools.sentdetect.SentenceModel;
import opennlp.tools.util.InvalidFormatException;

/**
 *
 * @author admin
 */
public class nlp implements global_variables{
    
    trainer t;
    public nlp(trainer t){
        this.t=t;
    }
    
    public void sentenceDetector(String para) throws InvalidFormatException,IOException, Exception{
        
        try ( // always start with a model, a model is learned from training data
            InputStream is = new FileInputStream(startingpath+"en-sent.bin")) {
            SentenceModel model = new SentenceModel(is);
            SentenceDetectorME sdetector = new SentenceDetectorME(model);
            
            String sentences[] = sdetector.sentDetect(para);
            
            System.out.println("~~number of sentences in the below para "+sentences.length);
            
            for(int i=0;i<sentences.length;i++){
                
                if(!sentence_set.contains(sentences[i])){
                    System.out.println(sentences[i]);
                    sentence_set.add(sentences[i]);
                    t.classifySentence(sentences[i]);
                }else{
                    System.out.println(">>>Sentence already exsist in dataset");
                }
                
            }
        }
    }
}
