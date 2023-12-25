package bean;

public class adminxacnhanbean {
	private long maCT;
	private String hoTen;
	private String tenSach;
	private long gia;
	private int soLuong;
	private long thanhTien;
	private boolean daMua;
	public long getMaCT() {
		return maCT;
	}
	public void setMaCT(long maCT) {
		this.maCT = maCT;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public boolean isDaMua() {
		return daMua;
	}
	public void setDaMua(boolean daMua) {
		this.daMua = daMua;
	}
	public adminxacnhanbean(long maCT, String hoTen, String tenSach, long gia, int soLuong, long thanhTien,
			boolean daMua) {
		super();
		this.maCT = maCT;
		this.hoTen = hoTen;
		this.tenSach = tenSach;
		this.gia = gia;
		this.soLuong = soLuong;
		this.thanhTien = thanhTien;
		this.daMua = daMua;
	}
	public adminxacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
