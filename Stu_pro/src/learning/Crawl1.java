/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package learning;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.util.*;
/**
 *
 * @author MR. V.P. SINGH
 */
public class Crawl1 implements global_variables{

    /**
     * @param args the command line arguments
     */
    private nlp n;
    private ArrayList<String> hyperlinks;
    private ArrayList<String> linkslist;
    
    public Crawl1(nlp n){
    //public Crawl1(){
        this.n=n;
        hyperlinks=new ArrayList();
        linkslist=new ArrayList();
    }
    
    public void loopcrawl_specific(String data){
        //Scanner s=new Scanner(System.in);
        //System.out.println("Enter data to be crawled");
        //String data=s.next();
        linkslist.add("http://www.jiit.ac.in");
        
        try{
        
        for(int i=0;i<linkslist.size();i++){
            try{
                String currentlink=linkslist.get(i);
                System.out.println("===="+currentlink+"====");
                Document doc = Jsoup.connect(currentlink).get(); 
                crawldatajsoup(currentlink,doc,data);
                /* to get the title of the page*/
                /*
                String title = doc.title();  
                System.out.println("title is: " + title);
                */
                System.out.println("===============================****=================================");
            }catch(Exception e){
                System.out.println("\ngot exception for ===>"+linkslist.get(i)+"\n");
                e.printStackTrace();
            }
        }
        writetofile wtf=new writetofile();
        wtf.writeinfact();
        wtf.writeinrule();
        }catch(Exception e){
            System.out.println("\nnot write in file\n");
            e.printStackTrace();
        }
    }
    
    
    public void crawldatajsoup(String currentlink,Document doc,String data) throws IOException, Exception{
        /*
        to get hyperlinks present on that page
        the for loop show evey link with whatever text its associated with.
        */
        Elements links = doc.select("a[href]");  
        //System.out.println("total number of links present on that page:"+links.size());
                
        for (Element link : links){
            if(link.text().toLowerCase().contains(data)&&!link.attr("href").isEmpty()){
                String l=link.attr("href");
                
                if(!hyperlinks.contains(l) && !l.contains("javascript") && !l.contains("mailto")){
                    hyperlinks.add(l);
                    /*if(l.startsWith("/")){
                l=l.substring(1);
                }
                if(!l.endsWith("/")){
                l+="/";
                }*/
                    if(!l.startsWith("http")){
                    linkslist.add(currentlink+l);
                    }else{
                    linkslist.add(l);
                    }
                    
                    //System.out.println("\nlink : " + l);
                }
            }  
        //System.out.println("text : " + link.text());  
        } 
        
        //System.out.println("Hyperlinks : " + hyperlinks);
        //System.out.println("links : " + linkslist);
        
        Elements inputElements = doc.getElementsByTag("p");  
        for (Element inputElement : inputElements) {  
            String value = inputElement.text();  
            if(value.toLowerCase().contains(data)){
                //System.out.println(" \nParam value: "+value);  
                n.sentenceDetector(value);
            } 
        }
        
    }
    
    
        public void loopcrawl_gen()throws IOException{
        linkslist.add("http://www.jiit.ac.in");
        
        for(int i=0;i<linkslist.size();i++){
            try{
                String currentlink=linkslist.get(i);
                if(currentlink.contains("www.jiit.")){
                System.out.println("===="+currentlink+"====");
                Document doc = Jsoup.connect(currentlink).get(); 
                crawldatajsoup_gen(currentlink,doc);
                /* to get the title of the page*/
                /*
                String title = doc.title();  
                System.out.println("title is: " + title);
                */
                writetofile wtf=new writetofile();
                wtf.writeinfact();
                wtf.writeinrule();
                factdata.setLength(0);
                ruledata.setLength(0);
                System.out.println("===============================****=================================");
                }
            }catch(Exception e){
                System.out.println("\ngot exception for ===>"+linkslist.get(i)+"\n");
                e.printStackTrace();
            }
        }
    }
    
    
    public void crawldatajsoup_gen(String currentlink,Document doc) throws IOException, Exception{
        Elements links = doc.select("a[href]");  
        for (Element link : links){
            if(!link.attr("href").isEmpty()){
                String l=link.attr("href");
                if(!hyperlinks.contains(l) && !l.contains("javascript") && !l.contains("mailto")){
                    hyperlinks.add(l);
                    if(!l.startsWith("http")){
                    linkslist.add(currentlink+l);
                    }else{
                    linkslist.add(l);
                    }
                }
            }
              
        } 
        
        Elements inputElements = doc.getElementsByTag("p");  
        for (Element inputElement : inputElements) {  
            String value = inputElement.text();  
            n.sentenceDetector(value);
        }
        
    }
    
    
    
    public static void main2(String[] args) {
        
        // TODO code application logic here
        URL url;
    InputStream is = null;
    DataInputStream dis;
    String line;

    try {
        url = new URL("http://www.jiit.ac.in//");
        is = url.openStream();  // throws an IOException
        dis = new DataInputStream(new BufferedInputStream(is));

        while ((line = dis.readLine()) != null) {
            System.out.println(line);
        }
    } catch (MalformedURLException mue) {
         mue.printStackTrace();
    } catch (IOException ioe) {
         ioe.printStackTrace();
    } finally {
        try {
            is.close();
        } catch (IOException ioe) {
            // nothing to see here
        }
    }
    }
    
}
