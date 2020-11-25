<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>


<%
	int i =0;
	String sql = "SELECT * FROM Department";
	try {
  		Context init  = new InitialContext();
  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
  		Connection con = ds.getConnection();
  		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>테이블 검색</title>
</head>
<body>
	<center>
		<h4>[[Department 테이블 검색]]</h4>
		<table border="1" celspacing="1">
			<tr>
				<td>순번</td>
				<td>학과코드</td>
				<td>학 과 명</td>
				<td>전화번호</td>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=++i%></td>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
			</tr>
			<%
				}
			%>
			<h4>DB에서 정상적으로 검색 되었습니다.!!</h4>
			<%
				} catch (SQLException e) {
			%>
			<%
				e.getMessage();
			%>
			<h4>에러가 발생되었습니다.</h4>
			<%
				}
			%>

		</table>
	</center>
</body>
</html>