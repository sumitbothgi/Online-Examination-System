package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.DTO;
@WebServlet( urlPatterns = {"/createTable","/addQuestions","/adminlogin","/displayQuestion",
							"/studentLoginLink","/checkAnswer1","/showpaper","/newStudent","/displayMarks","/questionPaper",
							"/profileLink","/LogoutLink","/logout11","/logoutLink11","/LogoutLink22","/BackLink","/backLinke11",
							"/logoutLink33","/backLink33","/backLink44","/backLink55","/updateQuestions","/viewPaperxx","/StudentMarksList"})
public class Controller extends HttpServlet {
	private String adminData;
	private String studEmail;
	private String table;
	private String tableName;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url=req.getServletPath();
		
		switch (url) {
		case "/createTable": 
			createTable(req,resp);
			break;
		case "/addQuestions":
			addQuestion(req,resp);
			break;
		case "/adminlogin":
			loginValidation(req,resp);
			
			break;
		case "/checkAnswer1":
			try {
				cheackAnswer(req,resp);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
	
		case "/displayQuestion":
			displayQuestion(req,resp);
			break;
		case "/studentLoginLink":
			studentValidation(req,resp);
			break;
		case "/showpaper":
			showPaper(req,resp);
			break;
		case "/viewPaperxx":
			showPaper(req,resp);
			break;
		case "/newStudent":
			addNewStudent(req,resp);
			break;
		case "/displayMarks":
			System.out.println("data displayMarks ");
			displayMarks(req,resp);
			break;
		case "/questionPaper":
			demo(req,resp);
			break;
		case "/profileLink":
			System.out.println("data profileLink ");
			displyaProfile(req,resp);
			break;
		case "/LogoutLink":
			LogoutLink(req, resp);
			//logOut(req,resp);
			break;
		case "/logout11":
			LogoutLink(req,resp);
			break;
		case "/logoutLink11":
			logoutmain(req, resp);
			//logoutLink11(req,resp);
			break;
		case "/LogoutLink22":
			logoutmain(req, resp);
			//logoutLink22(req,resp);
			break;
		case "/logoutLink33":
			logoutmain(req, resp);
		case "/BackLink":
			backPage(req,resp);
			break;
		case "/backLinke11":
			backPage(req,resp);
			break;
		case "/backLink33":
			logoutmain(req,resp);
			break;
		case "/backLink44":
			logoutmain(req,resp);
			break;
		case "/backLink55":
			backPage(req,resp);
			break;
		case "/updateQuestions":
			updateQuestions(req,resp);
			break;
		case "/StudentMarksList":
			StudentMarksList(req,resp);
			break;
		
		}
	}
	
