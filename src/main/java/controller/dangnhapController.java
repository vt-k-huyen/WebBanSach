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
import bean.taikhoanbean;
import bo.khachhangbo;
import bo.taikhoanbo;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {
			khachhangbo khbo = new khachhangbo();
			taikhoanbo tkbo = new taikhoanbo();
			if (request.getParameter("txtun") != null && request.getParameter("txtpw") != null) {
				String un = request.getParameter("txtun");
				String pw = request.getParameter("txtpw");
				// taikhoanbean = admin  ----- khachhangbean= user
				taikhoanbean tk = tkbo.Timtk(un, pw);
				if(tk != null) {
					if(tk.isRoleAdmin()== true) {
						session.setAttribute("ADMIN", tk);
					response.sendRedirect(request.getContextPath() + "/adminLoaiController");
					}else {
						RequestDispatcher rd = request.getRequestDispatcher("/views/dangnhap2.jsp?tb=Not-permission");
						rd.forward(request, response);
					}
				} else {
					khachhangbean kh = khbo.ktdn(un, pw);
					if (kh != null) {
						/* session.setAttribute("un", kh.getHoten()); */
						session.setAttribute("dn", kh);
						response.sendRedirect(request.getContextPath() + "/sachController");
					} else {
						RequestDispatcher rd = request.getRequestDispatcher("/views/dangnhap2.jsp?tb=Dang-nhap-sai");
						rd.forward(request, response);
					}
				}
				
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/views/dangnhap2.jsp");
				rd.forward(request, response);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
