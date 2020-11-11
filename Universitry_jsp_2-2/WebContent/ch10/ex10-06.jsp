<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>simpleController 예제(1)</title>
</head>
<body>
	<h4>simpleController 예제(1)</h4>
	<%= request.getParameter("year") %> 년제 재학중이면
	<%=request.getAttribute("result") %>
</body>
</html>