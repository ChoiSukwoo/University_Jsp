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
 * 	GET ��û�� ó���ϱ� ���� �޼���
 *@see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
   protected void doGet(HttpServletRequest request, 
 HttpServletResponse response) throws ServletException, IOException {
     // TODO Auto-generated method stub
     doPost(request, response);
   }

/**
 * POST ��û�� ó���ϱ� ���� �޼���
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
   protected void doPost(HttpServletRequest request, 
 HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // ��������
      int  num1,num2;
      int result;
      String op;

      // Ŭ���̾�Ʈ ���信 ���� mime type�� ���ڼ� ����
      response.setContentType("text/html; charset=utf-8");
      // Ŭ���̾�Ʈ ������ ���� ��� ��Ʈ�� Ȯ��
      PrintWriter out = response.getWriter();

      // HTML ���� ���� ���۵� num1, num2 �з����� ���� ������ �Ҵ�.
      num1 = Integer.parseInt(request.getParameter("num1"));
      num2 = Integer.parseInt(request.getParameter("num2"));
      op = request.getParameter("operator");
      // calc() �޼��� ȣ��� ��� �޾ƿ�.
      result = calc(num1, num2, op);

      // ��� ��Ʈ���� ���� ȭ�鱸��
      out.println("<HTML>");
      out.println("<HEAD><TITLE>����</TITLE></HEAD>");
      out.println("<BODY><center>");
      out.println("<H3>��� ���</H3>");
      out.println("<HR>");
      out.println(num1+" "+op+" "+num2+" = "+result);
      out.println("<HR>");
      out.println("</BODY></HTML>");
   }
   // ���� ��� ����� �����ϴ� �޼���
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
