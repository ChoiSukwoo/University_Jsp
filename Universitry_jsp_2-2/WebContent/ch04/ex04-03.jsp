<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex04-03.jsp												 --%>
<%--  작성일			: 2020/09/16 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! String str = "JSP Web Programming"; %>
<%!int total = 0;%>
<%!
public int sum() {
	int result = 0;
	for (int i =1;i<=10;i++){
		result = result +i;
	}
	return result;
}
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 선언부와 표현식 예제</title>
</head>
<body>
<%= str%><br>
<%= total %><br>
<%= "1부터 10까지합은 " + sum() + "입니다." %><br>
<%= true %><br>
<%= new char[] {'a','b','c'} %><br>
<%= new java.util.Date() %><br>
</body>
</html>