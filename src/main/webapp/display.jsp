<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
<style type="text/css">


body{
            text-align: center;
            justify-content: center;
            align-items: center;
            height:100vh;
            margin: 0;
            display: flex;
            background-color: #E6E6FA;
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

.formLab{
    padding-top: 60px;
    border: 1px solid black;
    padding:15px;
    border-radius: 5px;
    width: 800px;
    background-color: white;
    text-align: left;
}
.mb-5{
padding-top: 150px;
height: 100vh;
}
p{
	color: red;
	font-weight: bold;
}
h6{
font-weight: bold;
}
#date{
	width:250px;
	margin-left: 110px;
}
.batch{
	margin-left: 64px;
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
#logout{
padding-left: 20px;
}
.sent{
color: black;
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

 .required-star {
      color: red;
    }
    a{
    text-decoration: none;
   
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
 .headDiv{
 text-align: left;
 }
 
.displaydiv{

border-radius:10px;
height: 300px;
width: 400px;
align-items: center;
justify-content: center;
display: flex;
flex-direction: column;
background-color: #ebd281;
box-shadow: 0 0 15px  #000000;
}
.input1{
width: 400px;
height: 40px;
border-radius: 5px;
}
.paper{
font-family: serif;
font-weight: bold;
}
</style>
</head>
<body>
<%  Object tempDisplay=request.getAttribute("DISPLAYRESULT");
	ArrayList<String> tables=(ArrayList<String>)tempDisplay;
%>

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
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%=request.getAttribute("adminData") %></h6></div>
             </li>
              <li class="nav-item" id="logout">
             <form action="backLinke11" method="post">
             	<input type="submit" value="Back" class="btn1" style="margin-top: 30px;">
             </form>
             </li>
               <li class="nav-item" id="logout">
             	<a href="index.html" ><button class="btn1" style="margin-top: 30px;" >Logout</button></a>
              </li>
              
      </ul>
    </div>
  </div>
</nav>
<div class="displaydiv">
<h1 class="paper">Select Paper</h1>
<hr>
<form action="displayQuestion" method="post">
	<select name="paper" style="width: 280px;" class="input1">
	
	<%
	if(tables!=null){
		
	for(String data:tables){ %>
		<option value="<%=data%>"><%=data %></option>
		<%}} %>
	</select>
	<br>
	<br>
	<input type="submit" value="Disply Questions" class="btn btn-primary">
</form>

</div>
</body>
</html>