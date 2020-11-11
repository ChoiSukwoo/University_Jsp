<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h4> url 태그 예제 </h4>
<c:url var="url1" value="https://www.google.co.kr/" />
<c:url var="url2" value="http://localhost:8080/jspStudy/ch13/logo.jsp" />
<c:url var="url3" value="http://localhost:8080/jspStudy/login.jsp">
   <c:param name="id" value="jskang"/>
</c:url>
<ul>
   <li>url1 = ${url1}
   <li>url2 = ${url2}
   <li>url3 = ${url3}
</ul>
