<%@page import="model.DTO"%>
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
	padding-left: 300px;
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
 margin-left: 20px;
  margin-top:10px;
 
  color:white;
 }

.form-label{
    padding-top: 60px;
    border: 1px solid black;
    padding:15px;
    border-radius: 5px;
    width: 800px;
    background-color: white;
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
.head1:hover
{
	color: white;
	 box-shadow: 0 0 20px #DC143C;
} 
.head1{
    font-family:Helvetica Neue;
	font-weight: bold;
	padding-left: 20px;
	color: #DC143C;
}

 .required-star {
      color: red;
    }
    a{
    text-decoration: none;
    color: white;
    }	
    #icon:hover
    {
    	box-shadow: 0 0 20px #DC143C;
    }

.div1{
    background-color:white;
    border: 1px solid black;
    padding:15px;
    border-radius: 5px;
    width: 800px;
    height: auto;
    text-align: left;
    
}
.main{
height: 100vh;
padding-top: 130px;
}

.marks{
height: 50px;
width: 200px;
border: 2px solid black;
text-align: center;
align-items: center;
justify-content: center;
display: flex;
background-color: white;
}
</style>

<title>Display Answer</title>
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
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%= request.getAttribute("studEmail")%></h6></div>

             </li>
                  <form action="LogoutLink22" method="post">
             		<input type="submit" value="Home Page" class="btn1" style="margin-top: 30px; margin-left: 20px;" >
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
<div class="main">
<center><h1>Answer Sheet</h1></center>
<hr>
<h5 class="marks">Your Marks : <%=request.getAttribute("count") %>/10</h5>

<%	Object demo=request.getAttribute("UserAnswerList");
	ArrayList<String> userAnswer=(ArrayList<String>)demo;
	
	Object temp=request.getAttribute("CorrectAnswerList");
	
%>
<% if(temp!=null) {
	ArrayList<DTO> result=(ArrayList<DTO>)temp;
	int i=0;
	for(DTO d:result){
		int j=1;		
 %>
 <% String answer=(d.getAnswerKey()+"");
 	if(userAnswer.get(i).equals(answer)){

 %>
 	<div>
 		<div class="div1">
 		<h5 >Q<%=d.getQuesId()%>. <%=d.getQuestion() %></h5>
 		<label><%=j %> . </label><%= d.getOption1()%><%j++; %><br>
 		<label><%=j %> . </label><%= d.getOption2()%><%j++;%><br>
 		<label><%=j %> . </label><%= d.getOption3()%><%j++; %><br>
 		<label><%=j %> . </label><%= d.getOption4()%><%j++;%><br><br>
 		<h6 style="color: white; font-weight:bold; background-color: #006400;  padding-left: 10px;">  Your Answer is Correct</h6>
 		</div>
 		<br>
 	</div>
<%}else{ %>
    <div>
    <div class="div1">
 		<h5>Q<%=d.getQuesId()%>. <%= d.getQuestion() %></h5>
 		<label><%=j %> . </label><%= d.getOption1()%><%j++; %><br>
 		<label><%=j %> . </label><%= d.getOption2()%><%j++;%><br>
 		<label><%=j %> . </label><%= d.getOption3()%><%j++; %><br>
 		<label><%=j %> . </label><%= d.getOption4()%><%j++;%><br><br>
 		<h6 style="color: black; background-color: red; padding-left: 10px; ">Correct Answer is option :  <%=d.getAnswerKey() %> </h6>
 		</div>
 		<br>
 	</div>
 	<%}i++;}} %>
 	</div>
 	<br>
 	<div class="foot">
 	</div>
 
</body>
</html>	
 