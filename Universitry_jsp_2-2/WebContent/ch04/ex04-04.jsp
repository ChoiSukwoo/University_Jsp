<%-- ---------------------------------------------------- --%>
<%--  프로그램명		: ex04-04.jsp												 --%>
<%--  작성일			: 2020/09/16 												 --%>
<%--  작성자			:  최석우 1705099											 --%>
<%-- ---------------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트를 이용한 구구단</title>
</head>
<body>
	<center>
		<h4>스크립트를 이용한 구구단</h4>
		<table border = "1"  cellspacing = "2">
			<% int i,j,k;%>
			
			<!-- 테이블의 열 출력  -->
			<% for (i = 0;i<=9;i++){%>
			<tr>
				<!-- 테이블의 행 출력  -->
				<% for (j = 2;j<=9;j++){%>
				<!-- 테이블의 셀 출력 + 중앙정렬  -->
				<td align = "center">
					<!-- 0번쨰 열일때 단출력 그외 구구단 출력  -->
					<% if(i==0){
						out.println(j + "단"); 
					}else{					
						k=i*j;
						out.println(j + "*" + i + "=" + k); 
					}
					%>
				</td>
				<%}%>
			</tr>
			<%}%>
		</table>
	</center>
</body>
</html>