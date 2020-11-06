<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex05-02.jsp												 --%>
<%--  작성일			: 2020/09/27 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>

<%-- session = "true" 로 변경 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session 내장객체 예제(1)</title>
</head>
<body>

	<%-- 제목출력 --%>
	<h4>session 내장객체 예제(1)</h4>
	아이디를 입력하세요...

	<%-- 폼을 이용해 아이디 입력받기 --%>
	<form method="post">
		<table>
			<tr>
				<td>아이디 : <input type="text" name="id"> <input
					type="submit" name="로그인" value ="확인">
				</td>
			</tr>
		</table>

		<%-- id인풋의 값이 널이 아닐시 user에 id의 값을 담고 해당페이지로이동 --%>
		<%
			String user = "";
			if (request.getParameter("id") != null && request.getParameter("id") != "") {
				user = request.getParameter("id");
				session.setAttribute("id", user);
				response.sendRedirect("ex05-04-1.jsp");
			}
		%>
	</form>
	
</body>
</html>