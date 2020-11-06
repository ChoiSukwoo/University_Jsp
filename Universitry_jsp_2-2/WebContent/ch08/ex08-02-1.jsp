<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  import ="ch08.LoginBeen"%>
    <jsp:useBean id = "test" class="ch08.LoginBeen" scope="page"/>
    <jsp:setProperty name ="test" property ="id"/>
    <jsp:setProperty name ="test" property ="pw"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바빈 예제</title>
</head>
<body>
	<h3>로그인 예제 </h3>
	아 이 디 : <jsp:getProperty name="test" property="id"/><p>
	비밀번호 : <jsp:getProperty name="test" property="pw"/><p>
</body>
</html>