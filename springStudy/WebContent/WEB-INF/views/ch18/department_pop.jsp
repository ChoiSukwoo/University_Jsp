<%@ page language="java" contentType="text/html; charset=utf-8" 
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" ...">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MyBatis-Department-Popup</title>
<script type="text/javascript">
function insertData() {
   if(!validateForm()) return;
   if(confirm('등록 할까요?')) {
      deptForm.action = "/department/insertDepartment.do";
      deptForm.submit();
   }
}
function updateData() {
   if(!validateForm()) return;
   if(confirm('수정 할까요?')) {
      deptForm.action = "/department/updateDepartment.do";
      deptForm.submit();
   }
}
function deleteData() {
   if(confirm('삭제 할까요?')) {
      deptForm.action = "/department/deleteDepartment.do";
      deptForm.submit();
   }
}
function closeWindow() {
   window.close();
}
function validateForm() {
   if(deptForm.deptid.value == "") {
      alert('학과코드를 입력해주세요.');
      return false;
   }
   if(deptForm.deptname.value == "") {
      alert('학과명을 입력해주세요.');
      return false;
   }
   return true;
}
function init() {
   if("${mode}" == "insert") {
      document.getElementById("Insert").style.display="block";
      document.getElementById("Update").style.display="none";
      document.getElementById("Delete").style.display="none";
   } else {
      document.getElementById("Insert").style.display="none";
      document.getElementById("Update").style.display="block";
      document.getElementById("Delete").style.display="block";
   }
}
</script>
</head>
<body id="popwrap" onload="init()">
<p></p><div>
<form id="deptForm" name="deptForm" method="post" action="" >
<table border="1">
<thead>
<tr>
   <td colspan="2" align="center"><h4>학과 테이블 팝업창 [Spring] </h4></td>
</tr>
</thead>
<tbody>
<tr>
   <th width="100"><span class="required">*</span>학과코드</th>
   <td width="300"><input type="text" id="deptid"  name="deptid" size="52" value="${DeptVO.deptid}" /></td>
</tr>
<tr>
    <th><span class="required">*</span>학과명</th>
    <td><input type="text" id="deptname"  name="deptname" size= "52" value="${DeptVO.deptname}" /></td>
</tr> 
<tr>
     <th><span class="required">*</span>전화번호</th>
     <td><input type="text" id="depttel" name="depttel" size="52" value="${DeptVO.depttel}" /></td>
</tr>
</tbody>
</table>
</form>
</div>
<div><p></p>
<table width="400" border="0">
<tr>
   <td>
	<input type="button" id="Insert" value="등록" onclick= "javascript:insertData();"/></td>
   <td>
	<input type="button" id="Update" value="수정" onclick= "javascript:updateData();"/></td>
   <td>
   <input type="button" id="Delete" value="삭제" onclick= "javascript:deleteData();"/></td>
   <td>
   <input type="button" id="Cancel" value="닫기" onclick= "javascript:closeWindow();"/></td>
</tr>
</table></div>
</body>
</html>
