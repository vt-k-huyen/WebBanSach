package tam;

import java.util.ArrayList;
import java.util.List;

import bean.sachbean;

public class CGioHang {
	public List<Hang> ds = new ArrayList<Hang>();

	public void Them(String th, int gia, int sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getTenhang().toLowerCase().trim().equals(th.toLowerCase().trim())) {
				int slt = ds.get(i).getSoluong() + sl;
				ds.get(i).setSoluong(slt);
				int g = ds.get(i).getGia();
				int tt = slt * g;
				ds.get(i).setThanhtien(tt);
				return;
			}
		}
		Hang h = new Hang(th, gia, sl);
		ds.add(h);
	}
	public void Them2(String ms, int gia, int sl) {
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
	public void Xoa(String th) {
		for (Hang h : ds) {
			if (h.getTenhang().toLowerCase().trim().equals(th.toLowerCase().trim())) {
				ds.remove(h);
				return;
			}
		}
	}
	public void Sua(String th, int sl) {
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (ds.get(i).getTenhang().toLowerCase().trim().equals(th.toLowerCase().trim())) {
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
	
	public void XoaAll() {
		ds.clear();
	}
	public void Delete(String[] array) {
	}
	public long Tongtien() {
		int n = ds.size();
		long s = 0;
		for (int i = 0; i < n; i++) {
			s = s + ds.get(i).getThanhtien();
		}
		return s;
	}
}
