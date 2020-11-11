<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>테이블 행 추가 폼</title>
<script language="JavaScript">
   function In_Check() {
      if(document.scorefrm.student_id.value == "") {
         alert("학번을 입력하세요!!!");
         return;
      }
      if(document.scorefrm.course_id.value == "") {
         alert("과목코드를  입력하세요!!!");
         return;
      }
      document.scorefrm.submit();
   }
</script>
</head>
<body>
 <center><h4> 성적 입력 화면 </h4>
 <form method="post" action="ex13-16-1.jsp" name="scorefrm">
 <table border="1" cellspacing="1">
    <tr>
       <td>학번 </td>
       <td><input type="text" name="student_id"></td></tr>
    <tr>
       <td>과목코드</td>
       <td><input type="text" name="course_id"></td></tr>
    <tr>
       <td>성적</td>
       <td><input type="text" name="score"></td></tr>
     <tr align="center"> 
        <td colspan=2> 
          <input type="button" name="confirm" value="입력" OnClick="In_Check()">
        <input type="reset" name="reset" value="취   소">
        </td></tr>
</table>
</form></center>
</body>
</html>
