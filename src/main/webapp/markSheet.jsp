<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Mark Sheet Page</title>
<style type="text/css">
body{

            text-align: center;
            justify-content: center;
            align-items: center;
            height:100vh;
            margin: 0;
            display: flex;
            background-color: #ebd281;
}

#navbarSupportedContent{
	padding-left: 350px;
	color: #DC143C;
	font-size: 26px;
}

#nav1{
	  position: fixed;
      top: 0;
      width: 100%;
      height:100px;
      background-color: #333;
      padding: 10px;
      color: white;
      text-align: center;
      z-index: 10;
}

.navbar-brand,.nav-link{
color: #DC143C;
font-size: 32px;
}
.nav-link{
color: white;
font-size: 18px;

}
.head{
color: white;
padding-left: 55px;
font-size: 28px;
display: flex;
flex-direction: row;
}
#home1 {
	color: white;
}
#home1:hover {
	color: white;
}
#home2 {
	color: white;
}
#home2:hover {
	color: white;
}
#home3 {
	color: white;
}
#home3:hover {
	color: white;
}
#home4 {
	color: white;
}#home4:hover {
	color: white;
}

#div1{
color:#DC143C;
padding-left: 40px;

}
hr{
	height: 2px;
	width: 90%;
}
h1{
	color:white;
	font-weight: bold;
}
#logout{
padding-left: 20px;
}
.head1{
  margin-left: 27px;
  padding:5px 16px;;
  font-family:Helvetica Neue;
  font-weight: bold;
  color: #DC143C;
  	 box-shadow: 0 0 20px white;
  	 border-radius: 10px;
}
.head1:hover
{
	color: white;
}
#icon:hover
    {
    	box-shadow: 0 0 20px #DC143C;
    } 
.btn1{
 	  display: inline-block;
      padding: 5px 15px;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      color: white;
      background-color:#DC143C ;
      border-radius: 5px;
      border-color: #fff;
      transition: background-color 0.3s, color 0.3s;
      padding-right: 16px;
}
.btn1:hover {
	 background-color: #3498db;
      color: #fff;
      border-color: #fff;
}
#loginicon{
 font-size:20px;
 margin-left: 30px;
 margin-top:10px;
 color:white;
 }
 .navhead{
 margin-left: 10px;
  margin-top:10px;
  color:white;
 }
.maindiv{
	background-color:white;
	height:320px;
	border-radius: 10px;
	width:750px;
    text-align: left;
    justify-content: center;
    display:flex;
    box-shadow: 0 0 10px 5px black ;	
    position: relative;
	margin-top: 60px;    
}
.formin{
	width: 280px;
	align-items: center;
	justify-content: center;
	border: none;
    outline: none;
    border-bottom: 2px solid #00008b;
    margin-bottom: 10px;
  
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
	   transform: scale(1.05);
	   background-color: #DC143C;
	   border: 1px solid black;
	   color: black;	
}
.img1{
	padding-top: 20px;
	padding-bottom: 20px;
	margin-right: 30px;
}
h4{
color: black;
font-weight: bold;
}
.lab1{
color: black;
}

</style>
</head>
<body>


<nav id="nav1" class="navbar navbar-expand-lg">
  <div id="div1" class="container-fluid">
  <i class="fa-brands fa-twitter" style="color:white; font-size:70px;" id="icon" ></i> <h1 class="head1">QuizGenix</h1>
	
	<br>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0"> 
             <li class="nav-item">
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%System.out.print("MarkSheet cha page");%><%= request.getAttribute("studEmail")%></h6></div>

             </li>
              <li class="nav-item" id="logout">
              <form action="backLink33" method="post">
                  <input type="submit" value="Back" class="btn1" style="margin-top: 30px;">
              </form>
              </li>
               <li class="nav-item" id="logout">
             	<a href="index.html"><button class="btn1" style="margin-top: 30px;" >Logout</button></a>
              </li>
              
      </ul>
    </div>
  </div>
</nav>
<br>
<div class="log1">
	<div id="div1" class="maindiv">
		<div class="img1">
			<img height="280px" width="280px" alt="" src="https://img.freepik.com/free-vector/award-ribbon-check-mark-with-stars-gradient-style_78370-1098.jpg?size=626&ext=jpg&ga=GA1.1.2332395.1701429780&semt=sph">
		</div>
		<div style="padding-right: 20px;"> 
			<form action="displayMarks" method="post">
			<br>
				<h4>All Results</h4></center>
				<hr>
            	<input type="submit"  name="button" class="btn" value="All Results" >
            	<hr>
            	<h4>Particular  Subject Mark</h4>
        		<label class="lab1">Enter Test Code</label>
        		<br>
        		<input type="text"  class="formin" name="testCode">
        		<br>
            	<input type="submit"  name="button" class="btn" value="submit" >
			</form>
		</div>
	</div>	
</div>

</body>
</html>