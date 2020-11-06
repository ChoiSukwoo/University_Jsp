<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!-- 인코딩 타입 변환 -->
<% request.setCharacterEncoding("UTF-8");    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- 선언부 -->
<%!String courseId = "";
	String TitleName = "";
	int CNumber = 0;
	String ProfessorID = "";
	int CourseFees = 0;
	//학과코드 또는 학과명이 중복되는지 확인하는함수
	public boolean check_course(String id, String name) {
		boolean check = false;

		System.out.println("courseId : " + courseId +"  id : " + id+"   TitleName : " + TitleName+"   name : " + name);
		if (id.equals(courseId)| TitleName.equals(name)) {
			check = true;
		}
		System.out.println("checkCourse_function : " + check);

		return check;
	}%>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
	String sql = "SELECT * FROM Course";
	String sql1 = "INSERT INTO  Course(COURSE_ID,TITLE,C_NUMBER,PROFESSOR_ID,COURSE_FEES)VALUES(?,?,?,?,?)";
	try {
		Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		courseId = request.getParameter("courseId");
		TitleName = request.getParameter("TitleName");
		CNumber = Integer.parseInt(request.getParameter("CNumber") == "" ? "0" : request.getParameter("CNumber"));
		ProfessorID = request.getParameter("ProfessorID");
		CourseFees = Integer.parseInt(request.getParameter("CourseFees") == "" ? "0" : request.getParameter("CourseFees"));

		PreparedStatement pstmt1 = con.prepareStatement(sql1);
		pstmt1.setString(1, courseId);pstmt1.setString(2, TitleName);pstmt1.setInt(3, CNumber);	pstmt1.setString(4, ProfessorID);	pstmt1.setInt(5, CourseFees);
%>


<body>
	<center>
		<h1 id="title">Course 테이블 검색</h1>
		<div class="border">
			<%
				boolean checkCourse = false;
					while (rs.next()) {
						String id = rs.getString(1);
						String name = rs.getString(2);
						if (check_course(id, name) == true) {
							checkCourse = true;
							break;
						}
						;
					}
					System.out.println("checkCourse : " + checkCourse);
					if (checkCourse == false) {
						System.out.print("pstmt1 : " + pstmt1);
						pstmt1.executeUpdate();
			%>
			<!-- 같은값이 없을때 -->

			<div class="info">Course 테이블에 과목 코드가 개설 되엇습니다.</div>
			<%
				} else {
			%>
			<!-- 같은값이 있을떄 -->
			<div class="info">Course테이블에 이미 동일한 id 또는 과목명이 있습니다. 다</div>
			<%
				}
			%>
			<form method="post" action="app07-01.jsp">
				<input type="submit" class="full_Button" value="돌아가기">
			</form>
		</div>
	</center>
</body>
</html>

<%
	pstmt.close();
	pstmt1.close();
	con.close();
	} catch (Exception e) {
		out.print("실패하엿습니다. : " + e);
	}
%>