package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.chitiethdbo;
import bo.hoadonbo;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				hoadonbo hdbo = new hoadonbo();
				chitiethdbo cthdbo = new chitiethdbo();
				HttpSession session = request.getSession();
				khachhangbean kh = new khachhangbean();
				kh = (khachhangbean) session.getAttribute("dn");
				long mahd = hdbo.getMaHD();
				System.out.println(mahd);
				if(request.getParameter("action").equals("xac-nhan")) {
					hdbo.xacnhanHD(mahd);
					cthdbo.xacnhanCTHD(mahd);
				}
				response.sendRedirect("sachController");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		/* doGet(request, response); */
	}

}
