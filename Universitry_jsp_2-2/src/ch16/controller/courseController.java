package ch16.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ch16.dao.courseDAO;

/**
 * Servlet implementation class courseController
 */
@WebServlet("/courseController")
public class courseController extends HttpServlet {
    private static final long serialVersionUID = 1L;
   /**
    * @see HttpServlet#HttpServlet()
    */
   public courseController() {
        super();
        // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, ...)
    */
   protected void doGet(HttpServletRequest request, 
 HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doPost(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, ... )
    */
   protected void doPost(HttpServletRequest request, 
HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      request.setCharacterEncoding("utf-8");
      String type=request.getParameter("type");
      String path="";
      courseDAO coursedao=new courseDAO();
      List courselist = new ArrayList();
      courselist = coursedao.getCourseList();

      if (type==null || type.equals("select")) {
         path="./ch16/ex16-01.jsp";
      }
      request.setAttribute("courselist", courselist);
      RequestDispatcher dispatcher=request.getRequestDispatcher(path);
      dispatcher.forward(request, response);
   }
}
