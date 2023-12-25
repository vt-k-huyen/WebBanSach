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

import bean.giohangbean;
import bean.loaibean;
import bo.giohangbo;
import bo.loaibo;

/**
 * Servlet implementation class gioController
 */
@WebServlet("/gioController")
public class gioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public gioController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			HttpSession session = request.getSession();
			
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsl = lbo.getloai();
			request.setAttribute("dsl", dsl);
			
			long tongtien = 0;
			long tongsach = 0;
			giohangbo g = (giohangbo) session.getAttribute("gh");
			if (session.getAttribute("gh") == null) {
				g = new giohangbo();
				session.setAttribute("gh", g);
			}
			
			session.setAttribute("dsg",g.ds); 
			System.out.println(g.ds);
			if(session.getAttribute("dsg") != null){
				tongsach = g.TongSach();
				tongtien = g.TongTien();
			}
			session.setAttribute("tongtien", tongtien);
			session.setAttribute("tongsach", tongsach);
			RequestDispatcher rd = request.getRequestDispatcher("/views/GioHang.jsp");
			rd.forward(request, response);
		} catch (Exception e) {			
			System.out.print(e.getMessage()+" 68");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* doGet(request, response);*/
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsl = lbo.getloai();
			request.setAttribute("dsl", dsl);
			HttpSession session = request.getSession();
			long tongtien = 0;
			long tongsach = 0;
			giohangbo g = null;
			int sl = 1;
			g = new giohangbo();
			if (session.getAttribute("gh") == null) {
				session.setAttribute("gh", g);
			}
			g = (giohangbo) session.getAttribute("gh");
			// Dat sach
			String anh = request.getParameter("anh");
			String tg = request.getParameter("tg");
			String ten = request.getParameter("ts");
			String gia = request.getParameter("gia");
			String ms = request.getParameter("ms");
			if(anh != null && tg != null && ten != null && gia != null){ 
				g.Them(ms, ten, tg, anh,Long.parseLong(gia),(long) sl);			
				tongsach = g.TongSach();
				tongtien = g.TongTien();
				session.setAttribute("gh", g);
				session.setAttribute("dsg", g.ds);
				request.setAttribute("tongtien", tongtien);
				session.setAttribute("tongsach", tongsach);
				response.sendRedirect("gioController");
			}
			// Cap nhat
			String txtsl = request.getParameter("txtsl"); 
			if(ms != null && txtsl != null && request.getParameter("action").equals("sua")) {
				g.Sua(ms, Long.parseLong(txtsl));
				session.setAttribute("gh", g);
				session.setAttribute("dsg", g.ds);
				request.setAttribute("tongtien", tongtien);
				session.setAttribute("tongsach", tongsach);
				response.sendRedirect("gioController");
			}
			// Xoa sach trong gio
			if(ms != null && request.getParameter("action").equals("tra-sach")) {
				g.Xoa(ms);
				session.setAttribute("gh", g);
				session.setAttribute("dsg", g.ds);
				request.setAttribute("tongtien", tongtien);
				session.setAttribute("tongsach", tongsach);
				response.sendRedirect("gioController");
			}
			// Xoa all
			if(request.getParameter("action").equals("xoa-gio")) {
				g.XoaAll();
			}
			session.setAttribute("gh", g);
			session.setAttribute("dsg", g.ds);
			System.out.println(tongsach);
			session.setAttribute("tongtien", tongtien);
			session.setAttribute("tongsach", tongsach);
			RequestDispatcher rd = request.getRequestDispatcher("GioHang.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			System.out.print(e.getMessage() +" 141");
		}
	}
}
