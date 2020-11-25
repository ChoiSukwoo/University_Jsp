package ch10;

import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public HelloWorld() {
       super();
       // TODO Auto-generated constructor stub
   }

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.setContentType("text/html;charset=utf-8");
      PrintWriter out = response.getWriter();

      out.println("<HTML>");
      out.println("<HEAD><TITLE>Hello World</TITLE></HEAD>");
      out.println("<BODY><H3>Hello World :Çï·Î¿ì ¿ùµå</H3>");
      out.println("</BODY></HTML>");
   }

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }
}
