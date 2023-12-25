package bo;

import java.util.ArrayList;

import bean.taikhoanbean;
import dao.taikhoandao;

public class taikhoanbo {
	taikhoandao tkdao = new taikhoandao();
	public ArrayList<taikhoanbean> gettk() throws Exception{
		return tkdao.gettk();
	}
	public taikhoanbean Timtk(String tenTK, String pass) throws Exception{
		return tkdao.Timtk(tenTK, pass);
	}
}
