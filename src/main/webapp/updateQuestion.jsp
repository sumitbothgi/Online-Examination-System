<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@page import="model.DTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Update Question</title>
<style type="text/css">

	body{
	        background-color: #ebd281;
	        text-align: center;
            justify-content: center;
            align-items: center;
            height:110vh;
            margin: 0;
            display: flex;
            flex-direction: column;
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
      height:80px;
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
   
#loginicon{
 font-size:20px;
 margin-left: 30px;
 margin-top:10px;
 color:white;
 } 
 .headDiv{
 text-align: left;
 }
	
	
	#creatediv{
	    height: 120vh;
		width: 800px;
		color:white;
		background-color: #2f4f4f;
		align-items: flex-start;
		justify-content: center;
		display: flex;
		padding-top: 40px;
		border-radius: 15px;
		border: 2px solid black;
		text-align: left;
	}
	.fotdiv{
        width: 900px;
		background-color: #2f4f4f;
		height: 55px;
		border-bottom-left-radius: 15px;
		border-bottom-right-radius: 15px;
		border-bottom: 2px solid black;
		border-right: 2px solid black;
		border-left: 2px solid black;
		
		
}
	
	.txt{
		height: 35px;
		width: 740px;
		margin-left: 20px;
		border-radius: 5px;
		
	}
	#txtque{
		   height: 100px;
		   width: 780px;
		   border-radius: 10px;
	}
.btn{
	        background-color: #DC143C;
	        display: inline-block;
            padding: 8px 16px;
            font-size: 13px;
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
.title{
padding-left: 4	0px;
}
.ques{
font-size: 20px;
font-weight: bold;


}
h1{
	padding-top: 20px;
	color: black;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); 
     transition: color 0.3s, text-shadow 0.5s;
     font-size: 40px;
}
 h1:hover {
      color: white; 
      text-shadow: 4px 4px 6px black; 
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
             	<i class="fa-solid fa-user" id="loginicon"></i><div><h6 class="navhead"><%= request.getParameter("adminName") %></h6></div>

             </li>
             
              <li class="nav-item" id="logout">
              	<form action="BackLink" method="post"> 
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
<%
    int id = Integer.parseInt(request.getParameter("id"));
	String tableName = request.getParameter("name");
    DAO dao = new DAO();
    ArrayList<DTO> dataList = dao.fetchDataById(id,tableName);
    if(dataList != null && !dataList.isEmpty()) {
        DTO d = dataList.get(0); 
        
%>
        <hr>
        <center><h1>Update QUESTION</h1></center>
        <br>
        <div id="creatediv">
            <form action="updateQuestions" method="post">
                <label class="ques">Question Paper Title :</label>
                <input type="text" class="ques" name="createTable" value="<%=tableName %>" readonly="readonly" ><br>
                <hr>
                <input type="text" name="id" value="<%= d.getQuesId() %>" hidden=""><br>
                
                <label>ENTER THE QUESTION</label><br>
                <input type="text" class="title" name="question" value="<%= d.getQuestion() %>" placeholder="Enter Question here" id="txtque"><br><br>
                
                <input type="radio" name="answerkey" value="1" class="in" <%= d.getAnswerKey() == 1 ? "checked" : "" %> required>
                <input type="text" placeholder="Enter Option1 here" name="option1" value="<%= d.getOption1() %>" class="txt" required><br><br>
                
                <input type="radio" name="answerkey" value="2" <%= d.getAnswerKey() == 2 ? "checked" : "" %> required>
                <input type="text" placeholder="Enter Option2 here" name="option2" value="<%= d.getOption2() %>" class="txt" required><br><br>
                
                <input type="radio" name="answerkey" value="3" <%= d.getAnswerKey() == 3 ? "checked" : "" %> required>
                <input type="text" placeholder="Enter Option3 here" name="option3" value="<%= d.getOption3() %>" class="txt" required><br><br>
                
                <input type="radio" name="answerkey" value="4" <%= d.getAnswerKey() == 4 ? "checked" : "" %> required>
                <input type="text" placeholder="Enter Option4 here" name="option4" value="<%= d.getOption4() %>" class="txt" required><br><br>
                
                <center><input type="submit" value="Update QUESTION" class="btn"></center>
            </form>
        </div>
<%
    } else {
%>
        <h1>Something Error in Update !!!</h1>
<%
    }
%>

</div>	
</body>
</html>