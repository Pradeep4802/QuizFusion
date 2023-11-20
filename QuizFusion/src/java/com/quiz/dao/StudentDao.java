package com.quiz.dao;

import java.sql.*;
import com.pojo.*;

public class StudentDao {

    static Connection con = DBConnect.getConnect();

    public static boolean insertStudent(Student stud) {
        try {
            String insert = "insert into student values(?,?,?)";
            PreparedStatement pst = con.prepareStatement(insert);
            pst.setString(1, stud.getName());
            pst.setString(2, stud.getUserid());
            pst.setString(3, stud.getPass());

            int flag = pst.executeUpdate();

            if (flag > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
