package learning;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
import weka.core.Instances;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import weka.classifiers.Evaluation;
import weka.classifiers.bayes.*;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.FastVector;
public class trainer implements global_variables{
    
    Instances data,test;
    NaiveBayesMultinomialText model;
    
    public trainer(){
        try (BufferedReader reader = new BufferedReader(new FileReader("src\\files\\qdata(6).arff"))) {
                data = new Instances(reader);
            }catch(Exception e){
                e.printStackTrace();
            }
        try (BufferedReader reader = new BufferedReader(new FileReader("src\\files\\testset(5).arff"))) {
                test = new Instances(reader);
            }catch(Exception e){
                e.printStackTrace();
            }
        model=new NaiveBayesMultinomialText();
        trainModel();
    }
    
    public final void trainModel(){
            try{
            data.setClassIndex(data.numAttributes() - 1);
            model.setLowercaseTokens(true);
            model.setUseWordFrequencies(true);
            model.buildClassifier(data);
            test.setClassIndex(test.numAttributes() - 1);
            //Test
            Evaluation eval = new Evaluation(test);
            //Evaluation eval_train = new Evaluation(test);
            eval.evaluateModel(model,test);
            String strSummary = eval.toSummaryString();
            System.out.println(strSummary);
            // Get the confusion matrix
            System.out.println(eval.toMatrixString());
            System.out.println("read");
            //==============================  
            }catch(Exception e){
                e.printStackTrace();
            }
    }
    
    public void classifySentence(String text){
            //String text="alert line can be accessed from any telephone in North America";
            // Create the attributes, class and text 
            
        
        try{
            FastVector fvNominalVal = new FastVector(4); 
            fvNominalVal.addElement("what"); 
            fvNominalVal.addElement("what-happen"); 
            fvNominalVal.addElement("where"); 
            fvNominalVal.addElement("when"); 
            Attribute attribute1 = new Attribute("class", fvNominalVal); 
            Attribute attribute2 = new Attribute("text",(FastVector) null); 
            // Create list of instances with one element 
            FastVector fvWekaAttributes = new FastVector(2); 
            fvWekaAttributes.addElement(attribute1); 
            fvWekaAttributes.addElement(attribute2); 
            Instances instances = new Instances("Test relation", fvWekaAttributes, 1); 
            // Set class index 
            instances.setClassIndex(0); 
            // Create and add the instance 
            DenseInstance instance = new DenseInstance(2); 
            instance.setValue(attribute2, text); 
            // instance.setValue((Attribute)fvWekaAttributes.elementAt(1), text); 
            instances.add(instance);
            double pred = model.classifyInstance(instances.instance(0)); 
            String predicted_value=instances.classAttribute().value((int) pred);
            System.out.println("Class predicted: " + predicted_value);
            
            
            //key value pair of sentence predicted......
            classified_sentence.put(predicted_value,text);
            
            contentextract c=new contentextract();
            if(predicted_value.equals("where")){
            c.wherereadfile(text);
            }else if(predicted_value.equals("what")){
            c.whatreadfile(text);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
            
    }
    
}
