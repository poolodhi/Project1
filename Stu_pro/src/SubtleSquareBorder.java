/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;
 
public class SubtleSquareBorder implements Border
{
protected int c1 = 3;   
protected int m_w = 10;
protected int m_h = 10;
protected Color m_topColor = new Color(102, 0, 204, 123);
protected Color m_bottomColor = new Color(102, 0, 204, 150);
protected boolean roundc = false; // Do we want rounded corners on the border?
public SubtleSquareBorder(boolean round_corners)
{
                roundc = round_corners;
}
public Insets getBorderInsets(Component c)
{
return new Insets(m_h, m_w, m_h, m_w);
}
public boolean isBorderOpaque()
{
return true;
}
public void paintBorder(Component c, Graphics g, int x, int y, int w, int h)
{
w = w - 3;
h = h - 3;
x ++;
y ++;
// Rounded corners
if(roundc)
{
g.setColor(m_topColor);
g.drawLine(x, y + c1, x, y + h - c1);
g.drawLine(x + c1, y, x + w - c1, y);
g.drawLine(x, y + c1, x + c1, y); // Top left diagonal
g.drawLine(x, y + h - c1, x + c1, y + h); // Bottom left diagonal
g.setColor(m_bottomColor);
g.drawLine(x + w, y + c1, x + w, y + h - c1);
g.drawLine(x + c1, y + h, x + w -c1, y + h);
g.drawLine(x + w - c1, y, x + w, y + c1); // Top right diagonal
g.drawLine(x + w, y + h - c1, x + w -c1, y + h); // Bottom right diagonal
}
// Square corners
else
{
g.setColor(m_topColor);
g.drawLine(x, y, x, y + h);
g.drawLine(x, y, x + w, y);
g.setColor(m_bottomColor);
g.drawLine(x + w, y, x + w, y + h);
g.drawLine(x, y + h, x + w, y + h);
}
}
}
