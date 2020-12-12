<!-- login_ok -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- core와 sql 사용 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!-- 변수 설정후 sql쿼리를 실행시킨다음  param.pwd == mpwd 이 되는가를 확인하여 로그인 여부 결정-->
<c:set var="srow" value="0" />
<c:set var="mrow" value="1" />
<sql:query var="rs" dataSource="jdbc/OracleDB" maxRows="${mrow}" startRow="${srow}">
    select m_uid, m_pwd from member where m_uid=?
    <sql:param value="${param.uid}" />
</sql:query>
<c:forEach items="${rs.rows}" var="rs">
	<c:set var="mpwd" value="${rs.m_pwd}" />
</c:forEach>

<c:choose>
	<c:when test="${param.pwd == mpwd}">로그인 성공!!!<p>
			<!—sql의 매개변수로 uid를 받아와 설정 -->
			<sql:update dataSource="jdbc/OracleDB">
             update  member 
             set     m_visit=m_visit+1, m_lastvisit=sysdate
             where  m_uid = ?
            <sql:param value="${param.uid}" />
			</sql:update>
			<c:set var="uid" value="${param.uid}" scope="session" />
			<c:url value="img/love.gif" var="ok1" />
			<img src="${ok1}" width="100" height="100">
	</c:when>
	<c:otherwise>로그인 실패!!!<p>
			<c:url value="img/warning.gif" var="ok2" />
			<img src="${ok2}" width="100" height="100">
	</c:otherwise>
</c:choose>
