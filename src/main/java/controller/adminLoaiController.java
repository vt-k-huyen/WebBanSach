package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.function.ToIntBiFunction;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bo.loaibo;

/**
 * Servlet implementation class adminLoaiController
 */
@WebServlet("/adminLoaiController")
public class adminLoaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoaiController() {
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
			String maloai = request.getParameter("txtmaloai");
			String tenloai = request.getParameter("txttenloai");
			loaibo lbo = new loaibo();
			if(request.getParameter("btnadd") != null) {
				lbo.Them(maloai, tenloai);
			}else if(request.getParameter("btnupdate") != null){
				lbo.Sua(maloai, tenloai);
			}  else {
				String tab = request.getParameter("tab");
				if(tab != null) {
					if(tab.equals("select")) {
						request.setAttribute("tenloai", tenloai);
						request.setAttribute("maloai", maloai);
						lbo.Tim(maloai);
					} else if(tab.equals("delete")) {
						lbo.Xoa(maloai);
					}
				}
			}
			System.out.println(lbo.getloai());
			
			request.setAttribute("dsl", lbo.getloai());
			RequestDispatcher rd = request.getRequestDispatcher("/views/adminloai.jsp");
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
