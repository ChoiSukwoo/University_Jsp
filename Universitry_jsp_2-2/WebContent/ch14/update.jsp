<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="id" value="${uid}" scope="session"/>
<c:if test="{empty id}"><c:redirect url="login.jsp" /></c:if>
<sql:update dataSource="jdbc/OracleDB">
       update member 
       set m_pwd=?, m_phone=?, m_email=?
       where m_uid =?
       <sql:param value="${param.pwd}" />
       <sql:param value="${param.tel}" />
       <sql:param value="${param.email}" />
       <sql:param value="${id}" />
</sql:update>
 회원 정보가 수정되었습니다.<p>
