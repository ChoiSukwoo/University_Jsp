<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="login" value="jskang" scope="session" />
<c:set var="passwd" value="1234" />

<h4>1. 변수 선언과  출력 예제</h4>
Session : <%= session.getAttribute("login") %> <br>
Login   : <c:out value="${login}" /> <br>  
Passwd  : <c:out value="${passwd}" /> 
<c:remove var="login" scope="session" />
<h4>2. 오류메시지 출력 예제 </h4>
10 / 0 =
<c:catch var="errmsg"> <%= 10 / 0 %> </c:catch>
<c:out value="${errmsg}" />
