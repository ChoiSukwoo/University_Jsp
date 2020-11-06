<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
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
		String alter_sql = "Update Course set Title=? ,C_Number=?";
		try {
			Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");			
	%>
	<center>
		<h1 id="title">테이블 수정</h1>
		<div class="border">
			<%if (request.getParameter("checkView").equals("fail")) {%>
					<div class="info">해당하는 과목코드가 없습니다<br>다시 확인해 주세요</div>
			<%} else{
					int i=0;
					//값을 저장할 리스트 생성
					String[] list = new String[5];
					list[i]=request.getParameter("TitleName"); i++; // 리스트에 과목명 추가
					list[i]=request.getParameter("CNumber"); i++;// 리스트에 학점 추가			
					//null이 아닐떄 sql문과 리스트에 교수명 추가
					if(request.getParameter("ProfessorID").equals("null")|request.getParameter("ProfessorID").equals("")){
						alter_sql = alter_sql + " , Professor_ID = Null";
					}else{
						alter_sql = alter_sql + " , Professor_ID = ?";
						list[i]=request.getParameter("ProfessorID");// 리스트에 학점 추가
						i++;
					}
					//null이 아닐떄 sql문과 리스트에 추가 수업료 추가
					if(request.getParameter("CourseFees").equals("null")|request.getParameter("CourseFees").equals("")){
						alter_sql = alter_sql + " , Course_Fees = Null";
					}else{
						alter_sql = alter_sql + " , Course_Fees = ?";
						list[i]=request.getParameter("CourseFees");// 리스트에 수업료 추가
						i++;
					}
					//sql문에 조건추가
					alter_sql = alter_sql + " Where Course_Id=?";
					list[i]=request.getParameter("courseId");// 리스트에 수업료 추가
					i++;	
					//지금까지 만든sql 문과 리스트를 이용해 문구 제작
					PreparedStatement pstmt = con.prepareStatement(alter_sql);
					for(int j =0;j<i;j++){
						pstmt.setString(j+1, list[j]);
					}
					pstmt.executeUpdate();
					pstmt.close();%>
					<div class="info"><%=request.getParameter("courseId")%>의 학과 코드가 수정 되었습니다.</div>		
			<%} %>
			<form method="post" action="app07-01.jsp">
				<input type="submit" class="full_Button" value="돌아가기">
			</form>
		</div>
	</center>
</body>
</html>

<%
	con.close();

	} catch (Exception e) {
		out.print("에러발생 : " + e);
	} finally {

	}
%>