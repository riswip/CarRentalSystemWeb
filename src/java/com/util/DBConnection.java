/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.util;

import java.sql.*;

/**
 *
 * @author Asyraf
 */
public class DBConnection {
    
    public static Connection getConnection() {
        
        Connection con = null;
        String url = "com.mysql.jdbc.Driver";
        String db_url = "jdbc:mysql://localhost:3306/carrental";
        
        try {
            Class.forName(url);
            con = DriverManager.getConnection(db_url, "root", "");
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
