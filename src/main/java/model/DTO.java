package model;

public class DTO {
	private int quesId;
	private String questionPaperTitle;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private int answerKey;
	private String adminName;
	private String addPass;
	private String studmail;
	private String studPass;
	private String subject;
	private int mark;
	private String date;
	private String studName;
	private String studcontact;
	private String newPass;
	private String testCode;
	private int srNum;
	private String newMail;
	
	public String getNewMail() {
		return newMail;
	}
	public void setNewMail(String newMail) {
		this.newMail = newMail;
	}
	public int getSrNum() {
		return srNum;
	}
	public void setSrNum(int srNum) {
		this.srNum = srNum;
	}
	public String getNewPass() {
		return newPass;
	}
	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}
	public String getStudcontact() {
		return studcontact;
	}
	public void setStudcontact(String studcontact) {
		this.studcontact = studcontact;
	}
	public String getStudName() {
		return studName;
	}
	public String setStudName(String studName) {
		return this.studName = studName;
	}

	public String getTestCode() {
		return testCode;
	}
	public void setTestCode(String testCode) {
		this.testCode = testCode;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
	private String tableName;
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getStudmail() {
		return studmail;
	}
	public void setStudmail(String studmail) {
		this.studmail = studmail;
	}
	public String getStudPass() {
		return studPass;
	}
	public void setStudPass(String studPass) {
		this.studPass = studPass;
	}	
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAddPass() {
		return addPass;
	}
	public void setAddPass(String addPass) {
		this.addPass = addPass;
	}
	public String getQuestionPaperTitle() {
		return questionPaperTitle;
	}
	public void setQuestionPaperTitle(String questionPaperTitle) {
		this.questionPaperTitle = questionPaperTitle;
	}

	public int getQuesId() {
		return quesId;
	}
	public void setQuesId(int quesId) {
		this.quesId = quesId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public int getAnswerKey() {
		return answerKey;
	}
	public void setAnswerKey(int answerKey) {
		this.answerKey = answerKey;
	}
}