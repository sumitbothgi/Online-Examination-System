<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Student test Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">

body{
	margin: 0;
    padding: 0;
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
.h11{
padding-left: 20px;
}

.content{
	display: flex;
 	align-items: center;
 	justify-content: space-around;
 	text-align: center;

}

.data{
 	height: 300px;
 	width: 300px;
 	box-shadow: 0 0 10px 10x black;
 	margin: 50px;
}
hr{
	height: 2px;
	width: 90%;
}
h1{
	color:white;
	font-weight: bold;
}
.navbreak{
	padding-top: 110px;
}


#mainCard{
	height: 800px;
	width: 100%;
	background-color: white;
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
	gap:30px;
	padding:20px;
	 
}
.cardd{
	height: 350px;
	width: 280px;
	margin-bottom:20px;
	padding:10px;
	box-shadow: 0 0 10px 5px rgba(0,0,0,0.5);	
	align-items: center;
	justify-content: center;
	display: flex;
	flex-direction: column;
	text-align: center;
	overflow: hidden;
    transition: transform 0.3s ease;   
}

.cardd:hover{
	transform: scale(1.1);
}
a{
	text-decoration: none;
	color: black;
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
 
 
 .paperForm {
	            display: inline-block;
	            margin-right: 10px; /* Adjust as needed */
	        }

          .paperButton {
            
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
           }

    
</style>
</head>
<body>
<% 
		ArrayList<String> displayResult = (ArrayList<String>) request.getAttribute("DISPLAYRESULT");
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
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%= request.getAttribute("studEmail")%></h6></div>
             </li>
              <li class="nav-item" id="logout">
              <form action="profileLink" method="post">
              	<input type="submit" value="Profile" class="btn1" style="margin-top: 30px;"/>
              </form>
               </li>
               <li class="nav-item" id="logout">
                	<form action="logout11" method="post">
              				<input type="submit" value="Logout" class="btn1" style="margin-top: 30px;"/>
              		</form>
               </li>  
      </ul>
    </div>
  </div>
</nav>
 <div class="navbreak" >
  
 </div>
<br>
<center>
	<section id="mainCard">

		<div class="cardd">
		<form action="showpaper" method="post">	  
			<i class="fa-solid fa-eye" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Aptitude</h5>
			<br>
			<p>Improve your mathematical skill. Increase your accuracy and enhance your problem solving acumen.</p>
			<input type="submit" name="test"  value="aptitude" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-regular fa-gem" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Verbal Reasoning</h5>
			<br>
			<p>Put on your thinking cap and showcase your skill in these challenging verbal questions.</p>
			<input type="submit" name="test" value="verbal_reasoning" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-circle-half-stroke" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Non Verbal Reasoning</h5>
			<br>
			<p>Enhance ability to understand patterns, relationships between different entities.</p>
			<input type="submit" name="test" value="non_verbal_reasoning" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-arrow-down-a-z" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Verbal Ability</h5>
			<br>
			<p>Enhance ability to use grammar, understand word meanings & interpret written information.</p>
			<input type="submit" name="test" value="verbal_ability" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-code" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Programming</h5>
			<br>
			<p>Improve your programming skill with the largest and most exhaustive set of interview questions.</p>
			<input type="submit" name="test" value="programming" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-book" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>General Knowledge</h5>
			<br>
			<p>Comprehensive collection of GK questions appearing in major examinations and placement tests..</p>
			<input type="submit" name="test" value="general_knowledge" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-chart-line" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Sports</h5>
			<br>
			<p>Analyze numerical charts, tables and graphs etc., with the objective to gain useful information from it.</p>
			<input type="submit" name="test" value="sports" class="btn1" >
		</div>
		<div class="cardd">
			<i class="fa-solid fa-puzzle-piece" style="color:#DC143C;font-size: 28px;"></i>
			<br>
			<h5>Puzzle</h5>
			<br>
		    <p>Learn and discover the exciting ways to solve frequently appearing puzzles in placement interviews.</p>
			<input type="submit" name="test" value="puzzles" class="btn1" >
		</div> 
		</form>
	</section>
	
<form  method="post" id="displayMoreQuestions">
    <input type="submit" value="More Papers" class="btn1">
</form>
<br>
<div id="paperList" style="display: none;">
    
  
		        <%
		            for (String paper : displayResult) {
		            
		        %>
		              <form action="viewPaperxx" method="post" class="paperForm">
			            <input type="text" hidden="" name="test" value="<%= paper %>">
			            <input type="submit" value="<%= paper %>" class="paperButton">
			          </form>
		        <%
		            }
		        %>
         
</div>
	 
	</center>
	
<br>
	
	<jsp:include page="footer.jsp" />
	
	<script>
    document.getElementById("displayMoreQuestions").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent the form from submitting and page reload
        document.getElementById("paperList").style.display = "block"; // Show the paper list
    });
</script>
	
</body>
</html> 