<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유효성 검사</title>
</head>
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
<body>
	<center>
		로그인 입력 화면
		<form method=post action=ex08-02-1.jsp name="login">
			<table border="1" cellspacding="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" size=15></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="pw" size=15></td>
				</tr>
				<tr align="center">
					<td colspan="4">
						<input type="button" value="로그인" onclick="In_check()"> 
						<input type="reset" value="취 소">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>