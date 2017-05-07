/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package learning;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import weka.core.Debug.Timestamp;

/**
 *
 * @author admin
 */
public class writetofile implements global_variables {
    
    public void writeinfact() {
        if(factdata.length()==0){
            return;
        }else{
            Date date = new Date();
            //System.out.println(date.getTime());
            String starting="\n(deffacts facts"+date.getTime()+"\n"; 
            String ending=")";
            
            BufferedWriter bw = null;
            FileWriter fw = null;
            try {
            File file = new File(learn_facts);
            if (!file.exists()) {
                    file.createNewFile();
            }
            //System.out.println(factdata.toString());
            // true = append file
            fw = new FileWriter(file.getAbsoluteFile(), true);
            bw = new BufferedWriter(fw);
            bw.write(starting);
            bw.write(factdata.toString());
            bw.write(ending);
            System.out.println("Learned facts");
            factdata.setLength(0);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (bw != null)
                        bw.close();
                    if (fw != null)
                        fw.close();
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
            }
        }
    }
    
    
    public void writeinrule() {
        if(ruledata.length()==0){
            return;
        }else{
            Date date = new Date();
            System.out.println(date.getTime());
            String starting="\n(deffacts facts"+date.getTime()+"\n"; 
            String ending=")";
            
            BufferedWriter bw = null;
            FileWriter fw = null;
            try {
            File file = new File(learn_rules);
            if (!file.exists()) {
                    file.createNewFile();
            }

            // true = append file
            fw = new FileWriter(file.getAbsoluteFile(), true);
            bw = new BufferedWriter(fw);
            bw.write(starting);
            bw.write(ruledata.toString());
            bw.write(ending);
            System.out.println("Learned rule");
            ruledata.setLength(0);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (bw != null)
                        bw.close();
                    if (fw != null)
                        fw.close();
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
            }
        }
    }
}
