<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String Dept_ID = request.getParameter("dept_id");
	String Dept_Name = request.getParameter("dept_name");
	String Dept_Tel = request.getParameter("dept_tel");
	String sql = "UPDATE DEPARTMENT ";
	sql = sql + " SET Dept_Name = ?, Dept_Tel = ?";
	sql = sql + " WHERE Dept_ID = ?";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, Dept_Name);
		pstmt.setString(2, Dept_Tel);
		pstmt.setString(3, Dept_ID);
		pstmt.executeUpdate();
		out.println(Dept_Name + ", " + Dept_Tel + "로 수정되었습니다.");
	} catch (Exception e) {
		out.println(Dept_ID + "의 학과코드 수정이 실패햇습니다.");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>