/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package learning;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.*;
/**
 *
 * @author admin
 */
public interface global_variables {
    Hashtable classified_sentence=new Hashtable();
    ArrayList<String> sentence_set=new ArrayList<>();
    static final String learn_rules = "src\\files\\learn_rules.clp";
    static final String learn_facts = "src\\files\\learn_facts.clp";
    StringBuilder factdata=new StringBuilder();
    StringBuilder ruledata=new StringBuilder();
    static String startingpath="..\\libraries used\\opennlp-tools-1.5.0\\extra depenency\\" ;
}
