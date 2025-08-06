<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Valid Faild Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<style type="text/css">
body{
	background-color:#214a4a;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 90vh;
	width: 100%;
	
}
	.div1{
		background-color:white;
		height: 550px;
		width: 700px;
		padding-top:40px;
		border: 2px solid black;
		box-shadow: 0 0 10px 5px rgba(0,0,0,1);
		justify-content: center;
		align-items: center;
		text-align: center;
		border-radius: 20px;
	}
	h1{
	font-family: "Times New Roman", Times, serif;
	}
</style>	
</head>
<body>

	<div class="div1">
		<img alt="" src="https://t3.ftcdn.net/jpg/00/57/28/26/240_F_57282653_hGtrkbpOhves7j7hyLQ14XVA1PHP0VgX.jpg" height="350px" width="350px">	
		<h1>Invalid User Name or Password</h1>
		<br>
		<a href="studentLogin.jsp"><button class="btn btn-danger">Re-Login</button></a>
	</div>

</body>
</html>