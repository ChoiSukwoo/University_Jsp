<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String Dept_id = request.getParameter("dept_id");
	String sql = "Delete  From Department Where Dept_ID =?";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Dept_id);
		//업데이트
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.println(Dept_id + " 의 학과코드가 삭제되었습니다.");
	} catch (Exception e) {
		out.println(Dept_id + " 의 학과코드가 삭제되지 않았습니다.");
	}
%>