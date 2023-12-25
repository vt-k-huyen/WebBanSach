package bo;

import java.util.ArrayList;
import java.util.Iterator;

import bean.loaibean;
import bean.sachbean;
import dao.loaidao;
import dao.sachdao;
import tam.Hang;

public class sachbo {
	sachdao sdao = new sachdao();
	loaidao ldao = new loaidao();
	ArrayList<loaibean> dsl;
	ArrayList<sachbean> ds;
	ArrayList<Hang> dsh;
 	 public ArrayList<sachbean> getsach() throws Exception{
		 ds = sdao.getsach();
		 return ds;
	 }
 	 public ArrayList<sachbean>  TimMa(String maloai) throws Exception{
 		ArrayList<sachbean> tam = new ArrayList<sachbean>();
 		 for(sachbean s : ds) {
 			 if(s.getMaloai().toLowerCase().trim().contains(maloai.toLowerCase().trim())) {
 				 tam.add(s);
 			 }
 		 }
 		 return tam;
 	 }
 	public ArrayList<sachbean> Tim(String key) throws Exception{
 		ArrayList<sachbean> tam = new ArrayList<sachbean>();
 		for(sachbean s : ds) {
			 if(s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim()) ||
					 s.getTensach().toLowerCase().trim().contains(key.toLowerCase().trim())) {
				 tam.add(s);
			 } 
		 }
		 return tam;
	 }
 	public int Them(String masach,String tensach, String tacgia,  long gia, long soluong, String anh, String maloai) throws Exception{
 		ds = sdao.getsach();
 		for(sachbean s : ds) {
 			if(masach.equals(s.getMasach())) {
 				return 0;
 			}
 		}
 		return sdao.Them(masach, tensach, tacgia, gia, soluong, anh, maloai);
 	}
 	public int Sua(String masach,String tensach, String tacgia,  long gia, long soluong, String anh, String maloai) throws Exception{
 		return sdao.Sua(masach, tensach, tacgia, gia, soluong, anh, maloai);
 	}
 	public int Xoa(String masach) throws Exception{
 		return sdao.Xoa(masach);
 	}
 	public sachbean finByMS(String masach) throws Exception{
 		return sdao.finByMS(masach);
 	}
}