	private void StudentMarksList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       DAO dao=new DAO();
		    ArrayList<DTO> studentMarks = dao.studentMarksList();
	        request.setAttribute("studentMarks", studentMarks);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("studentMarks.jsp");
	        dispatcher.forward(request, response);
	    }
	
	private void updateQuestions(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//System.out.println("Controller updateQuestions");
	    tableName = req.getParameter("createTable");
	    int id = Integer.parseInt(req.getParameter("id"));
	    String question = req.getParameter("question");
	    String option1 = req.getParameter("option1");
	    String option2 = req.getParameter("option2");
	    String option3 = req.getParameter("option3");
	    String option4 = req.getParameter("option4");
	    String answerkey = req.getParameter("answerkey");

	    DTO d2 = new DTO();
	    d2.setQuestionPaperTitle(tableName);
	    d2.setQuesId(id);
	    d2.setQuestion(question);
	    d2.setOption1(option1);
	    d2.setOption2(option2);
	    d2.setOption3(option3);
	    d2.setOption4(option4);
	    d2.setAnswerKey(Integer.parseInt(answerkey));

	    DAO dao = new DAO();
	    boolean updateResult = dao.updateQuestions(d2);
	    PrintWriter p = resp.getWriter();
	    if (updateResult) {
	        try {
	            
	            ArrayList<DTO> questionResult = dao.DisplayQuestions(d2);
	            req.setAttribute("TABLENAME", tableName);
	            req.setAttribute("adminData", adminData);
	          
	            req.setAttribute("questionResult", questionResult);
	            req.getRequestDispatcher("displayQuestionForAdmin.jsp").forward(req, resp);
	        } catch (ServletException e) {
	            e.printStackTrace(p);
	        }
	    } else {
	        p.print("<h1>Something went wrong during question update.</h1>");
	    }
	}

	private void displyaProfile(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("studEmail", studEmail);
    	try {
			req.getRequestDispatcher("markSheet.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}		
	}

	private void demo(HttpServletRequest req, HttpServletResponse resp) {
		DAO dao=new DAO();
		
		try {
			ArrayList<String> table=dao.displayAllTables();
			req.setAttribute("DISPLAYRESULT", table);
			req.setAttribute("adminData", adminData);
			req.getRequestDispatcher("display.jsp").forward(req, resp);
		} catch (ServletException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}		
	}

	private void displayMarks(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("displayMarks");
		String button=req.getParameter("button");
		DTO d1=new DTO();
		DAO dao=new DAO();
		
		if(button.equals("All Results")) {
			 
		     d1.setStudmail(studEmail);
			
			 ArrayList<DTO>	AllMarks=dao.allMarks(d1);
			 req.setAttribute("AllMarks", AllMarks);
			 	         
			 try {
				 req.setAttribute("studEmail", studEmail);
				 
				req.getRequestDispatcher("displayMarks.jsp").forward(req, resp);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			
			 
		        }
			
		}else if(button.equals("submit")) {
			String TestCode=req.getParameter("testCode");
			d1.setStudmail(studEmail);
			d1.setTestCode(TestCode);
			
			ArrayList<DTO> subjectMarks=dao.SubjectMarks(d1);
			req.setAttribute("subjectMarks", subjectMarks);
			 

			 try {
				 req.setAttribute("studEmail", studEmail);
				req.getRequestDispatcher("displaySubjectMark.jsp").forward(req, resp);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
				}
	     }
	}
	

	private void addNewStudent(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String contact=req.getParameter("contact");
		String Password=req.getParameter("password");
		
		DTO d1=new DTO();
		d1.setStudName(name);
		d1.setStudmail(email);
		d1.setStudcontact(contact);
		d1.setNewPass(Password);
		
		DAO dao=new DAO();
		int count=dao.addNewStudent(d1);
		req.setAttribute("count", count);
		if(count>0) {
			
			PrintWriter pw=resp.getWriter();
			pw.print("<h1 style='color: blue;font-weight:bold;'>Account Created Successfully</h1>");
			req.getRequestDispatcher("studentLogin.jsp").include(req, resp);
		}else {
			req.getRequestDispatcher("newUserLogin.jsp").include(req, resp);
		}
	}
	private void studentValidation(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter pw=resp.getWriter();
	    studEmail=req.getParameter("studentdata");
		String studPass=req.getParameter("password");
		
		 if (studEmail != null) {
			 DTO d1=new DTO();
			 	
				d1.setStudmail(studEmail);
				d1.setStudPass(studPass);
				
				DAO d2=new DAO();
				d2.studLoginCheack(d1);
				
				boolean studResult=d2.studLoginCheack(d1);
				
				HttpSession session = req.getSession(true);
		        session.setAttribute("startTime", System.currentTimeMillis());

				req.setAttribute("studcheack", studResult);
				
	             if(studResult) {
	            	 ArrayList<String> displayResult = d2.displayAllTables();
		 			    req.setAttribute("DISPLAYRESULT", displayResult);
		            	req.setAttribute("studEmail", studEmail);
		            	req.getRequestDispatcher("student.jsp").forward(req, resp);
	    
	            }else {	            	        	
	            	//pw.print("<h1 >Invalid user Id or Password</h1>");
	            	     pw.print("<html><body>");	
		            	pw.print("<h2 style=\"color:red; font-weight: bold; font-size:40px;\">Invalid user Id or password</h2>");
		    			pw.print("</body></html>");
		    			req.getRequestDispatcher("studentLogin.jsp").include(req, resp);	               
	            }           	            	           	      
	     }			
	}

	private void cheackAnswer(HttpServletRequest req, HttpServletResponse resp) throws ParseException {
		 DAO dao=new DAO();
		 DTO d1=new DTO();
	     tableName=req.getParameter("tableName");
		d1.setNewMail(studEmail);
		String name=dao.findName(d1);
		String contact1=dao.FindContact(d1);
		
		String studName=name;
		System.out.println("hello 22"+name);
		String contact=contact1;   
		String testCode=req.getParameter("testcode");
		String subject=req.getParameter("subject");
		String date=req.getParameter("date");
		
		d1.setQuestionPaperTitle(tableName);
		d1.setStudName(studName);
		d1.setStudmail(studEmail);
		d1.setTestCode(testCode);
		d1.setSubject(subject);
		d1.setDate(date);
		d1.setStudcontact(contact);
		
		ArrayList<DTO> data=new DAO().DisplayQuestions(d1);
		ArrayList<String> userAnsList=new ArrayList<String>();
	        
		int count=0;
		for(DTO result:data) {
			String questionId=result.getQuesId()+"";
			String tempAnswer=result.getAnswerKey()+"";
			String userAnswer=req.getParameter(questionId);
			userAnsList.add(userAnswer);
			
			if(userAnswer.equals(tempAnswer)) {
				count++;
			}
		}
		d1.setMark(count);
		int mark=dao.addMarks(d1);
		req.setAttribute("UserAnswerList", userAnsList);
		req.setAttribute("CorrectAnswerList", data);
		req.setAttribute("count",count );
		try {
			req.setAttribute("studEmail", studEmail);
			req.getRequestDispatcher("displayAnswer.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
		

	private void displayQuestion(HttpServletRequest req, HttpServletResponse resp) {
		tableName=req.getParameter("paper");
		DTO d=new  DTO();
		d.setQuestionPaperTitle(tableName);
		
		DAO d2=new DAO();
	    ArrayList<DTO>	questionResult=d2.DisplayQuestions(d);
	    
	    req.setAttribute("questionResult", questionResult);
	    req.setAttribute("TABLENAME", tableName);
	 
	 try {
		 req.setAttribute("adminData", adminData);
		req.getRequestDispatcher("displayQuestionForAdmin.jsp").forward(req, resp);
	} catch (ServletException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	  }	
   }

	private void loginValidation(HttpServletRequest req, HttpServletResponse resp) {
		
		adminData=req.getParameter("adminData");
		String adminPass=req.getParameter("password");
		
		DTO d3=new DTO();
		d3.setAdminName(adminData);
		d3.setAddPass(adminPass);
		
		DAO dao=new DAO();
		System.out.println("admin method");
		boolean validResul=dao.adminValidation(d3);
		
		req.setAttribute("validationResult", validResul);
		req.setAttribute("adminData", adminData);
		
		 try {
			req.getRequestDispatcher("loginAdmin.jsp").forward(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}

	void createTable(HttpServletRequest req, HttpServletResponse resp) {
		String opertation=req.getParameter("opration");
	    tableName=req.getParameter("tableName");
		
		if(opertation.equals("Add Question")) {
		DTO d1=new DTO();
		d1.setQuestionPaperTitle(tableName);
		
		DAO dao=new DAO();
		dao.createTable(d1);
		
		req.setAttribute("TableName", tableName);
		try {
			req.setAttribute("adminData", adminData);
			req.setAttribute("tableName", tableName);
			req.getRequestDispatcher("addQuestion.jsp").forward(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		}else {
			 DAO d1=new DAO();
			 ArrayList<String> displayResult=d1.displayAllTables();
			 req.setAttribute("DISPLAYRESULT", displayResult);
			 try {
				 req.setAttribute("adminData", adminData);
				req.getRequestDispatcher("display.jsp").forward(req, resp);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	void addQuestion(HttpServletRequest req, HttpServletResponse resp) {
		tableName=req.getParameter("createTable");
		String question=req.getParameter("question");
		String option1=req.getParameter("option1");
		String option2=req.getParameter("option2");
		String option3=req.getParameter("option3");
		String option4=req.getParameter("option4");
		String answerkey=req.getParameter("answerkey");
		
		DTO d2=new DTO();
		d2.setQuestionPaperTitle(tableName);
		d2.setQuestion(question);
		d2.setOption1(option1);
		d2.setOption2(option2);
		d2.setOption3(option3);
		d2.setOption4(option4);
		d2.setAnswerKey(Integer.parseInt(answerkey));
		
		DAO dao1=new DAO();
		int result1=dao1.addQuestion(d2);
		
		req.setAttribute("Result", result1);
		try {
			req.setAttribute("adminData", adminData);
			req.setAttribute("tableName", tableName);
			req.getRequestDispatcher("result.jsp").forward(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	void showData(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<DTO>	questionResult=null;  
		DTO d=null;
		DAO d2=null;
		d=new  DTO();
		d.setQuestionPaperTitle(table);
		d2=new DAO();
	    questionResult=d2.DisplayQuestions(d);
		
		req.setAttribute("questionResult", questionResult);
	    req.setAttribute("TABLENAME", table);
	    req.setAttribute("studEmail", studEmail);
		req.getRequestDispatcher("displayQuestion.jsp").forward(req, resp);
		
	}
	private void showPaper(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String opertation=req.getParameter("test");	
		System.out.println("showpaper");
		switch (opertation) {
		case "aptitude":
			table="aptitude";
			showData(req, resp);
		    break;
		case "verbal_reasoning":
			table="verbal_reasoning";
			showData(req, resp);
			break;
		case "non_verbal_reasoning":
			table="non_verbal_reasoning";
			showData(req, resp);
			break;
		case "verbal_ability":
			table="verbal_ability";
			showData(req, resp);
			break;
		case "programming":
			table="programming";
			showData(req, resp);
			break;
		case "general_knowledge":
			table="general_knowledge";
			showData(req, resp);
			break;
		case "sports":
			table="sports";
			showData(req, resp);
			break;
		case "puzzles":
			table="puzzles";
			showData(req, resp);
			break;
		case "java":
			table="java";
			showData(req, resp);
			break;
		case "dsa":
			table="dsa";
			showData(req, resp);
			break;
		case "wt":
			table="wt";
			showData(req,resp);
			break;
		case "tcs":
			table="tcs";
			showData(req,resp);
			break;
			
		}
	}

	private void backPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("adminData", adminData);
		req.getRequestDispatcher("questionPaper.jsp").forward(req, resp);
		
	}
	public void logoutmain(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.setAttribute("studEmail", studEmail);
		 req.getRequestDispatcher("student.jsp").forward(req, resp);	
	}

	private void LogoutLink(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		 HttpSession session = req.getSession(false);
	        if (session != null) {
	            session.invalidate();
	        }
	        resp.sendRedirect("index.html");
	}

	private void logOut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.sendRedirect("http://localhost:8080/MCQ_Question_PaperSetupt/index.html");	
	}

	
}