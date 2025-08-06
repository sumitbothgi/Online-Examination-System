<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Admin Login</title>
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
      border-color: #006400;
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

.maindiv{
	background-color:white;
	height:350px;
	color:black;
	border-radius: 10px;
	width:530px;
    justify-content: center;
    display:flex;
    box-shadow: 0 0 10px 5px ;	
    margin-top:80px;
}
.form-control{
	width: 300px;
	align-items: center;
	justify-content: center;
	display: flex;
	border: 1px solid black;	
	flex-direction: row;
}
.btn{
	        background-color: #DC143C;
	        display: inline-block;
	        line-height:15px;
            padding: 7px 18px;
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
	   background-color: #006400;
	   border: 1px solid black;	
}
h2{
font-family: Brush Script MT Lucida Handwriting;
font-weight: 800;
}

 .disabled {
        pointer-events: none;
        opacity: 0.5;
    }
	.error-message {
        color: red;
    }
</style>
</head>
<body>

<nav id="nav1" class="navbar navbar-expand-lg">
  <div id="div1" class="container-fluid">
  <i class="fa-brands fa-twitter" style="color:white; font-size:60px;" id="icon" ></i> <h1 class="head1">QuizGenix</h1>
	
	<br>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0"> 
             <li class="nav-item">
             
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><% System.out.print("Right");%><%= request.getAttribute("adminData") %></h6></div>

             </li>
              <li class="nav-item" id="logout">
              <a href="loginAdmin.jsp"><button class="btn1" style="margin-top: 30px;">Back</button></a>
              </li>
               <li class="nav-item" id="logout">
             	<a href="index.html"><button class="btn1" style="margin-top: 30px;" >Logout</button></a>
              </li>
              
      </ul>
    </div>	
  </div>
</nav>
<div class="log1">
	<div id="div2" class="maindiv">
		<div style="padding-top: 40px;"> 
			<form id="questionPaperForm" action="createTable"  method="post">
				<center><h2>CREATE NEW QUESTION PAPER</h2>
				<br>
				<input class="form-control" type="text" id="tableName"  name="tableName" placeholder="Enter Subject Name" ></center>
				 <div id="errorMessage" class="error-message"></div> 
				<br>
			<center><input class="btn" type="submit" name="opration"  value="Add Question" id="addQuestionBtn" disabled></center>
			<br>
		<center><input class="btn" type="submit" name="opration"  value="Display Question Paper"></center> 
			</form>
			<br>
			<form action="StudentMarksList" method="post">
				<center><input class="btn" type="submit"  value="Student List"></center> 
			</form>
			</div>
</div>	
</div>
 
 
 <script type="text/javascript">
 
 const form = document.getElementById('questionPaperForm');
 const tableNameInput = document.getElementById('tableName');
 const addQuestionBtn = document.getElementById('addQuestionBtn');
 const errorMessage = document.getElementById('errorMessage');

 function validateInput() {
     const subjectName = tableNameInput.value;
     const regex = /^[a-zA-Z\s]+$/; 

     if (regex.test(subjectName)) {
         addQuestionBtn.removeAttribute('disabled'); 
         addQuestionBtn.classList.remove('disabled'); 
         errorMessage.textContent = ''; 
     } else {
         addQuestionBtn.setAttribute('disabled', 'disabled'); 
         addQuestionBtn.classList.add('disabled'); 
         errorMessage.textContent = 'Please enter only characters.'; 
     }
 }

 tableNameInput.addEventListener('keyup', validateInput);
 
 </script>
</body>
</html>