package bean;

public class giohangbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private String anh;
	private long gia;
	private long soluong;
	private long thanhtien;
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
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
	public void setThanhtien(long thanhtien) {
		this.thanhtien = soluong * gia;
	}
	
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String masach, String tensach, String tacgia, String anh, long gia,
			long soluong) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.anh = anh;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien = soluong * gia;
	}
	
}
