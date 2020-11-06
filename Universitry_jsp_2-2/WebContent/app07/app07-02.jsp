<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="Javascript">
function check(){
	if(document.inputRecord.courseId.value ==""){
		alert("과목코드를 입력하세요!!");
		document.inputRecord.courseId.focus();
		return
	}
	if(document.inputRecord.TitleName.value==""){
		alert("과목명을 입력하세요");
		document.inputRecord.TitleName.focus()
		return
	}
	if(document.inputRecord.CNumber.value==""){
		alert("학점수를 입력하세요!!");
		document.inputRecord.CNumber.focus()
		return
	}
	document.inputRecord.submit();
}

</script>

<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 id="title">레코드 추가</h1>
		<div class="border">
			<form method="post" action="app07-02-1.jsp" name="inputRecord">
				<div class="infoText">과목코드</div>
				<input type="text" class="inputText"  placeholder="과목코드" name="courseId">
				<div class="infoText">과목명</div>
				<input type="text" class="inputText"  placeholder="과목명" name="TitleName">
				<div class="infoText">학점수</div>
				<input type="text" class="inputText" placeholder="학점수" name="CNumber">
				<div class="infoText">담당교수번호</div>
				<input type="text" class="inputText"  placeholder="담당교수번호" name="ProfessorID">
				<div class="infoText">추가수강료</div>
				<input type="text" class="inputText"  placeholder="추가수강료" name="CourseFees">


				<div class="half_button_form">
					<!-- 입력완료시 check()함수를 실행하여 조회 -->

					<input type="button" class="half_Button" value="추가"
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