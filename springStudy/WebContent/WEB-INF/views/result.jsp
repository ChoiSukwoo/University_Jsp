<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ...">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script language="javascript">
alert("${result}");
if("${result}".indexOf("실패") > -1) {
   location.href(-1);
} else {
   opener.submitCheck();
   window.close();
}
</script>
</head>
<body>
REsult
</body>
</html>
