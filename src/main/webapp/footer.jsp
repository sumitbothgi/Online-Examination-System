<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Footer</title>
<style type="text/css">
.sec1{
	height: 250px;
	width: 100%;
	background-color: #000000;
	display: flex;
	align-items: center;
	justify-content: space-around;
	flex-wrap: wrap;

	background-color: #dcdcdc;
}
.foot1{
	height: 200px;
	width: 150px;
	align-items: center;
	justify-content: center;
	display: flex;
	flex-direction: column;
	text-align: center;
	padding-top: 20px;
}
.sec2,.sec3{
 	height: 360px;
	width: 100%;
	background-color: #000000;
	display: flex;
	align-items: center;
	padding-left: 60px;
	padding-top: 40px;
	
}
.foot2,.foot3{	
	height: 320px;
	width: 270px;
	color: white;
	padding-right: 30px;
	text-align: left;
}
.foot2 p,.foot3 p{
color: grey;
}
.foot2 p:hover,.foot3 p:hover {
	color: white;
	font-size: 20px;
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
}
.btn1:hover {
	 background-color: #3498db;
      color: #fff;
      border-color: #fff;
}
#foot3id{
	height: 320px;
	width: 600px;
	padding-left: 60px;
}
#logofoot3id{
	display:flex;
	align-items:center;
	height: 90px;
	width: 400px;
	justify-content: space-around;
	
}
#foot4{
	height: 100px;
	width: 100%;
	background-color: #000000;
	color: white;
	padding-bottom: 20px;
}
.footdiv{
	padding-top: 40px;
	padding-bottom: 20px;
}
</style>
</head>
<body>

<center>
	<footer>
		<section class="sec1">
			<div class="foot1">
				<br>
				<i style="color:#DC143C; font-size:30px;" id="logo1" class="fa-solid fa-user"></i>
				<br>
				<h2>125022</h2>
			<h4>Happ User</h4>
				
			</div>
				<div class="foot1">
				<i style="color:#DC143C; font-size:30px;" id="logo2" class="fa-solid fa-question"></i>
				<br>
				<h2>168307</h2>
				<h4>Questions</h4>
				
			</div>
			<div class="foot1">
				<i style="color:#DC143C; font-size:30px;" id="logo3"  class="fa-solid fa-book"></i>
				<br>
			<h2>793</h2>
			<h4>Academic Tutorials</h4>
				
			</div>
			<div class="foot1">
			<i style="color:#DC143C; font-size:30px;" id="logo4" class="fa-brands fa-youtube"></i>
			<br>
			<h2>415</h2>
			<h4>Video Tutorials</h4>
			</div>
     </section>
		
		<section class="sec2">
			<div class="foot2">
				<h2>STUDY ZONE</h2>
				<br>
				<p>Data Interpretation</p>
				<p>Verbal Reasoning</p>
				<p>Non Verbal Reasoning</p>
				<p>Verbal Ability</p>
				<p>Programming</p>
				<p>Puzzle</p>
			</div>
			<div class="foot2">
				<h2>ENGINEERING</h2>
				<br>
				<p>Computer Engineering</p>
				<p>Electronics and Communication</p>
				<p>Electrical Engineering</p>
				<p>Civil Engineering</p>
				<p>Biotechnology</p>
				<p>Architecture & Planning</p>
			</div>
			<div class="foot2">
				<h2>EXAMS</h2>
				
			</div>
			<div class="foot2">
				<h2>ONLINE TEST</h2>
				<br>
				<p>Aptitude Test</p>
				<p>Data Interpretation Test</p>
				<p>Verbal Reasoning Test</p>
				<p>Non Verbal Reasoning Test</p>
				<p>Verbal Ability Test</p>
			</div>
		</section>
	</footer>
</center>

<center>
	<section class="sec3">
			<div class="foot3">
				<h2>USEFUL LINK</h2>
				<br>
				<p>Full Forms</p>
				<p>Recent Articles</p>
			</div>
			<div class="foot3">
				<h2>OTHER LINKS</h2>
				<br>
				<p>About Us</p>
				<p>Contact Us</p>
				<p>Privacy Policy</p>
				<p>Terms Of Use</p>
				<p>Copyright Policy</p>
			</div>
			<div class="foot3" id="foot3id">
				<div id="logofoot3id">
					<div id="logo">
						<i class="fa-brands fa-twitter" style="color:#DC143C; font-size:90px;" ></i> 
					</div>
					<div id="logoname">
						<h1 class="h11">QuizGenix</h1>
						<p style="font-size: 23px;color: white;">Making Competation Easy</p>
					</div>
				</div>
				<div class="footdiv">
					<p>Interviewmania is the world's largest collection of interview and aptitude questions and provides a comprehensive guide to students appearing for placements in India's most coveted companies.</p>
				</div>
			</div>		
	</section>
</center>
<div id="foot4">
	<center>
		<i class="fa-brands fa-facebook" style="font-size: 48px; padding-bottom: 20px;"></i>
		<p>Copyright 2018 InterviewMania.com - All rights reserved.</p>
	</center>
 </div>

</body>
</html>