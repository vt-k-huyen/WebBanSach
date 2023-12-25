package dao;

import java.security.interfaces.RSAKey;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.el.parser.ArithmeticNode;

import bean.chitiethdbean;
import bean.hoadonbean;

public class chitiethdao {
	public int themCTHD(String masach, int slmua, long mahd) throws Exception{
		String sql = "INSERT INTO ChiTietHoaDon(MaSach, SoLuongMua, MaHoaDon, damua) VALUES (?, ?, ?,'False')";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.setInt(2, slmua);
		cmd.setLong(3, mahd);
		int kq = cmd.executeUpdate();
		/*
		 * cmd.close(); ketnoidao.cn.close();
		 */
		cmd.close();
		return kq;
	}
	public ArrayList<chitiethdbean> getCTHD(long mahd) throws Exception{ 
		ArrayList<chitiethdbean> ds = new ArrayList<chitiethdbean>();
		String sql = "SELECT * FROM ChiTietHoaDon WHERE MaHoaDon = ?";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long mact = rs.getLong("MaChiTietHD");
			String ms = rs.getString("MaSach");
			int sl = rs.getInt("SoLuongMua");
			Boolean damua = rs.getBoolean("damua");
			ds.add(new chitiethdbean(mact,ms,sl,mahd,damua));
		}
		cmd.close();
		return ds;
	}
	public void xacnhanCTHD(long mahd) throws Exception{
		String sql = "UPDATE ChiTietHoaDon SET damua = 'True' WHERE MaHoaDon = ?";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		cmd.executeUpdate();
		cmd.close();
	}
	public void Sua(long mact) throws Exception{
		String sql = "UPDATE ChiTietHoaDon SET damua = 'True' WHERE MaChiTietHD = ?";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		cmd.setLong(1, mact);
		cmd.executeUpdate();
		cmd.close();
	}
}
