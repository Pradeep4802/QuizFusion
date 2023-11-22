package com.quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pojo.*;
import com.quiz.dao.*;
import java.util.*;

public class QuestionServlet extends HttpServlet {

    Question ques = new Question();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String action = request.getParameter("action");
            
            if(action != null && action.equals("listquestion")) {
                List<Question> list = QuestionDao.getAllQuestionList();
                session.setAttribute("listquestion", list);
                response.sendRedirect("QuestionList.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()) {
            String question = request.getParameter("question");
           
            String optA = request.getParameter("optA");
            String optB = request.getParameter("optB");
            String optC = request.getParameter("optC");
            String optD = request.getParameter("optD");
            String correctAns = request.getParameter("correctAns");
            
            ques.setQuestion(question);
            ques.setOpta(optA);
            ques.setOptb(optB);
            ques.setOptc(optC);
            ques.setOptd(optD);
            ques.setCorrectans(correctAns);
            
            
            boolean ins = QuestionDao.insertQuestion(ques);
           
            
            if(ins) {
                RequestDispatcher rd = request.getRequestDispatcher("AddQuestion.jsp");
                rd.include(request, response);
                out.println("Question Added Successfully");
            }
            else {
                response.sendRedirect("Error.jsp");
            }
        }
    }
}
