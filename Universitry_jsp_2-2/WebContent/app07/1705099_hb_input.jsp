<!-- 검색프로그램  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 학번이 비어있는지 확인 -->
<script language="Javascript">
function check(){
	if(document.find_score.Student_ID.value ==""){
		alert("학과 코드를 입력하세요!!");
		return
	}
	document.find_score.submit();
}	
</script>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학번 조회 폼</title>
</head>
<body>
	<center>
		<h1 id="title">학번 조회기</h1>
		<div class="border">
			<!-- 학번을 조회하기 위한 폼 -->
			<form method="post" action="1705099_hb_view.jsp" name="find_score">
				<div class="infoText">학번</div>
				<!--조회할 학번을 입력받을 텍스트 -->
				<input class="inputText" type="text" name="Student_ID" size="10">
				<div class="half_button_form">
					<!-- 입력완료시 check()함수를 실행하여 조회 -->
					<input type="button" class="half_Button" value="조회"	 onclick="check()"/>
					<!-- 작성된 내용을 지워버림 -->
					<input type="reset" class="half_Button" value="취소" />
				</div>
			</form>
			
			<!-- 관리자 모드 창으로 이동하기 위한 폼 -->
			<form method="post" action="app07-01.jsp" name="openManager">
				<input type="submit" class="full_Button" value="관리자 모드">
			</form>
		</div>
	</center>
</body>
</html>