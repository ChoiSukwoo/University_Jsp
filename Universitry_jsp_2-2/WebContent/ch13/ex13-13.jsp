<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSTL fmt:dateNumber Tag</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>" />
<table border=1>
<tr>
   <th colspan=4>날짜형 형식 변환 예제</th>
</tr>
<tr align=center>
   <td colspan=2>날짜  데이터 ==></td>
   <td colspan=2>${now}</td>
</tr>
<tr>
   <td>1.시간  타입</td>
   <td><fmt:formatDate type="time" value="${now}" /></td>
   <td>2.날짜 타입</td>	
   <td><fmt:formatDate type="date" value="${now}" /></td>
</tr>
<tr>
   <td>3.날짜와 시간  타입</td>
   <td><fmt:formatDate type="both" value="${now}" /></td>
   <td>4.날짜와 시간  (short)</td>	
   <td><fmt:formatDate type="both" 
        dateStyle="short" timeStyle="short" value="${now}" /></td>
</tr>
<tr>
	<td>5.날짜와 시간  (medium)</td>
	<td><fmt:formatDate type="both" 
         dateStyle="short" timeStyle="medium" value="${now}" /></td>
    <td>6.날짜와 시간  (long)</td>	
	<td><fmt:formatDate type="both" 
         dateStyle="short" timeStyle="long" value="${now}" /></td>
</tr>
<tr>
   <td>7.날짜와 시간  (full)</td>	
   <td><fmt:formatDate type="both" 
        dateStyle="short" timeStyle="full" value="${now}" /></td>
   <td>8.사용자 지정 형식</td>
   <td><fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /></td>
</tr>
</table>
</body>
</html>
