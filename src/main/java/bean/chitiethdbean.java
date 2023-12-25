package bean;

public class chitiethdbean {
	private long mact;
	private String masach;
	private int slmua;
	private long mahd;
	private boolean damua;
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public long getMact() {
		return mact;
	}
	public void setMact(long mact) {
		this.mact = mact;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public int getSlmua() {
		return slmua;
	}
	public void setSlmua(int slmua) {
		this.slmua = slmua;
	}
	public long getMahd() {
		return mahd;
	}
	public void setMahd(long mahd) {
		this.mahd = mahd;
	}
	
	public chitiethdbean(long mact, String masach, int slmua, long mahd, boolean damua) {
		super();
		this.mact = mact;
		this.masach = masach;
		this.slmua = slmua;
		this.mahd = mahd;
		this.damua = damua;
	}
	public chitiethdbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
