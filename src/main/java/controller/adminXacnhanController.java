package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.chitiethdbo;

/**
 * Servlet implementation class adminXacnhanController
 */
@WebServlet("/adminXacnhanController")
public class adminXacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminXacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String mact = request.getParameter("mact");
			chitiethdbo ctbo = new chitiethdbo();
			if(mact != null) {
				ctbo.Sua(Long.parseLong(mact));
			}
			request.setAttribute("ds", ctbo.getXN());
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
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
