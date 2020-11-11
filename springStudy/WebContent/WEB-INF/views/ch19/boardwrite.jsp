<%@ page language="java" contentType="text/html; charset=utf-8" 
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "...>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>springBoard</title>
<script type="text/javascript">
function insertData() {
   if(!validateForm()) return;
   if(confirm('등록 할까요?')) {
      inputForm.action = "/board/insertBoard.do";
      inputForm.submit();
   }
}
function replyData() {
   if(!validateForm()) return;
   if(confirm('답변 할까요?')) {
      inputForm.action = "/board/replyBoard.do";
      inputForm.submit();
   }
}
function closeWindow() {
   window.close();
}
function validateForm() {
   if(inputForm.bname.value == "") {
      alert('등록자를 입력하세요.');
      return false;
   }
   if(inputForm.bemail.value == "") {
      alert('이메일을  입력하세요.');
      return false;
   }
   if(inputForm.btitle.value == "") {
      alert('제목을 입력하세요.');
      return false;
   }
   if(inputForm.bcontent.value == "") {
      alert('내용을 입력하세요.');
      return false;
   }
   return true;
}
function init() {
   if("${mode}" == "reply") {
      document.getElementById("bInsert").style.display="none";
      document.getElementById("bReply").style.display="block";
   } else {
      document.getElementById("bInsert").style.display="block";
      document.getElementById("bReply").style.display="none";
   }
}
</script>
</head>
<body id="popwrap" onload="init()">
<div><p><center>Spring MVC 자유게시판</p></center></div>
<div>
<form id="inputForm" name="inputForm" method="post" action="" >
<input type="hidden" id="bid"  name="bid"  value="${bbsVO.bid}"/>
<input type="hidden" id="bref" name="bref" value="${bbsVO.bref}"/>
<input type="hidden" id="bstep" name="bstep" value="${bbsVO.bstep}"/>
<input type="hidden" id="border" name="border" value="${bbsVO.border}"/> 
<table width="550" border="1">
<tbody>
<tr>
<th><span class="required">*</span>등록자</th>
<td><input type="text" id="bname"  name="bname" size="52"/></td>
</tr>
<tr>
<th><span class="required">*</span>이메일</th>
<td><input type="text" id="bemail" name="bemail" size="52"/></td>
</tr>
<tr>
<th><span class="required">*</span>제목</th>
<td><input type="text" id="btitle"  name="btitle" size="52" value="${bbsVO.btitle}" /></td>
</tr>
<tr>
<td><span class="required">*</span>내용</td>
<td><textarea cols="55" rows="10" id="bcontent" name= "bcontent">${bbsVO.bcontent}</textarea></td>
</tr>
</tbody>
</table>
</form></div>
<div><p></p>
<table width="550">
<tr>
<td><input type="button" id="bInsert" value="등록" onclick= "javascript:insertData();"/></td>
<td><input type="button" id="bReply"  value="답변" onclick= "javascript:replyData();"/></td>
<td><input type="button" id="bCancel" value="닫기" onclick= "javascript:closeWindow();"/></td>
</tr>
</table></div>
</body>
</html>
