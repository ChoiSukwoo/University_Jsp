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
<title>Insert title here</title>
</head>
<body>
	<h4>session 내장객체 예제(2)</h4>
	당신의 세션 ID는
	<%-- 받아온 id 값을 출력 --%>
	<%=session.getAttribute("id")%>입니다.

</body>
</html>