package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dangnhapbean;

public class dangnhapdao {
	public ArrayList<dangnhapbean> gettk() throws Exception{
		ArrayList<dangnhapbean> ds = new ArrayList<dangnhapbean>();
		// Ket noi vao csdl
				ketnoidao kn = new ketnoidao();
				kn.KetNoi();
				// Tao cau lenh sql
				String sql = "select * from KhachHang";
				// Tao cau lenh prepareSttement
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				// thuc hien cau lenh
				ResultSet rs = cmd.executeQuery();
				// Duyet rs de luu vao mang ds
				while (rs.next()) {
					String tendn = rs.getString("tendn");
					String matkhau = rs.getString("matkhau");
					ds.add(new dangnhapbean(tendn,matkhau));
				}
				return ds;
	}
	public String gethoten(String tendn, String matkhau) throws Exception{
		String hoten = null;
		// Ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		// Tao cau lenh sql
		String sql = "select * from KhachHang where tendn = ? and metkhau = ?";
		// Tao cau lenh prepareSttement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);		
		cmd.setString(1, tendn);
		cmd.setString(2, matkhau);
		ResultSet rs = cmd.executeQuery();
		if(rs != null) {
			hoten = rs.getString("hoten");
		}
		return hoten;
	}
}
