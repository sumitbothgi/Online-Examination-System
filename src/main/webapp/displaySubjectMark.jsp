	<%@page import="model.DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<style type="text/css">
body{
	background-color:#2F4F4F;
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	flex-direction: column;
	padding-top: 20px;
	height: 80vh;
}
	.div1{
		height:40px;
		background-color:#FFFAF0;
		width: 900px;
		justify-content: center;
		align-items: center;
		text-align: center;
		
	}
	#tab{
		border: 2px solid black;
	
	}
	.heading	{
		background-color: black;
		color: white;
	}
	#botButton{
	margin-top: 50px;
	}
	h1{
	color: white;
		}
</style>
</head>
<body>

    <%
		ArrayList<DTO> result=(ArrayList<DTO>)request.getAttribute("subjectMarks");
    
	%>
	
	<center><h1>You Result</h1></center>
	<br>
	<div class="div1">
	
	<table id="tab" class="table table-striped">
	<thead class="table-dark" >
		<tr>
		
				<th class="heading">Sr No</th>
				<th class="heading">Name</th>
				<th class="heading">Email</th>
				<th class="heading">Test Code</th>
				<th class="heading">Subject</th>
				<th class="heading">Exam Date</th>
				<th class="heading">contact</th>
				<th class="heading">Marks</th>
		</tr>
		</thead>
		  <tbody>
		   <%int i=1; %>
			<% for(DTO d:result){ %>
			<tr>  
				  <td ><%= i++ %></td>
				  <td ><%= d.getStudName() %></td>	
				  <td ><%= d.getStudmail() %></td>
				  <td ><%= d.getTestCode() %></td>
				  <td ><%= d.getSubject()  %></td>
				  <td ><%= d.getDate() %>  </td>
				  <td ><%= d.getStudcontact()%></td>
				  <td ><%= d.getMark()%>/10 </td>
			</tr>
			<%} %>
			 
			</tbody>
	</table>
	</div>
	<br>
	<br>
	<br>
	<form action="logoutLink11" method="post">
	       <input type="submit" id="botButton" value="Home" class="btn btn-info">
	</form>
	</body>
</html>