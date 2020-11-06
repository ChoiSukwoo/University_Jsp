<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 무결성 체크 -->
<script language="Javascript">
function check(){
	if(document.removeRecord.courseId.value ==""){
		alert("삭제할 과목코드를 입력하세요!!");
		document.removeRecord.courseId.focus();
		return
	}
	document.removeRecord.submit();
}

</script>

<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 id="title">레코드 삭제</h1>
		<div class="border">

			<form method="post" action="app07-03-1.jsp" name="removeRecord">
				<div class="infoText">삭제할 과목코드를 입력하세요</div>
				<input type="text" class="inputText" ; placeholder="과목코드" name="courseId">


				<div class="half_button_form">
					<!-- 입력완료시 check()함수를 실행하여 조회 -->
					<input type="button" class="half_Button" value="삭제"
						onclick="check()" />
					<!-- 작성된 내용을 지워버림 -->
					<input type="reset" class="half_Button" value="취소" />
				</div>

				<input type="button" class="full_Button" value="돌아가기"
					Onclick="javascript:history.back(-1)">

			</form>
		</div>
	</center>
</body>
</html>