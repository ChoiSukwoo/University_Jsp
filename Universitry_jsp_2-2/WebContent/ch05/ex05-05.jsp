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
<title>application 내장객체 예제</title>
</head>
<body>
	<h4>application 내장객체 예제</h4>
	<%-- 서버정보 출력 --%>
	<%
		String serverInfo = application.getServerInfo();
		String realPath = application.getRealPath("/");
	%>
	Server:  <%=serverInfo%> <br> 
	Path of Document:  <%=realPath%>
</body>
</html>