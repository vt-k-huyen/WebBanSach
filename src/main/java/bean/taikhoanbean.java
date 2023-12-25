package bean;

public class taikhoanbean {
	private String tenTK;
	private String pass;
	private boolean roleAdmin;
	public String getTenTK() {
		return tenTK;
	}
	public void setTenTK(String tenTK) {
		this.tenTK = tenTK;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public boolean isRoleAdmin() {
		return roleAdmin;
	}
	public void setRoleAdmin(boolean roleAdmin) {
		this.roleAdmin = roleAdmin;
	}
	public taikhoanbean(String tenTK, String pass, boolean roleAdmin) {
		super();
		this.tenTK = tenTK;
		this.pass = pass;
		this.roleAdmin = roleAdmin;
	}
	public taikhoanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
