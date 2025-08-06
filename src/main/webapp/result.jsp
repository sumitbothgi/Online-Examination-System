<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Object result=request.getAttribute("Result");
		if(result!=null){
			
		int count=(Integer)result;
		
		if(count>0){
			
	 request.getRequestDispatcher("addQuestion.jsp").include(request, response);%>
	 
	<h1>Question Added Successfully</h1>
	<%	}else{ %>
	
	<h1>Something Went Wrong</h1>
	<% request.getRequestDispatcher("addQuestion.jsp").include(request, response);
	}} 	
	%>
	

</body>
</html>