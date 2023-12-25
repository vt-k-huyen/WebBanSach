package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	ArrayList<loaibean> dsl;
	public ArrayList<loaibean> getloai() throws Exception{
		dsl = ldao.getloai();
		return dsl;
	}
	public int Them(String maloai,String tenloai) throws Exception{
		dsl = ldao.getloai();
		for(loaibean l: dsl) {
			if(l.getMaloai().equals(maloai)) {
				return 0;
			}
		}
		return ldao.Them(maloai, tenloai);
	}
	public String Tim(String maloai) throws Exception{
		dsl = ldao.getloai();
		for(loaibean l:dsl) {
			if(l.getMaloai().equals(maloai)) {
				return  l.getTenloai();
			}
		}
		return null;
	}
	public int Sua(String maloai,String tenloai) throws Exception{
		return ldao.Sua(maloai, tenloai);
	}
	public int Xoa(String maloai) throws Exception{
		return ldao.Xoa(maloai);
	}
}
