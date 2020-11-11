<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적 조회 입력 화면</title>
<script language="JavaScript">
   function In_Check() {
      if(document.hbform.hb.value == "") {
         alert('학번을 입력하세요!!!');
         return;
      }
      document.hbform.submit();
   }
</script>
</head>
<body>
 <center>
 <form method="post" action="ex13-15-1.jsp" name="hbform">
 <table border="1">
   <tr>
      <td colspan=2 align="center">성적 조회 입력 화면</td>
   </tr>
   <tr>
      <td align="center">조회할 학번 </td>
      <td><input type="text" name="hb" size="10"></td>
   </tr>
   <tr align="center">
      <td colspan="2"> 
      <input type="button" name="modify" value="조회" OnClick= "In_ Check()">
      <input type="reset" value="취 소"></td>
   </tr>
 </table>
 </form></center>
</body>
</html>
