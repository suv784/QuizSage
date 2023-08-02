package com.org.Quiz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.Quiz.dao.InstructionsDao;
import com.org.Quiz.dto.Instructions;


@WebServlet("/com.org.Quiz.controller.InstructionInsert")
public class InstructionInsert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String instruction = request.getParameter("inst"); 
		
		Instructions ist = new Instructions();
		ist.setInstruction(instruction);
		
		boolean status = InstructionsDao.insertInstruction(ist);
		if(status) 
		{
			String msg1 = "Instruction Added"; 
	    	response.sendRedirect("AddInstruction.jsp?msg1="+msg1);
		}
		else
		{
			String msg2 = "Instruction not Added";
	    	response.sendRedirect("AddInstruction.jsp?msg2="+msg2);
		}

		
	}

}
