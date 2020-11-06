<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력폼 [3]</title>
<center>
	<h4>보고싶은 영화제목 선택하기</h4>
	1.보고싶은 영화르 선택해 주세요.<br> (여러 제목을 선택할 경우에는 ctrl키를 사용하세요)<br>
	<form method=post action=ex06-06.jsp>
		<select name=movie size=9 multiple>
			<option value="설국열차" selected>설국열차
			<option value="레드 : 더 레전드">레드 : 더 레전드
			<option value="친구">친구
			<option value="감시자들">감시자들
			<option value="피아니스트">피아니스트
			<option value="대부">대부
			<option value="톰보이">톰보이
			<option value="조조 레빗">조조 레빗
			<option value="페인 앤 글로리">페인 앤 글로리
		</select>
		<p>
			<input type="submit" value="확인"> <input type="reset"
				value="취소">
		</p>
	</form>
	
</center>
</head>
<body>

</body>
</html>