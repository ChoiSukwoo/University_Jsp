<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("UTF-8") ;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4>성별과 좋아하는 과목은</h4>

	<%
		String sex = request.getParameter("sex");
		String[] chk = request.getParameterValues("subj");
	%>
	
	당신은 <b><%=sex %>이고,</b><p></p>
	좋아하는 과목으로 <br><b>
	<%
		for(int i=0;i<chk.length;i++){		
	%>
		<%= "-" %>
		<%= chk[i]%><br>
	<%} %>
	</b><br>으로 총 <%=chk.length %>과목을 선택하셧군요.


</body>
</html>