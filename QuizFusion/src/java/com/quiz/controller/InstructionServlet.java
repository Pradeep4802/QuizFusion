package com.quiz.controller;

import com.pojo.Instruction;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.quiz.dao.*;

public class InstructionServlet extends HttpServlet {

    Instruction inst = new Instruction();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String instruct = request.getParameter("instruct");
            inst.setInstruct(instruct);
            boolean checkInst = InstructDao.insertInstruct(inst);

            if (checkInst) {
                request.getRequestDispatcher("AddInstruction.jsp").include(request, response);
                out.println("<h1 style='font-size: 2rem;color: green;font-weight bolder;'>Added Instruction</h1>");
            } else {
                out.println("<h1 style='font-size: 2rem;color: red;font-weight bolder;'>Not Added Instruction</h1>");
            }
        }
    }

}
