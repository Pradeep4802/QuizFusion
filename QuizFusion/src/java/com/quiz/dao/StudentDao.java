package com.quiz.dao;

import java.sql.*;
import java.util.*;
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

    public static List<Student> getAllStudentList() {
        String sql = "select * from student";
        List<Student> list = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Student st = new Student();
                st.setName(rs.getString("name"));
                st.setUserid(rs.getString("UserID"));
                st.setPass(rs.getString("password"));
                list.add(st);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
