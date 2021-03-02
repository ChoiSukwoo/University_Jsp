<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학과정보입력화면</title>
</head>
<body>
  <center><h3>학과정보 입력 화면</h3>
  <form method=post action="/ch10/DeptServlet">
  <table border="1">
     <tr>
        <td>학과코드</td>
        <td><input type=text name=dept_id></td>
     </tr>
      <tr>
        <td>학 과 명</td>
        <td><input type=text name=dept_name></td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td><input type=text name=dept_tel></td>
     </tr>
     <tr>
        <td colspan=2 align=center>
            <input type=submit value=전송>
            <input type=reset value=취소></td>
     </tr>
   </table>
   </form></center>
</body>
</html>
