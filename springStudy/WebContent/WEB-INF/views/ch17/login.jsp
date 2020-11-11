<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 입력 화면</title>
</head>
<body>
<div align="center" class="body">
<h3> 로그인 입력 화면</h3>
<form:form commandName="userVO" method="POST">
<table width="250" border="1">
   <tr>
      <td>아 이 디 :</td>
      <td><form:input path="m_uid"  /></td>
   </tr>
   <tr>
      <td>비밀번호 :</td>
      <td><form:password path="m_pwd" /></td>
   </tr>
   <tr>
      <td colspan="2" align="center"> <input type="submit" value="로그인">
   </tr>
</table>
</form:form></div>
</body>
</html>
