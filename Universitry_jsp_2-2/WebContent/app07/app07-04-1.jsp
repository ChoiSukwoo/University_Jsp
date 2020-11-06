<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="Javascript">
	function check(index) {
		if (index == 0) {//삭제실패
			document.failRecord.submit();
		}else{
			if(document.deleteRecord.TitleName.value==""){
				alert("과목명을 입력하세요");
				document.deleteRecord.TitleName.focus();
				return
			}
			if(document.deleteRecord.CNumber.value==""){
				alert("학점수를 입력하세요!!");
				document.deleteRecord.CNumber.focus();
				return
			}
			document.deleteRecord.submit();
		}
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
		<h1 id="title">레코드 수정</h1>
		<!-- 해당하는 과목코드가 없을떄 바로 넘어감 -->
		<form method="post" action="app07-04-2.jsp" name="failRecord">
			<input type=hidden value="fail" name="checkView" /> 
			<input type=hidden value="<%=request.getParameter("courseId")%>"name="courseId" />
		</form>
		
		<div class="border">
			<form method="post" action="app07-04-2.jsp" name="deleteRecord">
			<%if (rs.next()) {%>
				<div class="infoText">과목코드</div>
				<input type="text" name="courseId" class="inputText" value="<%=rs.getString(1)%>" readonly>
				<div class="infoText">과목명</div>
				<input type="text" name="TitleName" class="inputText" value="<%=rs.getString(2)%>">
				<div class="infoText">학점수</div>
				<input type="text" name="CNumber" class="inputText" value="<%=rs.getString(3)%>">
				<div class="infoText">담당교수번호</div>
				<input type="text" name="ProfessorID" class="inputText" value="<%=rs.getString(4)%>">
				<div class="infoText">추가수강료</div>
				<input type="text" name="CourseFees" class="inputText" value="<%=rs.getString(5)%>">
				<%} else {//실패시 실행%>
				<script type="text/javascript">
					<%System.out.print("FailPagGo!");%>
					check(0)
					<%System.out.print("FailPageEnd!");%>
				</script>
				<%	} %>

				<div class="half_button_form">
					<!-- 입력완료시 check()함수를 실행하여 조회 -->
					<input type=hidden value="delete" name="checkView" /> <input
						type=hidden value="<%=request.getParameter("courseId")%>"
						name="courseId" /> <input type="button" class="half_Button"
						value="수정" onclick="check(1)" />
					<!-- 작성된 내용을 지워버림 -->

					<input type="button" class="half_Button" value="돌아가기"
						Onclick="javascript:history.back(-1)">

				</div>
			</form>
		</div>
	</center>
</body>
</html>
<%
	pstmt.close();
	con.close();
	} catch (Exception e) { }
%>