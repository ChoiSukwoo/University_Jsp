<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="Javascript">
	function check(index) {
		alert(index);
		if (index == 0) {//삭제실패
			document.failRecord.submit();
		}
		document.deleteRecord.submit();
	}
</script>

<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>레코드 삭제 1</title>
</head>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
	String sql = "SELECT * FROM Course WHERE COURSE_ID = ?";
	try {
		Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, request.getParameter("courseId"));
		ResultSet rs = pstmt.executeQuery();
%>

<body>
	<center>
		<h1 id="title">레코드 삭제</h1>
		<div class="border">

			<%if (rs.next()) {%>
			<div class="infoText">과목코드</div>
			<input type="text" name="courseId" class="inputText"value="<%=rs.getString(1)%>" readonly>
			<div class="infoText">과목명</div>
			<input type="text" name="TitleName" class="inputText"value="<%=rs.getString(2)%>" readonly>
			<div class="infoText">학점수</div>
			<input type="text" name="CNumber" class="inputText"value="<%=rs.getString(3)%>" readonly>
			<div class="infoText">담당교수번호</div>
			<input type="text" name="ProfessorID" class="inputText"value="<%=rs.getString(4)%>" readonly>
			<div class="infoText">추가수강료</div>
			<input type="text" name="CourseFees" class="inputText"value="<%=rs.getString(5)%>" readonly>
			<%} else {//실패시 실행%>
			<form method="post" action="app07-03-2.jsp" name="failRecord">
				<input type=hidden value="fail" name="checkView" /> 
				<input type=hidden value="<%=request.getParameter("courseId")%>" name="courseId" />
				<script type="text/javascript">
					//해당하는 학과코드가없을시 다음페이지로 해당폼정보를 전송
					check(0)
				</script>
			</form>
			<%}%>
			<div class="half_button_form">
				<!-- 입력완료시 check()함수를 실행하여 조회 -->
				<form method="post" action="app07-03-2.jsp" name="deleteRecord">
					<input type=hidden value="delete" name="checkView" /> 
					<input type=hidden value="<%=request.getParameter("courseId")%>"name="courseId" /> 
					<input type="button" class="half_Button"  value="삭제" onclick="check(1)" />
					<input type="button" class="half_Button" value="돌아가기" Onclick="javascript:history.back(-1)">
				</form>
			</div>

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