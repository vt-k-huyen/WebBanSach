package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = request.getRequestDispatcher("/views/dangky.jsp");
		rd.forward(request, response);
		/*
		 * try { String tb = request.getParameter("tb"); if( request.getParameter("tb")
		 * != null) { RequestDispatcher rd =
		 * request.getRequestDispatcher("/views/dangky.jsp?tb="+tb); rd.forward(request,
		 * response); } else { RequestDispatcher rd =
		 * request.getRequestDispatcher("/views/dangky.jsp"); rd.forward(request,
		 * response); } } catch (Exception e) { System.out.println(e.getMessage()); }
		 */	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			HttpSession session = request.getSession();
			khachhangbo khbo = new khachhangbo();
			String hoten = request.getParameter("hoten");
			String diachi = request.getParameter("diachi");
			String sdt = request.getParameter("sdt");
			String email = request.getParameter("email");
			String tendn = request.getParameter("tendn");
			String pass = request.getParameter("pass");
			if(hoten != "" && diachi != "" && sdt != "" && email != "" && tendn != "" && pass != "") {
				if(khbo.kttk(tendn) == null) {
					khbo.themKH(tendn, pass, diachi, sdt, email, hoten); 
					long makh = khbo.ktdn(tendn, pass).getMakh();
					khachhangbean kh = new khachhangbean(tendn, pass, diachi, sdt, email, hoten, makh);
					session.setAttribute("dn", kh);
					response.sendRedirect(request.getContextPath() + "/sachController");
				}else {
					  RequestDispatcher rd =
					  request.getRequestDispatcher("/views/dangky.jsp?tb=Tên tài khoản đã tồn tại");
					  rd.forward(request, response);
					 
				}
			} else {
				if(request.getParameter("action")!=null) {
//					request.setAttribute("tb", "Chưa nhập đầy đủ thông tin");
					RequestDispatcher rd = request.getRequestDispatcher("/views/dangky.jsp?tb=Chưa nhập đầy đủ thông tin");
					rd.forward(request, response);
				}	
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/dangky.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		/* doGet(request, response); */
	}

}
