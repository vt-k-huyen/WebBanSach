package bo;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao = new  hoadondao();
	public int themHD(long makh) throws Exception{
		 return hddao.themHD(makh);
	}
	public long getMaHD() throws Exception{
		return hddao.getMaHD();
	}
	public hoadonbean timHD(long mahd) throws Exception{
		return hddao.timHD(mahd);
	}
	public void xacnhanHD(long mahd) throws Exception{
		hddao.xacnhanHD(mahd);
	}
}
