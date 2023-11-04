package com.quiz.dao;

//import static com.quiz.dao.DBConnect.con;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {

    static Connection con = DBConnect.getConnect();

    public static boolean checkAdmin(String username, String password) {
        String check = "select * from admin where username=? and password=?";
        try {
            PreparedStatement pst = con.prepareStatement(check);
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();  

            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
