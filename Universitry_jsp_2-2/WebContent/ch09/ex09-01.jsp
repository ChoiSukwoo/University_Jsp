<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키설정 예제</title>

<script language="JavaScript">
	function In_check(){
		if(document.login.id.value ==""){
			alert("아이디를 입력해 주세요");
			return
		}	
		if(document.login.pw.value ==""){
			alert("비밀번호를 입력해 주세요");
			return
		}
		document.login.submit();
	}
</script>

</head>
<body>
	<center>
		<h4>로그인 입력 화면</h4>

		<form method="post" atction="ex09-01-1.jsp" name="login">
			<table border="1" cellspacing=1>
				<tr>
					<td>아이디 : </td>
					<td><input type = "text" name="id" size = 17></td>
				</tr>
				<tr>
					<td>비밀번호 : </td>
					<td><input type = "password" name="pw" size = 17></td>
				</tr>
				<tr>
					<td colspan = "2" align="center">
						<input type = "button" value =" 로그인" OnClick="In_check()">
						<input type = "reset" value =" 취 소" >
					</td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>