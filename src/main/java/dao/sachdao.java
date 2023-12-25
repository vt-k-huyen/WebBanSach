package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.omg.CORBA.PUBLIC_MEMBER;

import bean.loaibean;
import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		// Ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		// Tao cau lenh sql
		String sql = "select * from sach";
		// Tao cau lenh prepareSttement
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		// Duyet rs de luu vao mang ds
		while (rs.next()) {
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			long sl = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String maloai = rs.getString("maloai");
			String anh = rs.getString("anh");
			String tacgia = rs.getString("tacgia");
			ds.add(new sachbean(masach, tensach, tacgia, gia, sl, anh, maloai));
		}
		return ds;
	}
	public sachbean finByMS(String masach) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "select * from sach where masach = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		ResultSet rs = cmd.executeQuery();
		sachbean sach = null;
		if(rs.next()) {
			String tensach = rs.getString("tensach");
			long sl = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String maloai = rs.getString("maloai");
			String anh = rs.getString("anh");
			String tacgia = rs.getString("tacgia");
			sach = new sachbean(masach, tensach, tacgia, gia, sl, anh, maloai);
		}
		return sach;
	}
	public int Them(String masach,String tensach, String tacgia,  long gia, long soluong, String anh, String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "insert into sach(masach,tensach,tacgia,gia,soluong, maloai,anh) values(?,?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.setString(2, tensach);
		cmd.setString(3, tacgia);
		cmd.setLong(4, gia);
		cmd.setLong(5, soluong);
		cmd.setString(6, maloai);
		cmd.setString(7, anh);
		int kq = cmd.executeUpdate();
		cmd.close();
		return kq;
	}
	public int Sua(String masach,String tensach, String tacgia,  long gia, long soluong, String anh, String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "update sach set tensach = ?, tacgia = ?, gia = ?, soluong =? , maloai = ?, anh = ?  where masach=? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tensach);
		cmd.setString(2, tacgia);
		cmd.setLong(3, gia);
		cmd.setLong(4, soluong);
		cmd.setString(6, anh);
		cmd.setString(5,maloai);
		cmd.setString(7, masach);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int Xoa(String masach) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "delete from sach where masach = ? and masach not in (select MaSach from ChiTietHoaDon) ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
