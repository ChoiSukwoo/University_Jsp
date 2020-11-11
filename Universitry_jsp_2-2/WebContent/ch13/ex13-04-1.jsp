<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("utf-8"); %>

  <h4> 성별과 좋아하는 과목은 </h4>
   당신은 <b>${param.s1}</b> 이고,<p>
   좋아하는 과목으로<br><b>
  <c:forEach var="ck" items="${paramValues.s2}">
      - ${ck}<br>
  </c:forEach>
  </b><br>을 선택하였습니다. 
