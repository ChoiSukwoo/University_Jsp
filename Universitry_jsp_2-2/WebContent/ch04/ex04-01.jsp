<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex04-01.jsp												 --%>
<%--  작성일			: 2020/09/16 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%@page import="javax.xml.crypto.Data" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import  = " java.util.Date,  java.text.SimpleDateFormat" %>
<%
	Date d = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyy/MM/dd a hh:mm:ss");

%>    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지시어 예제</title>
</head>
<body>
 	Today is 	:<%=d %><p>
 	오늘은 		:<%=sf.format(d)%> 입니다.
 	1705099 (최석우)
</body>
</html>