package com.quiz.dao;

import java.sql.*;
import com.pojo.*;
import static com.quiz.dao.StudentDao.con;
import java.util.ArrayList;
import java.util.List;

public class QuestionDao {

    static Connection con = DBConnect.getConnect();

    public static boolean insertQuestion(Question ques) {
        String sql = "insert into question(questions,optA,optB,optC,optD,correctAns) values(?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, ques.getQuestion());
            pst.setString(2, ques.getOpta());
            pst.setString(3, ques.getOptb());
            pst.setString(4, ques.getOptc());
            pst.setString(5, ques.getOptd());
            pst.setString(6, ques.getCorrectans());

            int status = pst.executeUpdate();

            if (status > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<Question> getAllQuestionList() {
        String sql = "select * from question";
        List<Question> list = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Question st = new Question();
                st.setId(rs.getInt("id"));
                st.setQuestion(rs.getString("questions"));
                st.setOpta(rs.getString("optA"));
                st.setOptb(rs.getString("optB"));
                st.setOptc(rs.getString("optC"));
                st.setOptd(rs.getString("optD"));
                st.setCorrectans(rs.getString("correctAns"));
                list.add(st);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
