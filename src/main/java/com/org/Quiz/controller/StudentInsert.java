package com.org.Quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.Quiz.dao.StudentsDao;
import com.org.Quiz.dto.Students;
@WebServlet("/com.org.Quiz.controller.StudentInsert")
public class StudentInsert extends HttpServlet { 

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String name = request.getParameter("name");

		Students st = new Students();
		st.setName(name);
		st.setPassword(password);
		st.setUsername(username);

		boolean status = StudentsDao.insertStudent(st);
		if (status) {
			String msg1 = "Student Added";
			response.sendRedirect("AddStudent.jsp?msg1=" + msg1);
		} else {
			String msg2 = "Student not Added";
			response.sendRedirect("AddStudent.jsp?msg2=" + msg2);
		}

	}

}
