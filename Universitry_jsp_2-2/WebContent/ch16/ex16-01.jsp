<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty courselist}">데이터가  없습니다.</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ...
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Course 테이블  출력 [뷰]</title>
</head>
<body>
   <center>
   <table border="1" cellspacing="1">
     <tr>
       <th colspan="6">Course 테이블 [뷰]</th>
     </tr>
     <tr>
         <th>순번</th>
         <th>과목코드</th>
         <th>과목명</th>
         <th>학점수</th>
         <th>교수번호</th>
         <th>추가수강료</th>
     </tr>
     <c:forEach items="${courselist}" var="row" varStatus="i">
     <tr>
         <td>${i.count}</td>
         <td>${row.course_id}</td>
         <td>${row.title}</td>
         <td>${row.c_number}</td>
         <td>${row.professor_id}</td>
         <td>${row.course_fees}</td>
     </tr>
     </c:forEach> 
   </table></center>
</body>
</html>
