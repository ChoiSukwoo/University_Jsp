<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
<%@page import="java.io.Console"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!-- 변수 선언 -->
<%!//총과목
	int i = 0;
	//총과목
	int sumGrade = 0;
	//총합 학점
	int sumScore = 0;
	//총합 학점
	float sumAvarage = 0;%>

<!-- 점수를 등급으로 변환하는 함수 -->
<%!public String changeGrade(int score) {
		String grade = "";
		if (score > 95) {
			grade = "A+";
		} else if (score > 90) {
			grade = "A";
		} else if (score > 85) {
			grade = "B+";
		} else if (score > 80) {
			grade = "B";
		} else if (score > 75) {
			grade = "C+";
		} else if (score > 70) {
			grade = "C";
		} else if (score > 65) {
			grade = "D+";
		} else if (score > 60) {
			grade = "D";
		} else if (score > 0) {
			grade = "F";
		} else {
			grade = "Error";
		}
		System.out.print("test");
		return grade;
	}%>

<!-- 점수를 학점으로 변환하는 함수 -->
<%!public float changeAvarage(int score) {

		float grade = 0;
		if (score > 95) {
			grade = 4.5f;
		} else if (score > 90) {
			grade = 4.0f;
		} else if (score > 85) {
			grade = 3.5f;
		} else if (score > 80) {
			grade = 3.0f;
		} else if (score > 75) {
			grade = 2.5f;
		} else if (score > 70) {
			grade = 2.0f;
		} else if (score > 65) {
			grade = 1.5f;
		} else if (score > 60) {
			grade = 1.0f;
		} else if (score > 0) {
			grade = 0f;
		}

		return grade;
	}%>

<!-- 소수점 2자리로 바꿔주는 함수 -->
<%!public float Format2(float sumAvarage, int score) {
		int num = (int) ((sumAvarage * 100) / score);
		return (float) num / 100;
	}%>


<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
	//student 테이블에서 학생아이디로 찾아오기
	String sql1 = "SELECT * FROM Student WHERE Student_ID = ?";
	//ScoreList 뷰에서 학생아이디로 찾아오기
	String sql2 = "SELECT * FROM ScoreList WHERE Student_ID = ?";
	try {
		Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
		PreparedStatement pstmt1 = con.prepareStatement(sql1);
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt1.setString(1, request.getParameter("Student_ID"));
		pstmt2.setString(1, request.getParameter("Student_ID"));
		ResultSet rs1 = pstmt1.executeQuery();
		ResultSet rs2 = pstmt2.executeQuery();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="style.css?ver=2" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 id="title">개 인 별 성 적 표</h1>
		<div class="border">
		<!-- student 테이블에 학번이 존재할시 -->
			<%if (rs1.next()) {%>
			<%i=0; %>
			<table class="table_outline">
				<tr class="inputText">
					<td>학과</td>
					<td>학년</td>
					<td>학번</td>
					<td>성명</td>
				</tr>
				<tr>
					<td><%=rs1.getString(1)%></td>
					<td><%=rs1.getString(2)%></td>
					<td><%=rs1.getString(3)%></td>
					<td><%=rs1.getString(4)%></td>
				</tr>
			</table>
			<table class="table_outline">
				<tr class="inputText">
					<td>순번</td>
					<td>과목번호</td>
					<td>과목명</td>
					<td>학점</td>
					<td>등급</td>
				</tr>
				<!-- ScoreList 뷰에서 정보 가져오기-->
				<%while (rs2.next()) {%>
				<tr>
					<td><%=++i%></td>
					<td><%=rs2.getString(5)%></td>
					<td><%=rs2.getString(6)%></td>
					<td><%=rs2.getInt(7)%></td>
					<td><%=changeGrade(rs2.getInt(8))%></td>

					<!-- 총과목수 추가 -->
					<%sumGrade++;%>
					<!-- 총점수 연산 -->
					<%sumScore += rs2.getInt(7);%>
					<!-- 평균 평점의 합 연산 -->
					<%sumAvarage += changeAvarage(rs2.getInt(8)) * rs2.getFloat(7);%>
				</tr>
				<%}%>
			</table>

			<table>
				<tr class="table_outline">
					<td>총취득 과목</td>
					<td><%=sumGrade%></td>
					<td>점</td>
				</tr>
				<tr class="table_outline">
					<td>총취득 학점</td>
					<td><%=sumScore%></td>
					<td>점</td>
				</tr>
				<tr class="table_outline">
					<td>전체 평균 평점</td>
					<td><%=Format2(sumAvarage, sumScore)%></td>
					<td>점</td>
				</tr>
			</table>
			<!-- student 테이블에 학번이 없을시 -->
			<%} else {%>
			<h4>선택하신 학생의 정보가 없습니다.</h4>
			<h4>학번을 확인해 주세요</h4>
			<%}%>

			<input type="button" class="full_Button" value="돌아가기" Onclick="javascript:history.back(-1)">
		</div>
	</center>

</body>
</html>

<%
	pstmt1.close();
	pstmt2.close();
	con.close();
	} catch (Exception e) { out.print("에러발생 : " + e);}
%>