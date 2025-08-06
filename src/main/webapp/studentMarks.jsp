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
	.tabData{
              padding-top: 50px;
        }
        body{
              justify-content: center;
              align-items: center;
              display: flex;
              flex-direction: column;
              background-color:#faa60a;
        }
        #studTable{
                width: 1000px;
                border: 2px solid black;
        }
</style>
</head>
<body>

    <%
		ArrayList<DTO> result=(ArrayList<DTO>)request.getAttribute("studentMarks");
    
	%>
	<br>
	<center><h1>Your All Marks</h1></center>
	
	
	<div class="tabData">
	
	<table id="studTable" class="table  table-striped table-hover text-center">
	<thead class="table-dark" >
		<tr>
		
				<th scope="col">Sr No</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Test Code</th>
				<th scope="col">Subject</th>
				<th scope="col">Exam Date</th>
				<th scope="col">contact</th>
				<th scope="col">Marks</th>
		</tr>
		</thead>
		  <tbody class="table-group-divider">
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
	</body>
</html>