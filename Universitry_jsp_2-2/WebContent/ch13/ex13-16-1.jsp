<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="cgrade" value="F " />
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:choose>
 <c:when test='${param.score < 60}'><c:set var="cgrade" value="F "/></c:when>
 <c:when test='${param.score < 65}'><c:set var="cgrade" value="D "/></c:when>
 <c:when test='${param.score < 70}'><c:set var="cgrade" value="D+"/></c:when>
 <c:when test='${param.score < 75}'><c:set var="cgrade" value="C "/></c:when>
 <c:when test='${param.score < 80}'><c:set var="cgrade" value="C+"/></c:when>
 <c:when test='${param.score < 85}'><c:set var="cgrade" value="B "/></c:when>
 <c:when test='${param.score < 90}'><c:set var="cgrade" value="B+"/></c:when>
 <c:when test='${param.score < 95}'><c:set var="cgrade" value="A "/></c:when>
 <c:otherwise><c:set var="cgrade" value="A+" /></c:otherwise>
</c:choose>

<sql:update dataSource="jdbc/OracleDB" var="result">
        INSERT INTO SG_Scores
        (student_id, course_id, score, grade) 
        VALUES
        (?,?,?,?)
        <sql:param value="${param.student_id}"/>
        <sql:param value="${param.course_id}"/>
        <sql:param value="${param.score}"/>
        <sql:param value="${cgrade}"/>
</sql:update>
<c:out value="${result}" /> 행이 추가되었습니다. 
