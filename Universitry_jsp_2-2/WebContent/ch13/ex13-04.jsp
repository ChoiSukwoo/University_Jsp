<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성별과 과목선택 입력화면</title>
</head>
<body>
 <h4>성별과 좋아하는 과목 조사</h4>
 <form method=post action=ex13-04-1.jsp>
   1.성별을 선택하세요.<br>
   <input type="radio" name=s1 value="남자" checked>남자&nbsp;
   <input type="radio" name=s1 value="여자">여자<p>

   2. 좋아하는 과목을 선택하세요.[CheckBox 버튼]<br>
   <input type="checkbox" name=s2 value="SQL응용" checked>SQL응용<br>
   <input type="checkbox" name=s2 value="DB개발도구">DB개발도구<br>
   <input type="checkbox" name=s2 value="JSP" checked>JSP<br>
   <input type="checkbox" name=s2 value="오라클실무">오라클실무<br>
   <input type="checkbox" name=s2 value="ERP구축">ERP구축<p>
   <input type=submit value="확 인">
   <input type=reset  value="취 소">
  </form>
</body>
</html>
