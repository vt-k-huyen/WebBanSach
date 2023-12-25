package bo;

import java.util.ArrayList;
import java.util.List;

import bean.giobean;
import tam.Hang;

public class giobo {
	public List<giobean> ds = new ArrayList<giobean>();
	public void Them(String ms, long gia,long sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getMasach().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				long slt = ds.get(i).getSoluong() + 1;
				ds.get(i).setSoluong(slt);
				long g = ds.get(i).getGia();
				long tt = slt * g;
				ds.get(i).setThanhtien(tt);
				return;
			}
		}
		giobean gio = new giobean(ms, gia, sl);
		ds.add(gio);
	}
	public void Xoa(String ms) {
		for (giobean gio : ds) {
			if (gio.getMasach().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				ds.remove(gio);
				return;
			}
		}
	}
	public void XoaAll() {
		ds.clear();
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
	public long TongTien() {
		long tongtien = 0;
		for(giobean gio : ds) {
			tongtien = tongtien + gio.getThanhtien();
		}
		return tongtien;
	}
}
