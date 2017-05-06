
import java.awt.BorderLayout;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
@SuppressWarnings("serial")
public class TextAreaOutputStreamWindow extends JPanel {

   private final JTextArea textArea = new JTextArea(15, 30);
   private final TextAreaOutputStream taOutputStream = new TextAreaOutputStream(
         textArea, "Stu_H");

   public TextAreaOutputStreamWindow() {
      setLayout(new BorderLayout());
      add(new JScrollPane(textArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, 
            JScrollPane.HORIZONTAL_SCROLLBAR_NEVER));
      System.setOut(new PrintStream(taOutputStream));}
}
class TextAreaOutputStream extends OutputStream {

   private final JTextArea textArea;
   private final StringBuilder sb = new StringBuilder();
   private String title;

   public TextAreaOutputStream(final JTextArea textArea, String title) {
      this.textArea = textArea;
      this.title = title;
      sb.append(title + "> ");
   }

   @Override
   public void flush() {
   }

   @Override
   public void close() {
   }

   @Override
   public void write(int b) throws IOException {

      if (b == '\r')
         return;

      if (b == '\n') {
         final String text = sb.toString() + "\n";
         SwingUtilities.invokeLater(new Runnable() {
            public void run() {
               textArea.append(text);
            }
         });
         sb.setLength(0);
         sb.append(title + "> ");
         return;
      }

      sb.append((char) b);
   }
}