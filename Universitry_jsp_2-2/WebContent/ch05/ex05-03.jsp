<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex05-02.jsp												 --%>
<%--  작성일			: 2020/09/27 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%-- 출력버퍼 크기 10kb로 변경 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="10kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out 내장객체 예제</title>
</head>
<body>
	<%-- 제목출력 --%>
	<h4>out 내장객체 예제</h4>
	<%-- 버퍼에대한 정보 를변수에담은뒤 출력 --%>
	<%
		int total = out.getBufferSize();
		int unused = out.getRemaining();
		out.println(" 출력버퍼 크기: " + total + "Byte<br>");
		out.println("이용가능  버퍼:" + unused + "Byte<br>");
		out.println("사용한     버퍼: " + (total - unused) + "Byte");
	%>
</body>
</html>