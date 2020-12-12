<!-- left_menu.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<table width=100 border=1 cellspacing=1 cellpadding=0>
		<tr bgcolor = "#cccccc" align="center">
			<td valign="center"><font size=3><b>회원관리</b></font></td>
		</tr>
	</table>
	<!-- 좌측에 출력될 테이블 구성  각 목록에 a 태그를 이용한 링크 부착-->
	<table width=100 border=1 cellspacing=0 cellpadding=0>
		<tr bgcolor="#0000cc"><td align=left><font color=#ffffff><b>회원메뉴</b></font></td></tr>
		<tr><td align=right><a href="login.jsp" target=right>로그인</a></td></tr>
		<tr><td align=right><a href="insert_form.jsp" target=right>회원가입</a></td></tr>
		<tr><td align=right><a href="update_form.jsp" target=right>회원정보수정</a></td></tr>
		<tr><td align=right><a href="delete.jsp" target=right>회원탈퇴</a></td></tr>
		<tr><td align=right><a href="logout.jsp" target=right>로그아웃</a></td></tr>
	</table>
	<table width=100 border=1 cellspacing=0 cellpadding=0>
		<tr bgcolor="#0000cc"><td align=left><a href="login.jsp" target=right>관리자 메뉴</a></td></tr>
		<tr><td align=right><a href="admin_login.jsp" target=right>로그인</a></td></tr>
		<tr><td align=right><a href="member_list.jsp" target=right>회원명부출력</a></td></tr>
		<tr><td align=right><a href="admin_logout.jsp" target=right>로그아웃</a></td></tr>
	</table>
</body>
</html>