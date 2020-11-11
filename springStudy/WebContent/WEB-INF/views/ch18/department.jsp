<%@ page language="java" contentType="text/html; charset=utf-8" 
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" ...">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MyBatis-Department</title>
<script type="text/javascript">
function submitCheck() {
   searchForm.submit();
}
function insertPopup() {
   popupForm.deptid.value = "";
   window.open("", "pop", "width=550, height=350");
   popupForm.action = "/department/selectDepartment.do";
   popupForm.target = "pop";
   popupForm.submit();
}
function updatePopup(deptid) {
   popupForm.deptid.value = deptid;
   window.open("", "pop", "width=550, height=350");
   popupForm.action = "/department/selectDepartment.do";
   popupForm.target = "pop"; 
   popupForm.submit();
}
</script>
</head>
<body>
<div><table border="0" cellpadding="1" cellspacing="1">
<tr>
    <th width="500"><h4>학과테이블[Spring]</h4></th>
</tr>
</table></div>
<div ><table border="1">
<tr>
    <th width="80px" >학과코드</th>
    <th width="180px">학과명</th>
    <th width="80px" >전화번호</th>
    <th width="110px" >상세보기</th>
</tr>
<c:if test="${empty departmentList}">
<tr>
    <td colspan="5" align="center">데이터가 없습니다.</td>
</tr>
</c:if>
<c:forEach items="${departmentList}" var="row">
<tr>
    <td align="center" >${row.deptid}</td>
    <td align="left"   >${row.deptname}</td>
    <td align="center" >${row.depttel}</td>
    <td align="center" ><a href="#" onclick= "updatePopup('${row.deptid}');"><input type="button" value="[ 수정/삭제 ]"/></a></td>
</tr>
</c:forEach>
<tr>
   <td colspan="3" align="center">처리할 버튼을 선택하세요.</td>
   <td align="center"><input type="button" value="[ 등록 ]" onclick="javascript:insertPopup()"/></td>
</tr>
</table></div>
<form id="popupForm" method="post" >
   <input type="hidden" name="deptid" />
</form>
<p></p><div><!-- search -->
<form id="searchForm" name="searchForm" method="post" action="/department/listDepartment.do">
<div><table border="1" cellpadding="1" cellspacing="1">
   <tr>
  <th width="80px">학 과 명</th>
  <td><input type="text" id="deptname"  name="deptname" size="49" value="${paramName}" /></td>
  <td><input type="button" id="btnSearch" name="btnSearch" onclick="javascript:submitCheck()" value="검색"/></td>
    </tr>
</table></div>
</form></div><br/><br/>
</body>
</html>
