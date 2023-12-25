package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ketnoidao {
	public static Connection cn;
    public void KetNoi() {
   	 try {
   		 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   		 String st="jdbc:sqlserver://DESKTOP-6OF8R55\\SQLEXPRESS:1433; "+" databaseName=QLSach; user=sa; password=1234";
   		cn=DriverManager.getConnection(st);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
	public static void main(String[] args) {
		ketnoidao cs= new ketnoidao();
		cs.KetNoi();
	}
}
