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
<title>Question Papers</title>
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
form{
align-items: center;
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
 .headDiv{
 text-align: left;
 }
 .test1{
 font-family: serif;
 font-weight: bold;
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
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%= request.getAttribute("studEmail")%></h6></div>
             </li>
              <li class="nav-item" id="logout">
              <form action="backLink44" method="post">
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
<div class="mb-3">
<div class="mb-5">

<%DTO d1=new DTO();
String name=(String)request.getAttribute("TABLENAME");
int srno=1;	
%>
<form action="checkAnswer1"  method="post" >
<center><h1 class="test1"><%= name.toUpperCase() %> TEST</h1></center>
<hr>
<div class="headDiv">
<p>Note : All Question are compulsory.</p>
<input type="text" id="qtitle" name="tableName" value="<%=request.getAttribute("TABLENAME") %>" placeholder="Enter question Paper Name" hidden="">
<hr>

<p class="sent">Enter Batch Code <span class="required-star">*</span> </p>
<select name="testcode"  required="" class="form-control">
    <option value="">Select Batch Code</option>
    <option value="bca123">BCA 123</option>
    <option value="bcs456">BCS 456</option>
    <option value="btech789">B-Tech 789</option>
   
</select><br>
<input type="text" name="subject" value="<%=request.getAttribute("TABLENAME") %>" required="" hidden="" >
<p class="sent">Enter Date : <span class="required-star">*</span> </p><input type="date" name="date" required="" class="form-control" id="datePicker" onchange="updateMaxDate()" ><br>

</div>
<% Object data=request.getAttribute("questionResult");
	if(data!=null){
		ArrayList<DTO> resultdata=(ArrayList<DTO>)data;
		
		for(DTO d:resultdata){
			%>
<div class="formLab">

<span hidden="" > <%=d.getQuesId() %> </span><span style="font-weight:bold;">Q.No - <%=srno++ %>. </span><span style="font-weight:bold;"> <%=d.getQuestion() %> </span>
<br>
<input type="radio" name="<%=d.getQuesId()%>" value="1" required> <%=d.getOption1() %>
<br>	
<input type="radio" name="<%=d.getQuesId()%>" value="2" required> <%=d.getOption2() %>
<br>
<input type="radio" name="<%=d.getQuesId()%>" value="3" required> <%=d.getOption3() %>
<br>
<input type="radio" name="<%=d.getQuesId()%>" value="4" required> <%=d.getOption4() %>
<br>
<br>
</div>
<br>
<% }} %>	
<center><input type="submit" value="Submit" class="btn btn-primary"></center> 
	</form>
</div>
</div>

 
 <script type="text/javascript">
 
 function updateDateRange() {
     var currentDate = new Date().toISOString().split('T')[0];
     document.getElementById('datePicker').setAttribute('max', currentDate);
     document.getElementById('datePicker').setAttribute('min', currentDate);
 }
 updateDateRange();
 
 </script>
</body>
</html>