<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="str" value="It is time to take a break." />
<table border="1">
	<tr>
		<th colspan=2 align="center">JSTL Function 사용 예 </th>
	</tr>
	<tr>
		<td>str?</td>
		<td>${str}</td>
	</tr>
	<tr>
		<td>str의  길이 ?</td>
		<td>${fn:length(str)}</td>
	</tr>
	<tr>
		<td>str의 to 위치?</td>
		<td>${fn:indexOf(str, "break")}</td>
	</tr>
	<tr>
		<td>is를 was로 변경?</td>
		<td>${fn:replace(str, "is", "was")}</td>
	</tr>
	<tr>
		<td>str를 대문자로 변환?</td>
		<td>${fn:toUpperCase(str)}</td>
	</tr> 
</table>
