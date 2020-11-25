package ch10;

import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */
@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   /**
    * @see HttpServlet#HttpServlet()
    */
   public CalcServlet() {
       super();
       // TODO Auto-generated constructor stub
   }
/**
 * 	GET 요청을 처리하기 위한 메서드
 *@see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
   protected void doGet(HttpServletRequest request, 
 HttpServletResponse response) throws ServletException, IOException {
     // TODO Auto-generated method stub
     doPost(request, response);
   }

/**
 * POST 요청을 처리하기 위한 메서드
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
   protected void doPost(HttpServletRequest request, 
 HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // 변수선언
      int  num1,num2;
      int result;
      String op;

      // 클라이언트 응답에 대한 mime type과 문자셋 지정
      response.setContentType("text/html; charset=utf-8");
      // 클라이언트 응답을 위한 출력 스트림 확보
      PrintWriter out = response.getWriter();

      // HTML 폼을 통해 전송된 num1, num2 패러미터 값을 변수에 할당.
      num1 = Integer.parseInt(request.getParameter("num1"));
      num2 = Integer.parseInt(request.getParameter("num2"));
      op = request.getParameter("operator");
      // calc() 메서드 호출로 결과 받아옴.
      result = calc(num1, num2, op);

      // 출력 스트림을 통해 화면구성
      out.println("<HTML>");
      out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
      out.println("<BODY><center>");
      out.println("<H3>계산 결과</H3>");
      out.println("<HR>");
      out.println(num1+" "+op+" "+num2+" = "+result);
      out.println("<HR>");
      out.println("</BODY></HTML>");
   }
   // 실제 계산 기능을 수행하는 메서드
   public int calc(int num1, int num2, String op) {
      int result = 0;
      if(op.equals("+")) {
         result = num1 + num2;
      } else if(op.equals("-")) {
                result = num1 - num2;
             } else if(op.equals("*")) {
                      result = num1 * num2;
                     } else if(op.equals("/")) {
                               result = num1 / num2;
                            }
      return result;
 }

}
