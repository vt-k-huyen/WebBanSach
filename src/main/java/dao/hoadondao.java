package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import org.omg.IOP.TAG_CODE_SETS;

import bean.hoadonbean;
import bean.loaibean;

public class hoadondao {
	ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
	public ArrayList<hoadonbean> gethoadon() throws Exception{
		/* ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>(); */
		// Ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		// Tao cau lenh sql
		String sql = "select * from hoadon";
		// Tao cau lenh prepareSttement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		// Duyet rs de luu vao mang ds
		while (rs.next()) {
			long mahd = rs.getLong("MaHoaDon");
			long makh = rs.getLong("makh");
			Date ngaymua = rs.getDate("ngaymua");
			Boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonbean(mahd, makh, ngaymua,damua));
		}
		
		rs.close();
		cmd.close();
		return ds;
	}
	public int themHD(long makh) throws Exception{
		String sql = "INSERT INTO hoadon(makh, NgayMua, damua) VALUES(?,?,'False')";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		java.util.Date date=new java.util.Date(); 
		cmd.setLong(1, makh);
		cmd.setDate(2, new java.sql.Date(date.getTime()));
		return cmd.executeUpdate();
	}
	public long getMaHD() throws Exception{
		String sql = "SELECT MAX(MaHoaDon) FROM hoadon";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		long ma = 0;
		if(rs.next()) {
			ma =  rs.getLong(1);
		}
		rs.close();
		cmd.close();
		return ma;
	}
	public hoadonbean timHD(long mahd) throws Exception{
		String sql = "SELECT * FROM hoadon WHERE MaHoaDon = ?";
		PreparedStatement cmd= ketnoidao.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs = cmd.executeQuery();
		hoadonbean hd=null;
		if(rs != null) {
			long makh = rs.getLong("makh");
			Date ngaymua = rs.getDate("ngaymua");
			boolean damua = rs.getBoolean("damua");
			hd = new hoadonbean(mahd, makh, ngaymua, damua);
		}
		/*
		 * ketnoidao.cn.close(); rs.close();
		 */
		cmd.close();
		return hd;
	}
	public void xacnhanHD(long mahd) throws Exception{
		/*
		 * ketnoidao kn = new ketnoidao(); kn.KetNoi();
		 */
		String sql = "UPDATE hoadon SET damua = 'True' WHERE MaHoaDon = ?";
		PreparedStatement cmd = ketnoidao.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		cmd.executeUpdate();
		cmd.close();
	}
}
