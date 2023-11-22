package com.quiz.dao;

import java.sql.*;
import java.util.*;
import com.pojo.*;

public class StudentDao {

    static Connection con = DBConnect.getConnect();

    public static boolean insertStudent(Student stud) {
        try {
            String insert = "insert into student(name,UserID,password) values(?,?,?)";
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

    public static boolean deleteStudent(int id) {
        String sql = "delete from student where id = ?";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, id);

            int del = pst.executeUpdate();

            if (del > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean updateStudent(Student std, int id) {
        String sql = "update student set name=?,UserID=?,password=? where id = ?";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, std.getName());
            pst.setString(1, std.getUserid());
            pst.setString(1, std.getPass());
            pst.setInt(1, id);

            int upd = pst.executeUpdate();

            if (upd > 0) {
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
                st.setId(rs.getInt("Id"));
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

    public static Student getStudentList(int id) {
        String sql = "select * from student where id = ?";
        Student st = new Student();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                st.setName(rs.getString("name"));
                st.setUserid(rs.getString("UserID"));
                st.setPass(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return st;
    }
}
