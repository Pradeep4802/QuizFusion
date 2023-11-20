package com.quiz.dao;

import java.sql.*;
import com.pojo.*;

public class InstructDao {

    static Connection con = DBConnect.getConnect();

    public static boolean insertInstruct(Instruction inst) {
        try {
            String insertInst = "insert into instruction(description) values(?)";
            PreparedStatement pst = con.prepareStatement(insertInst);
            pst.setString(1, inst.getInstruct());

            int status = pst.executeUpdate();

            if (status > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
