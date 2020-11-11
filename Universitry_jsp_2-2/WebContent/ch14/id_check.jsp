<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:query var="rs1" dataSource="jdbc/OracleDB">
     select m_uid from member where m_uid=?
     <sql:param value="${param.uid}" />
</sql:query>
<c:forEach var="rs" items="${rs1.rows}">
     <c:set var="id" value="${rs.m_uid}" />
</c:forEach>
<c:choose>
    <c:when test="${param.uid == id}">${id} 사용불가: 아이디 중복!!!<p> 
      <c:url value="img/warning.gif" var="img1"/>
      <img src="${img1}" width="100" height="100">
      <a href="JavaScript:window.close()">닫기</a>
   </c:when>
   <c:otherwise>${param.uid}사용가능합니다!!!<p>
      <c:url value="img/cong.gif" var="img2"/>
      <img src="${img2}" width="100" height="100">
      <a href="JavaScript:window.close()">계속하기</a> 
   </c:otherwise>
</c:choose>
