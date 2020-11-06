<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script language="Javascript">
	function In_Check(){
		if(document.deptinput.dept_id.value ==""){
			alert("학과 코드를 입력하세요!!");
			return
		}
		if(document.deptinput.dept_name.value==""){
			alert("학과 명을 입력하세요!!");
			return
		}
		document.deptinput.submit();
	}	
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
		<h3>학과 정보 입력 화면</h3>
		<form method="post" action="homework_1.jsp" name="student_info_put">
			<table border="1" ceellspacing="1">
				<tr>
					<td>학과 코드 :</td>
					<td><Input type="text" name="dept_id"></td>
				</tr>
				<tr>
					<td>학 과 명 :</td>
					<td><Input type="text" name="dept_name"></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td><Input type="text" name="dept_tel"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="button" name="confirm"
						value="등 록" onclick="In_Check()"> <input type="reset"
						name="reset" value="취 소" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>