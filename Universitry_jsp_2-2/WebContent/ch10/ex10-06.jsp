<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>simpleController ����(1)</title>
</head>
<body>
	<h4>simpleController ����(1)</h4>
	<%= request.getParameter("year") %> ���� �������̸�
	<%=request.getAttribute("result") %>
</body>
</html>