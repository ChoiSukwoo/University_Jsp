<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- admin_login에서 받아온 값을 이용해 관리자랑 비교확인 -->
<c:set var="aid" value="admin" />
<c:set var="apw" value="12345" />
<c:if test="${param.aid  != aid}"><c:redirect url="admin_login.jsp" /></c:if>
<c:if test="${param.apwd != apw}"><c:redirect url="admin_login.jsp" /></c:if>
<c:out value="관리자 로그인 성공!!!"/><p>
<c:out value="메뉴에서 회원명부를 출력할 수 있습니다."/>  
<c:set var="aid" value="${aid}" scope="session" />
