<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="srow" value="0" />
<c:set var="mrow" value="1" />
<sql:query var="rs" dataSource="jdbc/OracleDB" maxRows="${mrow}" startRow="${srow}">
     select dept_name, year, student_id, name
     from   Student join Department using (Dept_id)
     where  student_id =?
     <sql:param value="${param.hb}" />
</sql:query>

<sql:query var="rs1" dataSource="jdbc/OracleDB">
     select Course_id, title, c_number, grade 
     from   SG_Scores  join Course  using (Course_id)
     where  student_id =?
     <sql:param value="${param.hb}" />
</sql:query>

<html>
<head>
<title>성적 조회 화면</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<table  border="1" align="center">
   <tr  border="1" align="center">
      <td><b>개 인 별 성 적 표 </b></td>
   </tr>
</table><br>
<table  border="1" align="center">
   <tr border="1" align="center">
      <th>학과</th>
      <th>학년</th>
      <th>학번</th>
      <th>성명</th>
   </tr>
   <c:forEach items="${rs.rows}" var="rs" >	
   <tr border="1" align="center">
      <td>${rs.dept_Name}</td>
      <td>${rs.year}</td>
      <td>${rs.student_Id}</td>
      <td>${rs.name}</td>
   </tr>
   </c:forEach>
</table><br>

<table border="1" align="center">
   <tr>
      <th>순번</th>
      <th>과목번호</th>
      <th>과목명</th>
      <th>학점</th>
      <th>등급</th>
   </tr>

   <c:set var="sno" value="${rs1.rowCount}" /> 
   <c:set var="sum_Avg" value="0.00" /> 
   <c:forEach items="${rs1.rows}" var="rs1" varStatus="status">
   <tr border=1>
      <td align=center>${status.count}</td>
      <td align=center>${rs1.course_Id}</td>
      <td>${rs1.title}</td>
      <td align=center>${rs1.c_Number}</td>
      <td>${rs1.grade}</td>
   </tr>
<c:choose>
  <c:when test='${rs1.grade == "A+"}'><c:set var="avg" value="4.5"/></c:when>
  <c:when test='${rs1.grade == "A "}'><c:set var="avg" value="4.0"/></c:when>
  <c:when test='${rs1.grade == "B+"}'><c:set var="avg" value="3.5"/></c:when>
  <c:when test='${rs1.grade == "B "}'><c:set var="avg" value="3.0"/></c:when>
  <c:when test='${rs1.grade == "C+"}'><c:set var="avg" value="2.5"/></c:when>
  <c:when test='${rs1.grade == "C "}'><c:set var="avg" value="2.0"/></c:when>
  <c:when test='${rs1.grade == "D+"}'><c:set var="avg" value="1.5"/></c:when>
  <c:when test='${rs1.grade == "D "}'><c:set var="avg" value="1.0"/></c:when>
  <c:when test='${rs1.grade == "F "}'><c:set var="avg" value="0.0"/></c:when>
</c:choose>
   <c:set var="sum_Number" value="${sum_Number + rs1.c_Number}" />
   <c:set var="sum_Avg" value="${sum_Avg + (avg * rs1.c_Number )}" />
</c:forEach>
</table><br>
<table border="1" align="center">
   <tr>
       <td>총취득과목수</td>
       <td>[${sno}] 과목</td>
   </tr>
   <tr>
      <td>총취득학점수</td>
      <td>[${sum_Number}] 학점</td>
   </tr>
   <tr>
      <td>전체평균평점</td>
      <td>[<fmt:formatNumber value="${sum_Avg div sum_Number}" pattern=".00"/>] 점</td>
   </tr>
</table>
</body>
