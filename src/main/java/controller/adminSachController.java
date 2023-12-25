package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.sachbo;


/**
 * Servlet implementation class adminSachController
 */
@WebServlet("/adminSachController")
public class adminSachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminSachController() {
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
			String masach = request.getParameter("txtmasach");
			String tensach = request.getParameter("txttensach");
			String gia = request.getParameter("txtgia");
			String sl = request.getParameter("txtsl");
			String tacgia = request.getParameter("txttacgia");
			String anh = request.getParameter("txtanh");
			String maloai = request.getParameter("txtmaloai");

			request.setAttribute("masach", masach);
			request.setAttribute("tensach", tensach);
			request.setAttribute("tacgia", tacgia);
			request.setAttribute("sl", sl);
			request.setAttribute("gia", gia);
			request.setAttribute("maloai", maloai);
			request.setAttribute("anh", anh);
			sachbo sbo = new sachbo();
			String tab = request.getParameter("tab");
			if(tab != null) {
				if (tab.equals("delete")) {
					sbo.Xoa(masach);
					request.setAttribute("dss", sbo.getsach());
				}
			}
			
			request.setAttribute("dss", sbo.getsach());
			RequestDispatcher rd = request.getRequestDispatcher("/views/adminsach.jsp");
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("")+ "image_sach";
		response.getWriter().println(dirUrl1); 
		System.out.println(dirUrl1);
		sachbo sbo = new sachbo();
		String masach = null;
		String tensach = null;
		String tacgia = null;
		String sl = null;
		String gia = null;
		String maloai = null;
		String anh = null; 
		String tab = null;
		String btnadd = null;
		String btnupdate = null;
		try {
			
			List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
			// duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
					// xử lý file
					String nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
						// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
						String dirUrl =  request.getServletContext().getRealPath("")+ "image_sach";
						File dir = new File(dirUrl);
						if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
							dir.mkdir();
						}//File.separator +
						String fileImg = dirUrl + "/" +nameimg;
						anh ="image_sach"+ "/" + nameimg;
						System.out.println(anh);
						response.getWriter().println(fileImg); 
						File file = new File(fileImg);// tạo file
						try {
							fileItem.write(file);// lưu file
							System.out.println("UPLOAD THÀNH CÔNG...!");
							System.out.println("Đường dẫn lưu file là: " + dirUrl);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				} else// Neu la control
				{
					String tentk = fileItem.getFieldName();
					if (tentk.equals("txtmasach")) {
						masach = fileItem.getString();
					}	
					if (tentk.equals("txttensach")) {
						tensach = fileItem.getString();
					}	
					if (tentk.equals("txttacgia")) {
						tacgia = fileItem.getString();
					}	
					if (tentk.equals("txtsl")) {
						sl = fileItem.getString();	
					}	
					if (tentk.equals("txtgia")) {
						gia = fileItem.getString();	
					}	
					if (tentk.equals("txtmaloai")) {
						maloai = fileItem.getString();	
					}	
					if (tentk.equals("tab")) {
						tab = fileItem.getString();
					}	
					if (tentk.equals("btnadd")) {
						btnadd = fileItem.getString();
					}	
					if (tentk.equals("btnupdate")) {
						btnupdate = fileItem.getString();
					}	
				}
			}
			System.out.println(tab);
			if(btnadd != null) {
				System.out.print("image_sach"+ "/" + anh );
				sbo.Them(masach, tensach, tacgia, Long.parseLong(gia), Long.parseLong(sl),anh, maloai);
			} else if(btnupdate!=null) {
				sbo.Sua(masach, tensach, tacgia,Long.parseLong(gia), Long.parseLong(sl), anh, maloai);
			} else {
				if(tab != null) {
					if(tab.equals("select")) {
						sbo.finByMS(masach);
					}else if (tab.equals("delete")) {
						sbo.Xoa(masach);
						request.setAttribute("dss", sbo.getsach());
						response.sendRedirect("adminSachController"); 
					}
				}
 			}
			response.sendRedirect("adminSachController"); 
		} catch (FileUploadException e) {
			System.out.println(e.getMessage());
		} catch (NumberFormatException e) {
			System.out.println(e.getMessage());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		/* doGet(request, response); */
	}

}
