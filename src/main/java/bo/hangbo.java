package bo;

import java.util.ArrayList;
import java.util.List;

import tam.Hang;

public class hangbo {
	public List<Hang> ds = new ArrayList<Hang>();
	public void Them(String ms, int gia, int sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getTenhang().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				int slt = ds.get(i).getSoluong() + 1;
				ds.get(i).setSoluong(slt);
				int g = ds.get(i).getGia();
				int tt = slt * g;
				ds.get(i).setThanhtien(tt);
				return;
			}
		}
		Hang h = new Hang(ms, gia, sl);
		ds.add(h);
	}
	public void Xoa(String ms) {
		for (Hang h : ds) {
			if (h.getTenhang().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				ds.remove(h);
				return;
			}
		}
	}
	public void Sua(String ms, int sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getTenhang().toLowerCase().trim().equals(ms.toLowerCase().trim())) {
				if(sl <= 0) {
					Xoa(ds.get(i).getTenhang());
				}else {
					ds.get(i).setSoluong(sl);
					int g = ds.get(i).getGia();
					int tt = sl * g;
					ds.get(i).setThanhtien(tt);
					return;
				}
			}
		}
	}
	
}
