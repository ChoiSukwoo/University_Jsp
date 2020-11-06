<!-- 검색프로그램  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학번 조회 폼</title>
</head>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
	String sql = "SELECT * FROM Course";

	try {
		Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int i = 0;
%>


<body>
	<center>
		<h1 id="title">Course 테이블 검색</h1>
		<div class="border"  style="width:650px">

			<table class="table_outline" >
				<tr class="inputText">
					<td>순번</td>
					<td>과목코드</td>
					<td>과목명</td>
					<td>학점수</td>
					<td>담당과목번호</td>
					<td>추가수강료</td>
				</tr>
				<%
					while (rs.next()) {
				%>
				<tr class="inputText">
					<td><%=++i%></td>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getInt(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
				</tr>
				<%
					}
				%>
			</table>

			<form method="post" action="app07-02.jsp" name="inputRecord">
				<!-- 관리자 모드 창으로 변경 -->
				<input type="submit" class="full_Button" value="레코드 입력">
			</form>
			<form method="post" action="app07-03.jsp" name="alterRecord">
				<!-- 관리자 모드 창으로 변경 -->
				<input type="submit" class="full_Button" value="레코드  삭제">
			</form>
			<form method="post" action="app07-04.jsp" name="DeletRecord">
				<!-- 관리자 모드 창으로 변경 -->
				<input type="submit" class="full_Button" value="레코드 수정">
			</form>
			<!-- 돌아가기 변경 -->
			<form method="post" action="1705099_hb_input.jsp">
				<input type="submit" class="full_Button" value="돌아가기">
			</form>
		</div>
	</center>
</body>
</html>

<%
	pstmt.close();
	con.close();
	} catch (Exception e) {
	}
%>