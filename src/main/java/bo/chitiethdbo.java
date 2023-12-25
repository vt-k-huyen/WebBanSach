package bo;

import java.util.ArrayList;

import bean.adminxacnhanbean;
import bean.chitiethdbean;
import dao.adminxacnhandao;
import dao.chitiethdao;

public class chitiethdbo {
	chitiethdao cthd = new chitiethdao();
	adminxacnhandao xndao = new adminxacnhandao();
	public int themCTHD(String masach, int slmua, long mahd) throws Exception{
		return cthd.themCTHD(masach, slmua, mahd);
	}
	public ArrayList<chitiethdbean> getCTHD(long mahd) throws Exception{ 
		return cthd.getCTHD(mahd);
	}
	public void xacnhanCTHD(long mahd) throws Exception{
		cthd.xacnhanCTHD(mahd);
	}
	public ArrayList<adminxacnhanbean> getXN() throws Exception{
		return xndao.getXN();
	}
	public void Sua(long mact) throws Exception{
		cthd.Sua(mact);
	}
}
