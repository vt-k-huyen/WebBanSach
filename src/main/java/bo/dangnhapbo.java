package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class dangnhapbo {
	khachhangdao khdao = new khachhangdao();
	public khachhangbean ktdn(String tendn, String matkhau) throws Exception{
		return khdao.ktdn(tendn, matkhau);
	}
}
