package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds= new ArrayList<loaibean>();
		// Ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		//Tao cau lenh sql
		String sql = "select * from loai";
		// Tao cau lenh prepareSttement
		PreparedStatement cmd = kn.cn.prepareStatement(sql) ;
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		// Duyet rs de luu vao mang ds
		while (rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			ds.add(new loaibean(maloai,tenloai));
		}
		return ds;
	}
	public int Them(String maloai,String tenloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "insert into loai(maloai,tenloai) values(?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		return kq;
	}
	public int Sua(String maloai,String tenloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "update loai set tenloai = ? where maloai =? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tenloai);
		cmd.setString(2, maloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int Xoa(String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "delete from loai where maloai =? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
