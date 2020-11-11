<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="java.sql.*, javax.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  int i= 0;
  String sql = "SELECT * FROM Course WHERE Professor_ID=?";
  String professor_id = request.getParameter("professor_id");
try {
  Context init  = new InitialContext();
  DataSource ds = 
(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
  Connection con = ds.getConnection();

  PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, professor_id);
  ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교수의 개설과목</title>
</head>
<body>
  <center>
  <table border="1" cellspacing="1">
    <tr>
       <th colspan="5"><%= professor_id %> 교수의  개설과목</th>
    </tr>
    <tr>
       <th>순번</th>
       <th>과목코드</th>
       <th>과목명</th>
       <th>학점수</th>
       <th>추가수강료</th>
    </tr>
<%
    while ( rs.next() )  {
%>
    <tr>
       <td><%= ++i %></td>
       <td><%= rs.getString(1) %> </td>
       <td><%= rs.getString(2) %> </td>
       <td><%= rs.getInt(3) %> </td>
       <td><%= rs.getInt(5) %> </td>
    </tr>
<%
  }
%> </table>
   <p>Course 테이블에서 검색되었습니다.</center> 
<%
  } catch(Exception e){
      out.println("<h4>데이터 가져오기에 실패하였습니다.</h4>");
      e.printStackTrace();
  }
%>
</body>
</html>
