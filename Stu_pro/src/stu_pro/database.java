/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Stu_H;
import Stu_H.Global_variables;
import java.util.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;


/**
 *
 * @author MR. V.P. SINGH
 */
public class database implements Global_variables{
    Hashtable places;
    ArrayList<String> classroom;
    Hashtable labs;
    
    public database(){
        places=new Hashtable();
        labs=new Hashtable();
        classroom=new ArrayList<>();
    }
    public void adddata(){
        places.put("lrc","ABB-III,Basement-1");
        places.put("cafe","ABB-III,ground-floor");
        places.put("mess","annapoorna");
        places.put("account-section","ABB-III,first-floor");
        places.put("aduitorium","ABB-II,ground-floor");
        places.put("atm","gate-no.-3");
        places.put("registar-office","ABB-III,first-floor"); 
        places.put("t-and-p","ABB-I,second-floor"); 
        
        labs.put("MML","Academic-block,first-floor");
        labs.put("CL1","ABB-III,Basement-1");
        labs.put("CL2","ABB-III,Basement-1");
        labs.put("CL3","ABB-III,Basement-2");
        labs.put("CL4","ABB-III,Basement-2");
        labs.put("bio-tech","Academic-block,first-floor");
        labs.put("physics-lab","Academic-block,ground-floor");
        labs.put("ece-lab","Academic-block,first-floor");
        
        for(int x=1;x<=3;x++){
            classroom.add("lt"+x);
        }
        for(int x=1;x<=17;x++){
            classroom.add("ts"+x);
        }
        for(int x=1;x<=11;x++){
            classroom.add("g"+x);
        }
        for(int x=1;x<=9;x++){
            classroom.add("ff"+x);
        }
        for(int x=1;x<=4;x++){
            classroom.add("cs"+x);
        }
    }
    
    public void createfacts(){
        Enumeration n = null;
        StringBuilder content = new StringBuilder();
        content.append("(deffacts college-facts");
        content.append(System.lineSeparator());
        n=places.keys();
        while(n.hasMoreElements()) {
         String str = (String) n.nextElement();
         content.append("(rules (fact-is have)(compare-value ").append(str).append(")(value ").append(places.get(str).toString()).append("))");
         content.append(System.lineSeparator());
        }   
        n=labs.keys();
        while(n.hasMoreElements()) {
         String str = (String) n.nextElement();
         content.append("(rules (fact-is have)(compare-value ").append(str).append(")(value ").append(labs.get(str).toString()).append("))");
         content.append(System.lineSeparator());
        } 
        for(int i=0;i<classroom.size();i++){
        content.append("(rules (fact-is classroom)(value ").append(classroom.get(i)).append("))");
        content.append(System.lineSeparator());
        }
        content.append(")");
        
        
        
        try {
            File file = new File(otherdatabase);
            if (!file.exists()) {
            file.createNewFile();
            }
            FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content.toString());
			bw.close();

			System.out.println("Done--- new facts added to clip2.clp");
            
        }catch (IOException e) {
            e.printStackTrace();
	}
    }   
    
    public void create_database(){
    database d=new database();
    d.adddata();
    d.createfacts();
    }
}
