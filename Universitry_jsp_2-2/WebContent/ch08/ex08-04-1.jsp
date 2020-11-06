<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<h4>[ex08-04.jsp에서 넘어온 프로그램]</h4>
	<hr>이프로그램은 "ex08-04-1.jsp"입니다.<br>
	<hr>현재 웹 브라우저의 웹 페이지는<br>
	<b><%=request.getParameter("url") %></b>
	에서 forward 되엇습니다.<br>
	<hr><b><%=request.getParameter("memo") %></b>
	라는 메세지가 전달되엇습니다.
</body>
</html>