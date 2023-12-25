package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.chitiethdbean;
import bean.khachhangbean;

public class khachhangdao {
	public ArrayList<khachhangbean> getKH() throws Exception{
		ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
		String sql = "SELECT * FROM KhachHang";
		PreparedStatement cmd = ketnoidao.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String email = rs.getString("email");
			String sodt = rs.getString("sodt");
			String tendn = rs.getString("tendn");
			String pass = rs.getString("pass");
			ds.add(new khachhangbean(tendn, pass, diachi, sodt, email, hoten, makh));
		}
		return ds;
	}
	public khachhangbean ktdn(String tendn, String matkhau) throws Exception{
		// Ket noi vao csdl
				ketnoidao kn = new ketnoidao();
				kn.KetNoi();
				// Tao cau lenh sql
				String sql = "select * from KhachHang where tendn = ? and pass = ?";
				// Tao cau lenh prepareSttement
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				cmd.setString(2, matkhau);
				// thuc hien cau lenh
				ResultSet rs = cmd.executeQuery();
				// Duyet rs de luu vao mang ds
				khachhangbean kh = null;
				if (rs.next()) {
					String diachi = rs.getString("diachi");
					String sdt = rs.getString("sodt");
					String email = rs.getString("email");
					String hoten = rs.getString("hoten");
					long makh = rs.getLong("makh");
					kh = new khachhangbean(tendn, matkhau, diachi, sdt, email, hoten, makh);
				}
				return kh;
	}
	public long themKH(String tendn, String matkhau, String diachi, String sdt, String email, String hoten) throws Exception {
		String sql = "INSERT INTO KhachHang(hoten, diachi, sodt, email, tendn, pass) VALUES (?,?,?,?,?,?)";
		PreparedStatement cmd = ketnoidao.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, diachi);
		cmd.setString(3, sdt);
		cmd.setString(4, email);
		cmd.setString(5, tendn);
		cmd.setString(6, matkhau);
		return cmd.executeUpdate();
	}
	public khachhangbean kttk(String tendn) throws Exception{
		// Ket noi vao csdl
				ketnoidao kn = new ketnoidao();
				kn.KetNoi();
				// Tao cau lenh sql
				String sql = "select * from KhachHang where tendn = ? ";
				// Tao cau lenh prepareSttement
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				// thuc hien cau lenh
				ResultSet rs = cmd.executeQuery();
				// Duyet rs de luu vao mang ds
				khachhangbean kh = null;
				if (rs.next()) {
					String diachi = rs.getString("diachi");
					String sdt = rs.getString("sodt");
					String email = rs.getString("email");
					String hoten = rs.getString("hoten");
					long makh = rs.getLong("makh");
					String matkhau = rs.getString("pass");
					kh = new khachhangbean(tendn, matkhau, diachi, sdt, email, hoten, makh);
				}
				return kh;
	}
	

}
