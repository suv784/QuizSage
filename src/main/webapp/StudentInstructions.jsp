<%--Document   : StudentInstructions--%>


<%@page import="com.org.Quiz.dao.StudentsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="com.org.Quiz.dao.InstructionsDao"%>
<%@page import="com.org.Quiz.dto.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Instruction to Student</title>
</head>
<body style="background-color: windowframe;">

 <%
   String name = StudentsDao.getStudentName(session.getAttribute("username").toString());
%> 
<div height="200" width=100% style="background-color: yellow">
  <marquee behavior="alternate">
     <h2> <font  color ="green">Welcome   <%out.println(name); %></font></h2>
  </marquee>
</div>
<center>
<pre>
<table class="table table-hover">
<tr>
 
 <th colspan="2"><center><h4><font color="red">Instructions to Students</font></h4></center></th>
</tr>

<tr>
<%
   int i = 1;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
  %>
  </tr>
   <tr>
  <td style="color: white;"><%=i++%></td>
  <td style="color: white;"><%=e.getInstruction()%></td>
  </tr>
  <%
  }
  %>
<tr>
</table>
<pre>
<button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='com.org.Quiz.controller.LogoutStudent'">Logout</button>   <button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='Exam.jsp'">Start Test</button>
</pre>
</center>
	
</body>
</html>