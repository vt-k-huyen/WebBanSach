package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.adminxacnhanbean;

public class adminxacnhandao {
	public ArrayList<adminxacnhanbean> getXN() throws Exception{
		ArrayList<adminxacnhanbean> dsxn = new ArrayList<adminxacnhanbean>();
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "SELECT * FROM [dbo].[View_adminxacnhan]";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long maCT = rs.getLong("MaChiTietHD");
			String hoTen = rs.getString("hoten");
			String tenSach = rs.getString("tensach");
			long gia = rs.getLong("gia");
			int soLuong = rs.getInt("SoLuongMua");
			long thanhTien = rs.getLong("thanhtien");
			boolean damua = rs.getBoolean("damua");
			adminxacnhanbean xn = new adminxacnhanbean(maCT, hoTen, tenSach, gia, soLuong, thanhTien, damua);
			dsxn.add(xn);
		}
		return dsxn;
	}
}
