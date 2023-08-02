package com.org.Quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.Quiz.dao.QuestionsDao;
import com.org.Quiz.dto.Questions;

@WebServlet("/com.org.Quiz.controller.QuestionInsert")
public class QuestionInsert extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String question = request.getParameter("Question");
		String a = request.getParameter("option1");
		String b = request.getParameter("option2");
		String c = request.getParameter("option3");
		String d = request.getParameter("option4");
		String answer = request.getParameter("answer");

		Questions q = new Questions();
		q.setA(a);
		q.setB(b);
		q.setC(c);
		q.setD(d);
		q.setAnswer(answer);
		q.setQuestion(question);

		boolean status = QuestionsDao.insertQuestion(q);

		if (status) {
			String msg1 = "Question Added";
			response.sendRedirect("AddQuestion.jsp?msg1=" + msg1);
		} else {
			String msg2 = "Question not Added";
			response.sendRedirect("AddQuestion.jsp?msg2=" + msg2);
		}

	}

}
