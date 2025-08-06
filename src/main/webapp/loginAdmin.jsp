<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Admin Login</title>
<style type="text/css">
 body{
   			
   			background:linear-gradient(225deg,black,#DC143C);
   			text-align: center;
            justify-content: center;
            align-items: center;
            height:100vh;
            margin: 0;
            display: flex;
    }
.maindiv{
	background-color:white;
	height:375px;
	color:black;
	border-radius: 10px;
	width:750px;
    text-align: left;
    justify-content: center;
    
    display:flex;
    box-shadow: 0 0 10px 5px ;	
}
.form-control{
	width: 300px;
	align-items: center;
	justify-content: center;
	display: flex;
	border: 1px solid black;	
	flex-direction: row;
}
.img1{
padding-left: 20px;
}
.btn{
	        background-color: #DC143C;
	        display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            color: #ffffff;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease;
            border: 1px solid black;
}	
.btn:hover {
	   transform: scale(1.1);
	   background-color: #DC143C;
	   border: 1px solid black;	
}
h1{
font-family: Brush Script MT Lucida Handwriting;
font-weight: 800;
}


	
</style>
</head>
<body>
<% 
Boolean validData=(Boolean) request.getAttribute("validationResult");
 if(validData!=null){
 boolean result=validData;
	if(result){
     request.getRequestDispatcher("questionPaper.jsp").forward(request, response);
}else{ %>

<% response.sendRedirect("validfailed.jsp");%>
<%}
	} %>
<div class="log1">
	<div id="div1" class="maindiv">
		<div style="padding-top: 60px;"> 
		
			<form action="adminlogin" method="post">
				<center><h1>Admin Login</h1></center>
				<hr>
				<label class="form-label">Enter Admin User Name</label><br>
				<input class="form-control" type="text" name="adminData" required="">
				<br>
				<label>Enter Password</label>
				<br>
				<input class="form-control" type="password" name="password" required=""><br>
				<center><input type="submit" value="LOGIN" class="btn"></center>
		    </form>
		</div>
		<div class="img1">
			<img height="350px" width="350px" alt="" src="https://img.freepik.com/free-vector/flat-design-illustration-customer-support_23-2148887720.jpg?size=626&ext=jpg&ga=GA1.1.2332395.1701429780&semt=sph">
			
		</div>
	</div>	
</div>


</body>
</html>