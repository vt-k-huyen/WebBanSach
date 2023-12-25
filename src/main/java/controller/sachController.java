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
import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class sachController
 */
@WebServlet("/sachController")
public class sachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Dat cau hinh gui len va lay ve utf-8
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			// sai loaibo lay ve dsloai
			// sai sachbo laay ve dsach
			sachbo sbo = new sachbo();
			loaibo lbo = new loaibo();
			ArrayList<sachbean> dss = sbo.getsach();
			ArrayList<loaibean> dsl = lbo.getloai();
			// Chuyen dsloai va dsach ve Indexsach
			String key = request.getParameter("txttim");
			String ml = request.getParameter("ml");
			if(ml!=null){
				dss = sbo.TimMa(ml);
			} else{
				if(key != null){
				dss=sbo.Tim(key);
				}
			}
			long tongsach = 0;
			giohangbo g = new giohangbo();
			HttpSession session = request.getSession();
			g = (giohangbo) session.getAttribute("gh");
			if(session.getAttribute("gh") == null) {
				session.setAttribute("gh", g);
			} else {
				tongsach = g.TongSach();
			}
			session.setAttribute("tongsach", tongsach);
			request.setAttribute("dss", dss);
			request.setAttribute("dsl", dsl);
			RequestDispatcher rd = request.getRequestDispatcher("/views/Sach.jsp");
			rd.forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
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
