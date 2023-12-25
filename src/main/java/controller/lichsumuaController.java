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
import bean.lichsumuabean;
import bean.loaibean;
import bean.sachbean;
import bo.khachhangbo;
import bo.lichsumuabo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class lichsumuaController
 */
@WebServlet("/lichsumuaController")
public class lichsumuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsumuaController() {
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
			lichsumuabo lsmbo = new lichsumuabo();
			HttpSession session = request.getSession();
			khachhangbean kh = new khachhangbean();
			sachbo sbo = new sachbo();
			loaibo lbo = new loaibo();
			ArrayList<sachbean> dss = sbo.getsach();
			ArrayList<loaibean> dsl = lbo.getloai();
			request.setAttribute("dss", dss);
			request.setAttribute("dsl", dsl);
			if (session.getAttribute("dn") != null) {
				kh = (khachhangbean) session.getAttribute("dn");
				long makh = kh.getMakh();
				ArrayList<lichsumuabean> lsmua = lsmbo.getLSM(makh);
				request.setAttribute("lsmua", lsmua);
				RequestDispatcher rd = request.getRequestDispatcher("/views/LichSuMua.jsp");
				rd.forward(request, response);
			}
			else {
				response.sendRedirect("dangnhapController");
			}
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
