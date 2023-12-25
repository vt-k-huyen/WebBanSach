package bo;

import java.util.ArrayList;
import java.util.List;

import bean.giohangbean;
import bean.sachbean;


public class giohangbo {
	public List<giohangbean> ds = new ArrayList<giohangbean>();
	public List<giohangbean> getGio() throws Exception{
		return ds;
	}
	public void Them(String masach, String tensach, String tacgia, String anh, long gia,
			long soluong) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getMasach().toLowerCase().trim().equals(masach.toLowerCase().trim())) {
				long slt = ds.get(i).getSoluong() + 1;
				ds.get(i).setSoluong(slt);
				long g = ds.get(i).getGia();
				long tt = slt * g;
				ds.get(i).setThanhtien(tt);
				return;
			}
		}
		giohangbean gio = new giohangbean(masach, tensach , tacgia, anh, gia, soluong);
		ds.add(gio);
	}
	public List<giohangbean> addGio(String masach, String tensach, String tacgia, String anh, long gia,
			long soluong) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getMasach().toLowerCase().trim().equals(masach.toLowerCase().trim())) {
				long slt = ds.get(i).getSoluong() + 1;
				ds.get(i).setSoluong(slt);
				long g = ds.get(i).getGia();
				long tt = slt * g;
				ds.get(i).setThanhtien(tt);
				/* return ; */
			}
		}
		giohangbean gio = new giohangbean(masach, tensach , tacgia, anh, gia, soluong);
		ds.add(gio);
		return ds;
	}
	public void Xoa(String ms) {
		for (giohangbean gio : ds) {
			if (gio.getMasach().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				ds.remove(gio);
				return;
			}
		}
	}
	public void XoaAll() {
		ds.clear();
	}
	public void XoaChon(ArrayList<String> list) {
		for(String checkbox: list) {
			for(giohangbean g : ds) {
				if(g.getMasach().equals(checkbox)) {
					Xoa(checkbox);
				}
			}
		}
	}
	public void Sua(String ms, long sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getMasach().equals(ms)) {
				if(sl <= 0) {
					Xoa(ds.get(i).getMasach());
				}else {
					ds.get(i).setSoluong(sl);
					long g = ds.get(i).getGia();
					long tt = sl * g;
					ds.get(i).setThanhtien(tt);
					return;
				}
			}
		}
	}
	public long TongSach() {
		long tong = 0;
		for(giohangbean gio: ds) {
			tong += gio.getSoluong();
		}
		return tong;
	}
	public long TongTien() {
		long tongtien = 0;
		for(giohangbean gio : ds) {
			tongtien = tongtien + gio.getThanhtien();
		}
		return tongtien;
	}
}
