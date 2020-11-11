<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교수번호 입력 화면</title>
<script language="JavaScript">
   function In_Check() {
      if (document.proinput.professor_id.value == "") {
          alert("담당교수를 입력하세요!!!");
          return;
       }
       document.proinput.submit();
   }
</script>
</head>
<body>
  <center><h4> 교수별 개설과목 조회 입력 화면 </h4>
  <form method="post" action="ex11-05-1.jsp" name="proinput">
  <table border="1" cellspacing="1">
     <tr>
        <td>조회할 담당교수번호 : </td>
        <td><input type="text" name="professor_id" size=5></td>
     </tr>
     <tr> 
        <td colspan=2 align="center"> 
          <input type="button" name="confirm" value="조회" OnClick="In_Check()">
        <input type="reset" name="reset" value="취   소"></td>
     </tr>
  </table>
  </form></center>
</body>
</html>
