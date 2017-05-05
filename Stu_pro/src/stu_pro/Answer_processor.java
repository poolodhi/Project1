/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stu_pro;

/**
 *
 * @author MR. V.P. SINGH
 */
public class Answer_processor {
    public String answer_processing(String answer){
        
        //System.out.println("inside answer processor");
        answer=answer.replace("t-and-p","T-&-P");
        answer=answer.replace("training-and-placement-cell","Training-and-Placement-cell");
        answer=answer.replace("lrc","LRC").replace("learning-resource-center","Learning-Resource-Center");
        answer=answer.replace("t1","T1").replace("t2","T2").replace("t3","T3");
        answer=answer.replace("cse","CSE").replace("ece","ECE").replace("bio","Bio");
        answer=answer.replace("cgpa","CGPA");
        answer=answer.replace("dual-","Dual-");
        answer=answer.replace("10rs","10Rs");
        answer=answer.replace("maths","Maths").replace("physics","Physics").replace("humanities","Humanities"); 
        answer=answer.replace("-"," ").replace("none","").replace("  "," ");
        
        
        
        
        
        
        
        return answer;
    }
    
}
