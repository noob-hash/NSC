/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Subin
 */
public class DatabaseConn {
    private Connection con = null;
    private int port = 3307;
    private String dbName = "medinepal";
    // default username and password for mysql server is used in this case
    public DatabaseConn(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:"+port+"/"+dbName, "root", "");
            // Note I am using port 3307 for most people it is port 3306
            // here hospital is database name, root is username and password field is left
            // empty
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // if different username and password is used
    public DatabaseConn(String user, String password){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:"+port+"/"+dbName, user,password);
            // Note I am using port 3307 for most people it is port 3306
            // here hospital is database name, root is username and password field is left
            // empty
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // if connection is needed in other places
    public Connection ConnectionEstablishment() {
        return con;
    }
    
    public PreparedStatement Statement(String statement){
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(statement);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConn.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ps;
    }
}
