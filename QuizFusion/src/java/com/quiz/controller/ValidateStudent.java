
package com.quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pojo.*;
import com.quiz.dao.*;
import javax.servlet.RequestDispatcher;

public class ValidateStudent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("studentName");
            String id = request.getParameter("studentId");
            String pass = request.getParameter("studentPass");
            
            Student stud = new Student();
            stud.setName(name);
            stud.setUserid(id);
            stud.setPass(pass);
            
            boolean studDetails = StudentDao.insertStudent(stud);
            
            if(studDetails) {
                RequestDispatcher rd = request.getRequestDispatcher("AddStudent.jsp");
                rd.include(request, response);
                out.println("Student Added Successfully");
            } else {
                response.sendRedirect("Error.jsp");
            }
        }
    }


}
