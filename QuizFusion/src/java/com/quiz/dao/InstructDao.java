package com.quiz.dao;

import java.sql.*;
import com.pojo.*;
import static com.quiz.dao.StudentDao.con;
import java.util.ArrayList;
import java.util.List;

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
    
    public static List<Instruction> getAllInstructionList() {
        String sql = "select * from instruction";
        List<Instruction> list = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Instruction st = new Instruction();
                st.setSrno(rs.getInt("srno"));
                st.setInstruct(rs.getString("description"));
                list.add(st);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
