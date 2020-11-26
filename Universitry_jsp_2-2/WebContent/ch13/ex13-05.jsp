<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h4>c:forTokens 태그 예제</h4>
<c:set var="dept" value="컴퓨터/기계/자동차/간호" />
<c:set var="subj" value="SQL,JSP,Servlet/ERP실무/닷넷" />

학과명: ${dept} <br>
과목명: ${subj}<p>
<c:forTokens var="i" items="${dept}" delims="/" varStatus="vs" >
     ${vs.count}. ${i}<br>
</c:forTokens>
<hr/>
<c:forTokens var="name" items="${subj}" delims=",/" varStatus="vs">
     ${vs.count}. ${name}<br>
</c:forTokens>
