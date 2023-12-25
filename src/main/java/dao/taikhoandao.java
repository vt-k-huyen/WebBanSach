package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.taikhoanbean;

public class taikhoandao {
	public ArrayList<taikhoanbean> gettk() throws Exception{
		ArrayList<taikhoanbean> dstk = new ArrayList<taikhoanbean>();
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "select * from DangNhap";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String tenTK = rs.getString(1);
			String pass = rs.getString(2);
			boolean roleID = rs.getBoolean(3);
			taikhoanbean tk = new taikhoanbean(tenTK, pass, roleID);
			dstk.add(tk);	
		}
		rs.close();
		cmd.close();
		return dstk;
	}
	public taikhoanbean Timtk(String tenTK, String pass) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "select * from DangNhap where TenDangNhap = ? and MatKhau = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tenTK);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		taikhoanbean tk = null;
		while (rs.next()) {
			boolean roleID = rs.getBoolean(3);
			tk = new taikhoanbean(tenTK, pass, roleID);
		}
		return tk;
	}
}
