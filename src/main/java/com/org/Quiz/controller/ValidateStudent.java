package com.org.Quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.Quiz.dao.StudentsDao;
import com.org.Quiz.dto.Students;

@WebServlet("/com.org.Quiz.controller.ValidateStudent")
public class ValidateStudent extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");

		Students sd = new Students();
		sd.setUsername(username);
		sd.setPassword(password);

		boolean status = StudentsDao.doValidate(sd);

		if (status) {
			HttpSession studentsession = request.getSession();
			studentsession.setAttribute("username", sd.getUsername());
			studentsession.setAttribute("name", sd.getName());
			response.sendRedirect("StudentInstructions.jsp");

		} else {
			String msg = "Invalid Username or Password";
			response.sendRedirect("StudentLogin.jsp?msg=" + msg);

		}

	}

}
