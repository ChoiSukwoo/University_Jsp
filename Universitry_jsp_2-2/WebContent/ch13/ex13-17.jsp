<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XML 태그 예제</title>
</head>
<body>
<center><h4> jstl xml 라이브러리 예제 </h4>
<x:parse var="xmldata">
	<items>
		<item>
			<model>Galaxy S4</model>
			<company>SKT</company>
			<product>SamSung</product>
		</item>
		<item>
			<model>Vega LTE-A</model>
			<company>SKT</company>
			<product>unKnown</product>
		</item>
		<item>
			<model>IPhone 5</model>
			<company>KT</company>
			<product>Apple</product>
		</item>
		<item>
			<model>옵티머스  G프로</model>
			<company>LG U+</company>
			<product>LG</product>
		</item>
	</items>
</x:parse>
<table border="1">
	<tr border="1" align="center">
		<th>모델</th>
		<th>통신사</th>
		<th>제조사</th>
	</tr>
<x:forEach select="$xmldata//item">
	<tr>
		<td><x:out select="./model" /></td>
		<td><x:out select="./company" /></td>
		<td><x:choose>
			<x:when select="./product!='unKnown'">
				<x:out select="./product" /></x:when>
			<x:otherwise>[알수 없음]</x:otherwise>
			</x:choose></td>
	</tr>
</x:forEach>
</table></center>
</body>
</html>
