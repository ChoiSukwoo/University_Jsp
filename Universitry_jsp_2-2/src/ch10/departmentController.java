package ch10;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class departmentController
 */
@WebServlet("/departmentController")
//서플릿의 메인이 되는부분
public class departmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*** @see HttpServlet#HttpServlet()*/
	public departmentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*** @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost함수로 request와 response 를 매개변수로 전달
		doPost(request, response);
	}

	/*** @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		//getParameter로 type을 받아온다음 각 경로를 설정해준다.
		String type = request.getParameter("type");
		String path = "";
		if (type == null || type.equals("select")) {
			path = "./ch07/ex07-01.jsp";
		} else if (type.equals("insert")) {
			path = "./ch07/ex07-02.jsp";
		} else if (type.equals("update")) {
			path = "./ch07/ex07-03.jsp";
		} else {
			path = "./ch07/ex07-04.jsp";
		}
		//경로를 완성한다음 해당 경로로 이동한다.
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
}
