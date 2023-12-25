package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	public khachhangbean ktdn(String tendn, String matkhau) throws Exception{
		return khdao.ktdn(tendn, matkhau);
	}
	public ArrayList<khachhangbean> getKH() throws Exception{
		return khdao.getKH();
	}
	
	public long themKH(String tendn, String matkhau, String diachi, String sdt, String email, String hoten) throws Exception {
		return khdao.themKH(tendn, matkhau, diachi, sdt, email, hoten);
	}
	public khachhangbean kttk(String tendn) throws Exception{
		return khdao.kttk(tendn);
	}
}
