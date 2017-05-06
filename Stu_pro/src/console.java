/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
import javax.swing.*;
public class console {
	private final JFrame f = new JFrame("Console");
	
	public console() {
	
		f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
                f.getContentPane().add(new TextAreaOutputStreamWindow());
		f.setSize(510,600);
		f.setVisible(true);
	}
}



