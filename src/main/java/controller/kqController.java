package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class kqController
 */
@WebServlet("/kqController")
public class kqController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kqController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tama = request.getParameter("a");
		String tamb = request.getParameter("b");
		if(tama == null && tamb == null) {
			RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
			rd.forward(request, response);
		}else {
			// Doi tama tamb ra so tinh ket qua
			long a = Long.parseLong(tama);
			long b = Long.parseLong(tamb);
			long ketqua = 0;
			String tb = "";
			if(request.getParameter("butc") != null){
				ketqua = a + b;
			} else if(request.getParameter("butt") != null){
				ketqua = a - b;
			}else if(request.getParameter("butn") != null){
				ketqua = a * b;
			}else if(request.getParameter("butchia") != null){
				if(b == 0){
					tb = "nhap-sai-b";
				}else {
					ketqua= a / b;
				}
			}
			request.setAttribute("a", a);
			request.setAttribute("b", b);
			request.setAttribute("kq", ketqua);
			RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
			rd.forward(request, response);
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
