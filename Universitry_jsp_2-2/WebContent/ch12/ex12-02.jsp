<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

	<h4>EL 연산자 예제(2)</h4>
    ${"(1) 비교 연산자"} <br>
	\${10 >= 20} => ${10 >= 20} <br>
	\${10 <= 20} => ${10 <= 20} <br>
	\${10 == 20} => ${10 == 20} <p>

    ${"(2) 논리 연산자"}<br> 
	\${true && true} => ${true && true} <br>
	\${true || false} => ${true || false} <p>

    ${"(3) 조건 연산자"}<br> 
	\${2+5==7 ? 7:10} => ${2+5==7 ? 7:10} <br>
