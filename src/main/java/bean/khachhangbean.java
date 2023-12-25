package bean;

public class khachhangbean {
	private String tendn;
	private String matkhau;
	private String diachi;
	private String sdt;
	private String email;
	private String hoten;
	private long makh;
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public khachhangbean(String tendn, String matkhau, String diachi, String sdt, String email, String hoten,
			long makh) {
		super();
		this.tendn = tendn;
		this.matkhau = matkhau;
		this.diachi = diachi;
		this.sdt = sdt;
		this.email = email;
		this.hoten = hoten;
		this.makh = makh;
	}
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
