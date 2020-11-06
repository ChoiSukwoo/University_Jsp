<%-- 에러 발생시 해당 페이지로 오게 설정 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exception 내장객체 예제</title>
</head>
<body>
	<%-- 오류발생시 출력 --%>
	<h4>오류가 발생하였네요...</h4>
	<%=exception.toString()%>
</body>
</html>