<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="java.util.ArrayList"
         import="java.util.HashMap" %>
<% 
    String[] dept={"컴공","정통","경영","행정"};
    request.setAttribute("dept", dept);

    ArrayList <String> list = new ArrayList();
    list.add("SQL응용");
    list.add("JSP/Servlet");
    list.add("ERP정보시스템");	
    request.setAttribute("course", list);

    HashMap <String, String> map = new HashMap();
    map.put("department", "컴퓨터공학과");
    map.put("name","강준상");
    map.put("position", "교수");
    map.put("telephone","010-123-4567");
    request.setAttribute("professor", map);
%>
  1. 학과 배열 출력 -<br>  
 0번째: ${dept[0]}, ${requestScope.dept[0]}<br>
 1번째: ${dept[1]}, ${requestScope.dept[1]}<br>
 2번째: ${dept[2]}, ${requestScope.dept[2]}<br>
 3번째: ${dept[3]}, ${requestScope.dept[3]}<p>

  2. 과목 ArrayList 출력 -<br>
 First : ${course[0]}<br>
 Second: ${course[1]}<br>
 Third : ${course[2]}<p>

  3. 교수 Map 출력 -<br>
  학과: ${professor.department}<br>
  성명: ${professor.name}<br>
  직위: ${professor.position}<br>
  전화: ${professor.telephone}
