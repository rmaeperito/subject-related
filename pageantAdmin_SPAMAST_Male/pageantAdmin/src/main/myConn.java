/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author user
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class myConn {
    
      Connection con = null;

public static Connection connectDb(){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.10.1:3306/pageant2","root","");
        JOptionPane.showMessageDialog(null, "Connection established...");
        return conn;
        
    }catch(Exception e) {
        System.err.print(e);
        JOptionPane.showMessageDialog(null, e);
        return null;
    }
}
    
}
