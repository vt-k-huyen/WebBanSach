package bean;

public class giobean {
	private String masach;
	private long gia;
	private long soluong;
	private long thanhtien;
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long tt) {
		this.thanhtien = tt;
	}
	public giobean(String masach, long gia, long soluong) {
		super();
		this.masach = masach;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien =  soluong*gia;
	}
	public giobean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
