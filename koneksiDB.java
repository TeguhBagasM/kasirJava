package appWarung;

import java.sql.*;
import javax.swing.JOptionPane;

public class koneksiDB {
    
    private static Connection koneksi;
    
    public static Connection getKoneksi(){
        
        if (koneksi == null) {
            
            try {
                
                String url = "jdbc:mysql://localhost/appWarung";
                String user = "root";
                String password = "";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        return koneksi;
        
    }
    
    public static void main(String args[]){
        
        getKoneksi();
        
        login direct = new login();
        direct.setVisible(true);
        
    }
    
}
