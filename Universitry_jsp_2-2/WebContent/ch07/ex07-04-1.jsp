<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String Dept_ID = request.getParameter("dept_id");

	String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
	String sql = "Delete  From Department Where Dept_ID =?";

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "y1705099", "pass1705099");
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Dept_ID);
		//업데이트
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.println(Dept_ID + " 의 학과코드가 삭제되었습니다.");
	} catch (Exception e) {
		out.println(Dept_ID + " 의 학과코드가 삭제되지 않았습니다.");
	}
%>