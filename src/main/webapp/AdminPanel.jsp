<%--Document : AdminPanel--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
body{
background-color:silver;
}
</style>
</head>
<body>
<% if(session.getAttribute("username") !=null)
	{
	
	}
else
{
	String msg2 = "Please Login as Admin to Continue";
	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
}
	%>
<div height="250" width=100% style="background-color:teal;">
  <marquee behavior="alternate">
     <h1> <font  color ="red">Welcome   <%out.println(session.getAttribute("username")); %></font></h1>
  </marquee>
</div>
<!-- 
<center>
  <div class="container-fluid" style="margin-top:20px;">
    <div class="row"> 
      <div class="col-sm-6"><center><input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" class="btn btn-outline-primary btn-lg btn-block"></center> </div>
      <div class="col-sm-6"><center><input onclick="location.href='InstructionList.jsp';" type="button" value="Add/Update Instructions" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  <pre>
  </pre>
   <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6"><center><input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" class="btn btn-outline-primary btn-lg btn-block"></center></div>
      <div class="col-sm-6"><center><input onclick="location.href='com.org.Quiz.controller.LogoutAdmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  </center> -->
  
  <div class="row" style="padding-top:50px;">
			<div class="col-md-4">
				<div class="card my-card" style="margin-left:50px;">
					<div class="card-body text-center text-dark" style="background-color:olive;">
						<i class="fa-sharp fa-regular fa-address-card fa-3x" style="color: #1f4751;"></i><br>
						<p class="fs-4 text-center">
							<input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" class="btn btn-outline-primary btn-lg btn-block">
						</p>
					</div>
				</div>
 
			</div>
			<br>
			<div class="col-md-4">
				<div class="card my-card" style="margin-left:48px; margin-top: 10px; margin-right:20px;">
					<div class="card-body text-center text-dark"style="background-color:olive;">
						<i class="fa-sharp fa-regular fa-address-card fa-3x" style="color: #1f4751;"></i><br>
						<p class="fs-4 text-center">
							<input onclick="location.href='InstructionList.jsp';" type="button" value="Add/Update Instructions" class="btn btn-outline-primary btn-lg btn-block">
						</p>
					</div>
				</div>

			</div>
			<div class="col-md-4" >
				<div class="card my-card" style="margin-left:53px; margin-top: 10px; margin-right:20px;">
					<div class="card-body text-center text-dark"style="background-color:olive;">
						<i class="fa-solid fa-calendar-check fa-3x" style="color: #1f4751;"></i><br>
						<p class="fs-4 text-center">
							<input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" class="btn btn-outline-primary btn-lg btn-block">
						</p>
					</div>
				</div>

			</div>
			<div class="col-md-4 mt-2" style="margin-top: 20px;">
				<div class="card my-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal" style="margin-left: 53px;">
					<div class="card-body text-center text-dark" style="background-color:olive;">
					<i class="fa-solid fa-calendar-check fa-3x" style="color: #1f4751;"></i><br>
						<p class="fs-4 text-center">
							<input onclick="location.href='com.org.Quiz.controller.LogoutAdmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block">
						</p>
					</div>
				</div>

			</div>  
			<!--  <div class="col-md-4 mt-2">
				<div class="card my-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-danger">
						<i class="fa-solid fa-user-doctor fa-3x"></i><br>
						<p class="fs-4 text-center">
							Admin_Setting <br>
						</p>
					</div>
				</div>

			</div> -->

			
		</div>
</body>
</html>


