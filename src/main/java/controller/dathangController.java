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

import bean.chitiethdbean;
import bean.giohangbean;
import bean.khachhangbean;
import bean.loaibean;
import bean.sachbean;
import bo.chitiethdbo;
import bo.giohangbo;
import bo.hoadonbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class dathangController
 */
@WebServlet("/dathangController")
public class dathangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dathangController() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		hoadonbo hdbo = new hoadonbo();
		chitiethdbo cthdbo = new chitiethdbo();
		sachbo sbo = new sachbo();
		loaibo lbo = new loaibo();
		HttpSession session = request.getSession();
		khachhangbean kh = new khachhangbean();
		giohangbo g = null;
		kh = (khachhangbean) session.getAttribute("dn");
		try {
			ArrayList<sachbean> dss = sbo.getsach();
			ArrayList<loaibean> dsl = lbo.getloai();
			request.setAttribute("dss", dss);
			request.setAttribute("dsl", dsl);
			if(request.getParameter("action").equals("dat-hang")) {
				if(kh != null) {
					long makh = kh.getMakh();
					hdbo.themHD(makh);
					long mahd = hdbo.getMaHD();
 					g = (giohangbo) session.getAttribute("gh");
					for(giohangbean gio : g.ds) {
						cthdbo.themCTHD(gio.getMasach(),(int) gio.getSoluong(), mahd);
					}
					g.XoaAll();
					ArrayList<chitiethdbean> dsmua = cthdbo.getCTHD(mahd);
					request.setAttribute("dsmua",dsmua);
					session.setAttribute("gh", g);
					session.removeAttribute("tongsach");
					session.removeAttribute("dsg");
					RequestDispatcher rd = request.getRequestDispatcher("/views/HoaDon.jsp");
					rd.forward(request, response);
				}else {
					response.sendRedirect(request.getContextPath()+ "/dangnhapController");
				}
			}
		} catch (Exception e) {			
			System.out.print(e.getMessage()+ "  Lỗi");
		}
		/* doGet(request, response); */
	}

}
