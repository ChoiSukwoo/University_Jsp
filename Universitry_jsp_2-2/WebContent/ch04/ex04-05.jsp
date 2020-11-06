<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex04-05.jsp												 --%>
<%--  작성일			: 2020/09/16													 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"
	import=" java.util.Date,  java.text.SimpleDateFormat"%>
	
<%
	/* Date 객체 생성 및 날짜 출력 형식 지정  */
	Date d = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyy/MM/dd a hh:mm:ss");
%>


<!-- Html의 컨텐트 주석문 입니다 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 날자와 시간을 출력 -->
	Today is :<%=d%><p>
		오늘은 :<%=sf.format(d)%>
		입니다. 1705099 (최석우)
</body>
</html>