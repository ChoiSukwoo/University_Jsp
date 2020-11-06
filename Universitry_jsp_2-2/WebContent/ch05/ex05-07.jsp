<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex05-02.jsp												 --%>
<%--  작성일			: 2020/09/27 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%-- 에러발생시 error.jsp 로 이동하게 설정  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%-- 배열설정 --%>
<%	String alpha[] = { "A", "B", "C" };%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exception 내장객체 예제</title>
</head>
<body>
	<%-- 출력 --%>
	<h4>Exception 내장객체 예제</h4>
	1번째 배열: <%=alpha[5]%>

</body>
</html>