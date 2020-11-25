<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<h4>EL 연산자 예제(1)</h4>
${"(1) 리터럴"}<br>
\${"Hello."} => ${"Hello."} <br>
\${123} => ${123}	<br>
\${null} => ${null} <p>

${"(2) 산술식"}<br>
\${10 + 20}  => ${10 + 20} <br>
\${10 * 20}  => ${10 * 20} <br>
\${110 / 20} => ${110 / 20} <br>
\${100 % 3}  => ${100 % 3}
