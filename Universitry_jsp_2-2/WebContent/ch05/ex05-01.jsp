<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex05-01.jsp												 --%>
<%--  작성일			: 2020/09/27 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 내장객체 예제</title>
</head>
<body>
	<center>
		<%-- 제목 출력 --%>
		<h3>request 내장객체를 사용한 예제</h3>
		<%-- 테이블 출력 --%>
		<table border="1">
			<tr>
				<td>요청 메서드</td>
				<td><%=request.getMethod()%></td>
			</tr>
			<tr>
				<td>요청 URL</td>
				<td><%=request.getRequestURI()%></td>
			</tr>
			<tr>
				<td>프로토콜 종류</td>
				<td><%=request.getProtocol()%></td>
			</tr>
			<tr>
				<td>Server의 이름</td>
				<td><%=request.getServerName()%></td>
			</tr>
			<tr>
				<td>Server의 Port번호</td>
				<td><%=request.getServerPort()%></td>
			</tr>
			<tr>
				<td>사용자 컴퓨터의 IP주소</td>
				<td><%=request.getRemoteAddr()%></td>
			</tr>
			<tr>
				<td>사용자 컴퓨터의 이름</td>
				<td><%=request.getRemoteHost()%></td>
			</tr>
		</table>
	</center>
</body>
</html>