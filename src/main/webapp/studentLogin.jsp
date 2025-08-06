<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Student Login</title>
<style type="text/css">
 body{
   			
   			background:linear-gradient(225deg,#006400,white);
   			text-align: center;
            justify-content: center;
            align-items: center;
            height:100vh;
            margin: 0;
            display: flex;
       
    }
.maindiv{
	background-color:white;
	height:420px;
	color:black;
	border-radius: 10px;
	width:800px;
    text-align: left;
    justify-content: center;
    display:flex;
    box-shadow: 0 0 10px 5px ;	
    position: relative;
     margin: 20px
}
.formin{
	width: 280px;
	align-items: center;
	justify-content: center;
	display: flex;
	flex-direction: row;
	border: none;
    outline: none;
    border-bottom: 2px solid #00008b;
}

.btn{
	        background-color: #006400;
	        display: inline-block;
            padding: 6px 16px;
            width:280px;
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
.img1{
	padding-left: 30px;
	padding-top: 40px;
}
h1{
   font-family: Brush Script MT Lucida Handwriting;
   	font-weight: 800;
   	flex-direction: column;
}
hr{
width: 150px; 
}	
.lab{
  font-weight: bold;
}
p{
padding-top: 13px; 
}
</style>
</head>
<body>
<div class="log1">
	<div id="div1" class="maindiv">
		<div class="img1">
			<img height="380px" width="380px" alt="" src="https://img.freepik.com/premium-vector/set-businessman-with-different-devices_344186-2528.jpg?size=626&ext=jpg&ga=GA1.1.2332395.1701429780&semt=ais">
		</div>
		<div  style="padding-top: 60px; padding-left: 30px;"> 
			<form action="studentLoginLink" method="post">
				<center><h1>Login here</h1></center>
				<br>
				<label class="lab">Enter Email</label><br>
				<input class="formin" type="text" name="studentdata">
				<br>
				<label class="lab">Enter Password</label>
				<input class="formin" type="password" name="password"><br>
				<br>
				<center><input type="submit" value="LOGIN" class="btn">
				<br>
				<p>Don't have an account ? <a href="newUserLogin.jsp"> Sign up</a></p></center>
		    </form>
		</div>
	</div>	
</div>
</body>
</html>