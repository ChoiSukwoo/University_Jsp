<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex04-02.jsp												 --%>
<%--  작성일			: 2020/09/16 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 지시어 예제</title>
</head>
<body>
	이 웹 페이지는 "ex04-01.jsp"를 include 하는 예제립니다.
	<p>
		<%@ include file ="ex04-01.jsp" %>		<br>

		------------		<br>

		<%@ include file ="ex04-03.jsp" %>		<br>
</body>
</html>