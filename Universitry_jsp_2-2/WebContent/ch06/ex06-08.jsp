<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력과 폼[2]</title>
</head>
<body>
	<h4>
		<form method = post  action = ex06-09.jsp>
		1.성별을 입력하세요.[Radio 버튼]<br>
			<input type="radio" name = sex value ="남자" checked>남자
			<input type="radio" name = sex value ="여자" >여자<br>
		1.좋아하는 과목을 선택하시오.[Checkbox 버튼]<br>
			<input type="checkbox" name = subj value ="SQL응용" checked>SQL응용<br>
			<input type="checkbox" name = subj value ="DB개발도구" >DB개발도구<br>
			<input type="checkbox" name = subj value ="JSP" checked>JSP<br>
			<input type="checkbox" name = subj value ="오라클실무" >오라클실무<br>
			<input type="checkbox" name = subj value ="ERP구축 ">ERP구축<br>
			<input type="submit" value="확인"> 
			<input type="submit" value="취소">

		</form>
	</h4>

</body>
</html>