package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;


import bean.lichsumuabean;

public class lichsumuadao {
	public ArrayList<lichsumuabean> ds = new ArrayList<lichsumuabean>();
	public ArrayList<lichsumuabean> getLSM(long makh) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.KetNoi();
		String sql = "SELECT * FROM [dbo].[View_lichsumuahang] WHERE makh = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			int slmua = rs.getInt("SoLuongMua");
			long gia = rs.getLong("gia");
			long thanhtien = rs.getLong("ThanhTien");
			Date ngaymua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			lichsumuabean lsm = new lichsumuabean(makh, masach, tensach, slmua, gia, thanhtien, ngaymua, damua);
			ds.add(lsm);
		}
		cmd.close();
		kn.cn.close();
		return ds;
	}
}
