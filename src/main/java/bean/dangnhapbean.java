package bean;

public class dangnhapbean {
	private String tendn;
	private String matkhau;
	public String getMakh() {
		return tendn;
	}
	public void setMakh(String tendn) {
		this.tendn = tendn;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public dangnhapbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public dangnhapbean(String tendn, String matkhau) {
		super();
		this.tendn = tendn;
		this.matkhau = matkhau;
	}
	
}
