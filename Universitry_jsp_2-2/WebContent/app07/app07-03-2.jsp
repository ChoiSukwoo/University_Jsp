<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8");%> <!-- 인코딩타입 설정 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
		String sql = "Delete FROM Course WHERE COURSE_ID = ?";
		try {
			Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("courseId"));
	%>

	<center>
		<h1 id="title">테이블 삭제 </h1>
		<div class="border">
			<!-- app07-03-1에서 받은 값으로 해당 과목코드가 존재하는지 아닌지 판별 -->
			<%if (request.getParameter("checkView").equals("delete")) {%>
			<div class="info">
				<%pstmt.executeUpdate();%>
				<%=request.getParameter("courseId")%>의 학과 코드가 삭제 되었습니다.
			</div>
			<%} else {%>
			<div class="info">
				해당하는 과목코드가 없습니다<br>다시 확인해 주세요
			</div>
			<%}%>


			<form method="post" action="app07-01.jsp">
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
		out.print("에러발생 : " + e);
	}
%>