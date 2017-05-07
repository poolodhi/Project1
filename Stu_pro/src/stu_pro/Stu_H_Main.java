/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stu_pro;
//import stu_H.database;
import java.io.IOException;
import java.util.Scanner;
/**
 *
 * @author MR. V.P. SINGH
 */
public class Stu_H_Main {

    /**
     * @param args the command line arguments
     */
    public void prepocessing(){
        database d=new database();
        d.create_database();
        BC_fileprocess b=new BC_fileprocess();
        b.fileprocess();
    }
    public static void main() throws IOException, Exception {
        Stu_H_Main t=new Stu_H_Main();
        t.prepocessing();
        //Query_Processor t4=new Query_Processor();
        
        
        /*
        Scanner scan=new Scanner(System.in);
        String ch="y";
        while(ch.equals("y")){
            t4.main2();
            System.out.println("\nContinue:");
            ch=scan.nextLine();
        }
        */
        
    }
}
