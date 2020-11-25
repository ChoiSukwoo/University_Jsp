<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정 폼1</title>
<script language="Javascript">
	function In_Check() {
		if (document.inform.dept_id.value = "") {
			alert("학과 코드를 입력하세요!!");
			return;
		}
		document.inform.submit();
	}
</script>
</head>
<body>
	<center>
		<h4>수정할 학과코드를 입력하세요</h4>
		<form method="post" action="app12-03-1.jsp" name="inform">
			<table width="200" border="1" sellspacing="0" cellpading="5">
				<tr>
					<td align="center">학과코드</td>
					<td><input type="text" name="dept_id" size="10"></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="button" name="modify" value="수정" Onclick="In_Check();">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>