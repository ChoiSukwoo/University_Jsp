<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    <% 
    String sql = "SELECT * FROM Department";
    String url = "jdbc:oracle:thin:@oracle11gr2.crwpeutgjyaj.ap-northeast-2.rds.amazonaws.com:15211:ORCL";
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con = DriverManager.getConnection(url,"y1705099","pass1705099");
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(sql);
        int i=0;
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
			<%while(rs.next()){%>
			<tr>
				<td><%= ++i%></td>
				<td><%= rs.getString(1)%></td>
				<td><%= rs.getString(2)%></td>
				<td><%= rs.getString(3)%></td>
			</tr>
			<%}%>
			<%rs.close();%>
			<%stmt.close(); %>
			<%con.close(); %>
			<h4>DB에서 정상적으로 검색 되었습니다.!!</h4>
	<%}catch(SQLException e){%>
				<% e.getMessage(); %>
				<h4>에러가 발생되었습니다.</h4>
	<%} %>
				
		</table>
	</center>
</body>
</html>