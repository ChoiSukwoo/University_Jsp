<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex05-02.jsp												 --%>
<%--  작성일			: 2020/09/27 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response 내장객체 예제</title>
</head>
<body>
	<%-- 제목출력 --%>
	<h4>response 내장객체 예제</h4>
	<%-- 다음 페이지로 이동 --%>
	<%response.sendRedirect("../ch04/ex04-01.jsp"); %>
</body>
</html>