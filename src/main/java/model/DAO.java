package model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class DAO {
	
	private static Connection con=Service.getConnection();
	static String tempuserData;

	public void createTable(DTO d1) {
	    Connection con = Service.getConnection(); // Assuming you have a method to get connection
	    String createTable = "CREATE TABLE " + d1.getQuestionPaperTitle() + " (q_id SERIAL PRIMARY KEY, question VARCHAR(400), option1 VARCHAR(400), option2 VARCHAR(400), option3 VARCHAR(400), option4 VARCHAR(400), answer INT)";
	    try {
	        Statement stmt = con.createStatement();
	        stmt.executeUpdate(createTable);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	
//	public int addQuestion(DTO d2) {
//		Connection con=Service.getConnection();
//		String insertQuestion = "INSERT INTO " + d2.getQuestionPaperTitle() + " VALUES (?, ?, ?, ?, ?, ?, ?)";
//		try {
//			PreparedStatement pstmt=con.prepareStatement(insertQuestion);
//			pstmt.setInt(1, 0);
//			pstmt.setString(2, d2.getQuestion());
//			pstmt.setString(3, d2.getOption1());
//			pstmt.setString(4, d2.getOption2());
//			pstmt.setString(5, d2.getOption3());
//			pstmt.setString(6, d2.getOption4());
//			pstmt.setInt(7, d2.getAnswerKey());
//		    return	pstmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return 0;
//		
//	}
	
	public int addQuestion(DTO d2) {
	    Connection con = Service.getConnection();
	    String insertQuestion = "INSERT INTO " + d2.getQuestionPaperTitle() + " VALUES (?, ?, ?, ?, ?, ?, ?)";
	    
	    try {
	        PreparedStatement pstmt = con.prepareStatement(insertQuestion);
	      
	        int qId = generateUniqueQId(con, d2.getQuestionPaperTitle());
	        if (qId == -1) {
	           
	            return 0;
	        }
	        
	       
	        pstmt.setInt(1, qId);
	        pstmt.setString(2, d2.getQuestion());
	        pstmt.setString(3, d2.getOption1());
	        pstmt.setString(4, d2.getOption2());
	        pstmt.setString(5, d2.getOption3());
	        pstmt.setString(6, d2.getOption4());
	        pstmt.setInt(7, d2.getAnswerKey());
	        
	       
	        return pstmt.executeUpdate();
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return 0;
	}

	private int generateUniqueQId(Connection con, String tableName) throws SQLException {
	   
	    int newQId = (int) (Math.random() * 100000); 
	    String query = "SELECT COUNT(*) FROM " + tableName + " WHERE q_id = ?";
	    PreparedStatement pstmt = con.prepareStatement(query);
	    pstmt.setInt(1, newQId);
	    ResultSet rs = pstmt.executeQuery();
	    
	   
	    if (rs.next() && rs.getInt(1) > 0) {
	        return generateUniqueQId(con, tableName); 
	    }
	    
	    return newQId; 
	}

	
	public ArrayList<DTO> studentMarksList() {
		Connection con=Service.getConnection();
	        String studentMarksQuery = "SELECT * FROM student_results";
	        ArrayList<DTO> studentMarks = new ArrayList<>();
	        try {
	            PreparedStatement pstmt = con.prepareStatement(studentMarksQuery);
	            ResultSet rs = pstmt.executeQuery();
	            while (rs.next()) {
	                DTO dto = new DTO();
	                dto.setStudName(rs.getString("student_name"));
	                dto.setStudmail(rs.getString("student_email"));
	                dto.setStudcontact(rs.getString("contact_number"));
	                dto.setSubject(rs.getString("subject"));
	                dto.setDate(rs.getString("exam_date"));
	                dto.setMark(rs.getInt("marks"));
	                dto.setTestCode(rs.getString("test_code"));
	                studentMarks.add(dto);
	            }
	            rs.close();
	            pstmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	           
	        }
	        return studentMarks;

	}
	
	
	public boolean adminValidation(DTO d3) {
		System.out.println("admin 44");
		Connection con=Service.getConnection();
		 String query1="select admin_pass from admin where admin_email=?";
		 System.out.println("admin 55");
		PreparedStatement pstmt=null;
		ResultSet rs=null;
			try {
				pstmt=con.prepareStatement(query1);
				pstmt.setString(1,d3.getAdminName());
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					if(rs.getString(1).equals(d3.getAddPass())) {
						tempuserData=d3.getAdminName();
						return true;
					}
				
			}
				} catch (SQLException e) {
				e.printStackTrace();
			}
		return false;	
     	}
	


	
	public ArrayList<String> displayAllTables() {
	    Connection con = Service.getConnection();
	    ArrayList<String> tables = new ArrayList<String>();
	    
	    try {
	        DatabaseMetaData metaData = con.getMetaData();
	        ResultSet rs = metaData.getTables(null, null, null, new String[]{"TABLE"});
	        
	        while (rs.next()) {
	            String tableName = rs.getString("TABLE_NAME");
	            tables.add(tableName);
	        }
	        
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return tables;
	}
	
	
	public ArrayList<DTO> DisplayQuestions(DTO d) {
		Connection con=Service.getConnection();
		ArrayList<DTO> questions=new ArrayList<DTO>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from "+d.getQuestionPaperTitle());
			while(rs.next()) {
				DTO d1=new DTO();
				d1.setQuesId(rs.getInt(1));
				d1.setQuestion(rs.getString(2));
				d1.setOption1(rs.getString(3));
				d1.setOption2(rs.getString(4));
				d1.setOption3(rs.getString(5));	
				d1.setOption4(rs.getString(6));
		        d1.setAnswerKey(rs.getInt(7));
		      
		        questions.add(d1);   
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}return questions;
	}
	public boolean studLoginCheack(DTO d1) {
		
		String query1="select student_pass from student where student_email=?";
		//String query2="select student_pass from student where student_contact=?";
			
		Connection con=Service.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		if(d1.getStudmail().contains("@"))
		{
			try {
				pstmt=con.prepareStatement(query1);
				
				pstmt.setString(1,d1.getStudmail());
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					
					if(rs.getString(1).equals(d1.getStudPass())) {
						
						tempuserData=d1.getStudmail();
						return true;
					}
					else {
						return false;
					}
				}
				else
				{
					return false;
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return false;
		
//		else {
//			try {
//				pstmt=con.prepareStatement(query2);
//				pstmt.setString(1,d1.getStudmail());
//				rs=pstmt.executeQuery();
//				
//				if(rs.next()) {
//					if(rs.getString(1).equals(d1.getStudPass())) {
//						tempuserData=d1.getStudmail();
//						return true;
//					}
//					else {
//						return false;
//					}
//				}
//				else
//				{
//					return false;
//				}
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}		
		
	}
	
	public int addMarks(DTO d1) throws ParseException {
		Connection con = Service.getConnection();
		int count = 0;
		String insertMarks = "INSERT INTO student_results (student_name, student_email, test_code, subject, exam_date, contact_number, marks) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
		    PreparedStatement pstmt = con.prepareStatement(insertMarks);
		   
		    pstmt.setString(1, d1.getStudName());
		    pstmt.setString(2, d1.getStudmail());
		    pstmt.setString(3, d1.getTestCode());
		    pstmt.setString(4, d1.getSubject());
		    
		    
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		    java.util.Date parsedDate = dateFormat.parse(d1.getDate());
		    java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
		    
		    pstmt.setDate(5, sqlDate); 
		    pstmt.setString(6, d1.getStudcontact());
		    pstmt.setInt(7, d1.getMark());
		    
		    count = pstmt.executeUpdate();
		    return count;
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return 0;

	}
	
	public int addNewStudent(DTO d1) {
	    Connection con = Service.getConnection();
	    String newStudent = "INSERT INTO student (student_name, student_email, student_contact, student_pass) VALUES (?, ?, ?, ?)";
	    PreparedStatement pstmt = null;
	    
	    try {
	        pstmt = con.prepareStatement(newStudent);
	        pstmt.setString(1, d1.getStudName());
	        pstmt.setString(2, d1.getStudmail());
	        pstmt.setString(3, d1.getStudcontact());
	        pstmt.setString(4, d1.getNewPass());
	        
	        return pstmt.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (pstmt != null) {
	                pstmt.close();
	            }
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }
	    
	    return 0;
	}

	
	public ArrayList<DTO> addDetails(DTO d1) {
		Connection con=Service.getConnection();
		ArrayList<DTO> userData=new ArrayList<DTO>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT student_name,student_email FROM student WHERE student_contact="+d1.getStudcontact()+";");
			while(rs.next()) {
				DTO d2=new DTO();
				d2.setStudName(rs.getString("student_name"));
				d2.setStudmail(rs.getString("student_email"));
		        userData.add(d2);   
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}return userData;
	}
	
	public ArrayList<DTO> allMarks(DTO d1) {
		System.out.println("data 111");
	    Connection con = Service.getConnection();
	    ArrayList<DTO> allData = new ArrayList<>();
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    try {
	        String query = "SELECT * FROM student_results WHERE student_email = ?";
	        pstmt = con.prepareStatement(query);
	        pstmt.setString(1, d1.getStudmail());
	        
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            DTO d2 = new DTO();
	            d2.setSrNum(rs.getInt("srno"));
	            d2.setStudName(rs.getString("student_name"));
	            d2.setStudmail(rs.getString("student_email"));
	            d2.setTestCode(rs.getString("test_code"));
	            d2.setSubject(rs.getString("subject"));
	            d2.setDate(rs.getDate("exam_date").toString());
	            d2.setStudcontact(rs.getString("contact_number"));
	            d2.setMark(rs.getInt("marks"));
	            System.out.println("data 212");
	            allData.add(d2);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (pstmt != null) {
	                pstmt.close();
	            }
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }
	    
	    return allData;
	}
	public ArrayList<DTO> SubjectMarks(DTO d1) {
		Connection con=Service.getConnection();
		ArrayList<DTO> subjectMarks=new ArrayList<DTO>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from student_results where student_email='"+d1.getStudmail()+"' And TEST_CODE='"+d1.getTestCode()+"';");
			while(rs.next()) {
				DTO d2=new DTO();
				d2.setSrNum(rs.getInt(1));
				d2.setStudName(rs.getString(2));
				d2.setStudmail(rs.getString(3));
				d2.setTestCode(rs.getString(4));
				d2.setSubject(rs.getString(5));
				d2.setDate(rs.getString(6));
				d2.setStudcontact(rs.getString(7));
				d2.setMark(rs.getInt(8));
		  
				subjectMarks.add(d2);   
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subjectMarks;
		
		
	}
	public String findName(DTO d1) {
		System.out.println("DAO Name ");
		System.out.println("DAO New mail "+d1.getNewMail());
		Connection con=Service.getConnection();
		Statement stmt=null;
		String name=null;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select student_name from student where student_email='"+d1.getNewMail()+"';");
			while(rs.next()) {
				DTO d2=new DTO();
				name=d2.setStudName(rs.getString("student_name"));
				
				
				
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}return name;
		
	}

	public String FindContact(DTO d1) {
		Connection con=Service.getConnection();
		Statement stmt;
		String contact=null;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select student_contact from student where student_email='"+d1.getNewMail()+"';");
			while(rs.next()) {
				DTO d2=new DTO();
				contact=d2.setStudName(rs.getString("student_contact"));	
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}return contact;
		
	}

	
	public ArrayList<DTO> fetchDataById(int id, String tableName) {
	    //System.out.println("fetchDataById"); 
	   // System.out.println("id " + id);
	    
	    Connection con = Service.getConnection();
	    ArrayList<DTO> question = new ArrayList<>();
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    String fetchDataQuery = "SELECT * FROM " + tableName + " WHERE q_id = ?";
	    //System.out.println(" After Query tableName: " + tableName);
	    
	    try {
	        pstmt = con.prepareStatement(fetchDataQuery);
	        pstmt.setInt(1, id);
	        rs = pstmt.executeQuery();
	        
	        while(rs.next()) {
	            DTO d1 = new DTO();
	            d1.setQuesId(rs.getInt(1));
	            d1.setQuestion(rs.getString(2));
	            d1.setOption1(rs.getString(3));
	            d1.setOption2(rs.getString(4));
	            d1.setOption3(rs.getString(5));   
	            d1.setOption4(rs.getString(6));
	            d1.setAnswerKey(rs.getInt(7));
	            
	            question.add(d1);   
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return question;
	}

	public boolean updateQuestions(DTO dto) {
		Connection con = Service.getConnection();
	    System.out.println("updateQuestions");
	    String updatQuestion = "UPDATE " + dto.getQuestionPaperTitle() + " SET question = ?, option1 = ?, option2 = ?, option3 = ?, option4 = ?, answer = ? WHERE q_id = ?";

	    try {
	        PreparedStatement pstmt = con.prepareStatement(updatQuestion);
	        pstmt.setString(1, dto.getQuestion());
	        pstmt.setString(2, dto.getOption1());
	        pstmt.setString(3, dto.getOption2());
	        pstmt.setString(4, dto.getOption3());
	        pstmt.setString(5, dto.getOption4());
	        pstmt.setInt(6, dto.getAnswerKey());
	        pstmt.setInt(7, dto.getQuesId()); 
	        pstmt.executeUpdate();
	        return true;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}
}