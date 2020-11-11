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
<title>springBoard</title>
<script type="text/javascript">
function submitCheck() {
   searchForm.submit();
}
function insertPopup() {
   popupForm.bid.value = "0";
   window.open("", "pop", "width=600, height=450");
   popupForm.action = "/board/selectBoard.do";
   popupForm.target = "pop";
   popupForm.submit();
}
function updatePopup(bid) {
   popupForm.bid.value = bid;
   window.open("", "pop", "width=600, height=450");
   popupForm.action = "/board/selectBoard.do";
   popupForm.target = "pop"; 
   popupForm.submit();
}
function gotoPage(pageNum) {
   searchForm.currPage.value = pageNum;
   searchForm.submit();
}
</script>
</head>
<body>
<center><p></p><div>
<table border="0" cellpadding="1" cellspacing="1">
<tr>
<th width="500"><h4>Spring MVC 자유게시판 </h4></th>
<th width="100">게시물 수 : </th>
<td width="50">${pageSet.dbCount}</td>
</tr>
</table></div>
<div><!-- search -->
<form id="searchForm" name="searchForm" method="post" action="/board/listBoard.do">
<input type="hidden" id="currPage" name="currPage" value="1"/>
<table border="1" cellpadding="1" cellspacing="1">
<tr>
<th>제목</th>
<td><input type="text" id="btitle"  name="btitle" size="35" value="${srchtitle}" /></td>
<th>내용</th>
<td><input type="text" id="contents"  size="35" value= "${srchcontent}" /></td>
<td><input type="button" id="btnSearch" onclick= "javascript:submitCheck()" value="검색"/></td>
</tr>
</table>
</form></div>
<div ><p></p>
<table border="1">
<tr>
<th width="50px">순번</th>
<th width="250px">제목</th>
<th width="60px">등록자</th>
<th width="80px">등록일</th>
<th width="60px">조회수</th>
<th width="100px">상세보기</th>
</tr>
<c:if test="${empty bbsList}">
<tr>
<td colspan="5" align="center">데이터가 없습니다.</td>
</tr>
</c:if>
<c:forEach items="${bbsList}" var="bbs" varStatus="i">
<tr>
<td align="center" >${(pageSet.dbCount-(pageSet.currPage-1) * pageSet.pageSize) - i.count+1}</td>
<td align="left"   >${bbs.btitle}</td>
<td align="center" >${bbs.bname}</td>
<td align="center" >${bbs.bdate}</td>
<td align="center" >${bbs.bhit}</td>
<td align="center" ><a href="#" onclick="updatePopup('${bbs.bid}');">
<input type="button" value="상세보기"/></a></td>
</tr>
</c:forEach>
<tr>	
<td colspan="6" align="center">
<input type="button" value="글쓰기" onclick= "javascript:insertPopup()"/></td>
</tr>
</table>
</div>
<div>
<!-- paging -->
<c:out value="${pageSet.pageList}" escapeXml="false"/>
<form id="popupForm" method="post">
   <input type="hidden" id="bid" name="bid" />
</form>
<form method="post" name="form" id="form" action="<c:url value= '/board/listBoard.do'/>">
   <input type="hidden" name="currPage" id="currPage" value= "${pageSet.currPage}"/>
</form></div></center>
</body>
</html>
