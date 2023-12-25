package bean;

import java.util.Date;

public class lichsumuabean {
	private long makh;
	private String masach;
	private String tensach;
	private int slmua;
	private long gia;
	private long thanhtien;
	private Date ngaymua;
	private boolean damua;
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
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
	public int getSlmua() {
		return slmua;
	}
	public void setSlmua(int slmua) {
		this.slmua = slmua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public lichsumuabean(long makh, String masach, String tensach, int slmua, long gia, long thanhtien, Date ngaymua,
			boolean damua) {
		super();
		this.makh = makh;
		this.masach = masach;
		this.tensach = tensach;
		this.slmua = slmua;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.ngaymua = ngaymua;
		this.damua = damua;
	}
	public lichsumuabean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
