<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h4> c:if 태그   예제 </h4>  
<c:if test="${10 < 20}"> 10는 20보다 작다. </c:if><br>
<c:if test="${6+3 == 9}"> 6 + 3 = 9 </c:if>
