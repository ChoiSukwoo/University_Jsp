<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="str" value="It is time to take a break." />
<table border="1">
	<tr>
		<th  colspan=2 align="center">JSTL Function 사용 예[2] </th>
	</tr>
	<tr>
		<td>str?</td>
		<td>${str}</td>
	</tr>
	<tr>
		<td>time 문자열 포함 여부?</td>
		<td>${fn:contains(str, "time")}</td>
	</tr> 
	<tr>
		<td>time 추출?</td>
		<td>${fn:substring(str,7,10)}</td>
	</tr>
	<tr>
		<td>time 이후의 문자열 반환?</td>
		<td>${fn:substringAfter(str, "time")}</td>
	</tr>
	<tr>
		<td>time 이전의 문자열 반환?</td>
		<td>${fn:substringBefore(str, "time")}</td>
	</tr>
	<tr>
		<td>It로 문자열 시작 여부?</td>
		<td>${fn:startsWith(str, "It")}</td>
	</tr> 
</table>
