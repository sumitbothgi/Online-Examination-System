<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Navbar Page</title>
<style type="text/css">

body{
	margin: 0;
    padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background:linear-gradient(290deg,yellow,#DC143C);
}

#navbarSupportedContent{
	padding-left: 500px;
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

	
</style>
</head>
<body>
<nav id="nav1" class="navbar navbar-expand-lg">
  <div id="div1" class="container-fluid">
	<i class="fa-brands fa-twitter" style="color:white; font-size:70px;" ></i> <h1 class="h11">Interview Mania</h1>
	<br>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       		<li class="nav-item dropdown">
         		 <a class="nav-link dropdown-toggle" id="home1" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
          			 Academic Resource
          		</a>
          		<ul class="dropdown-menu">
           			 <li><a class="dropdown-item" href="#">Aptitude</a></li>
            		 <li><a class="dropdown-item" href="#">Data Interpretation</a></li>
            		 <li><a class="dropdown-item" href="#">Verbal Reasoning</a></li>
            		 <li><a class="dropdown-item" href="#">Non Verbal Reasoning</a></li>
            		 <li><a class="dropdown-item" href="#">Programming</a></li>
           			 <li><a class="dropdown-item" href="#">Puzzle</a></li>
         	    </ul>
        	 </li> 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle"  id="home2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Engineering
          </a>
          		<ul class="dropdown-menu">
           			 <li><a class="dropdown-item" href="#">Computer Engineering</a></li>
            		 <li><a class="dropdown-item" href="#">Civil Engineering</a></li>
            		 <li><a class="dropdown-item" href="#">Mechanical Engineering</a></li>
            		 <li><a class="dropdown-item" href="#">Electrical Engineering</a></li>
            		 <li><a class="dropdown-item" href="#">E&TC Engineering</a></li>
           			 <li><a class="dropdown-item" href="#">Bio-technology</a></li>
         	    </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle"  id="home3" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Online Test	
          </a>
          		<ul class="dropdown-menu">
           			 <li><a class="dropdown-item" href="#">Aptitude Test</a></li>
            		 <li><a class="dropdown-item" href="#">Data Interpretation Test</a></li>
            		 <li><a class="dropdown-item" href="#">MAptitude Test</a></li>
            		 <li><a class="dropdown-item" href="#">Verbal Reasoning Test</a></li>
            		 <li><a class="dropdown-item" href="#"> Test</a></li>
         	    </ul>
        </li>
        	 <li class="nav-item">
       	   		<a class="nav-link" aria-current="page" href="#"  id="home4">Exam</a>
       		 </li>
             <li class="nav-item">
                <a class="nav-link" href="#"  id="home1">More</a>
             </li>
      </ul>
    </div>
  </div>
</nav>


</body>
</html>