
package com.quiz.dao;
import java.sql.*;

public class DBConnect {
    // Create a method that return connection object to connect jdbc with mysql database
    
    public static Connection getConnect() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysq://localhost:3306/QuizFusion";
            con = DriverManager.getConnection(url,"root","");
        } catch(Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
    
}
