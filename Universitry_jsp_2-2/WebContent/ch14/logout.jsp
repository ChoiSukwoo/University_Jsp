<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 로그아웃 실행 페이지 -->
<c:set var="id" value="${uid}" scope="session"/>
<c:choose>
   <c:when test="${id == null}"><c:redirect url="login.jsp" /></c:when>
   <c:otherwise>
	<c:remove var="uid" scope="session" />
	<c:out value="로그아웃 되었습니다."/><br>
	<c:url value="img/logout.gif" var="img1"/>
          <img src="${img1}" width="100" height="100">  
   </c:otherwise>
</c:choose>
