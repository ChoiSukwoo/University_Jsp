package ch10;

import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeptServlet
 */
@WebServlet("/DeptServlet")
public class DeptServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
  protected void doGet(HttpServletRequest request, 
HttpServletResponse response) throws ServletException, IOException {
     // TODO Auto-generated method stub
     doPost(request, response);
  }

/**
 *@see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
  protected void doPost(HttpServletRequest request, 
HttpServletResponse response) throws ServletException, IOException {
     // TODO Auto-generated method stub
     response.setContentType("text/html; charset=utf-8");
     PrintWriter out = response.getWriter();

     String dept_id   = request.getParameter("dept_id");
     String dept_name = request.getParameter("dept_name");
     String dept_tel  = request.getParameter("dept_tel");

     dept_id = new String(dept_id.getBytes("ISO-8859-1"), "utf-8");
     dept_name = new String(dept_name.getBytes("ISO-8859-1"), "utf-8");

     out.println("<html>");
     out.println("<head><title>Servlet을 통한 출력 예제</title></head>");
     out.println("<body>");
     out.println("<h3>Servlet을 통한 출력 예제</h3>");
     out.println("학과코드 : " + dept_id + "<p>");
     out.println("학  과  명 : " + dept_name + "<p>");
     out.println("전화번호 : " + dept_tel + "<p>");
     out.println("</body>");
     out.println("</html>");
  }
}
