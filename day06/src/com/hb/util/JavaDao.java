package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JavaDao {
	// CRUD
	private String driver="oracle.jdbc.driver.OracleDriver";
	private String url="jdbc:oracle:thin:@203.236.209.193:1521:xe";
	private String id="scott";
	private String pw="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private void getConnection() {
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,id,pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<JavaDto> getSelectAll(){
		String sql="select * from guest02";
		ArrayList<JavaDto> alist = new ArrayList<JavaDto>();
		try {
			getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				JavaDto bean = new JavaDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				alist.add(bean);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		return alist;
	}
	
	public void insertOne(int sabun, String name, int pay){
		String sql="insert into guest02 values(?,?,sysdate,?)";
		getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setInt(3, pay);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	}
	
	public JavaDto selectOne(String idx){
		int sabun=Integer.parseInt(idx);
		String sql="select * from guest02 where sabun=?";
		JavaDto bean = new JavaDto();
		getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		
		return bean;
	}
	
//	public static void testDao(){
//		JavaDao dao = new JavaDao();
//		ArrayList<JavaDto> list = dao.getSelectAll();
//		for(int i=0; i<list.size(); i++){
//			JavaDto dto=list.get(i);
//			System.out.print("사번:"+dto.getSabun());
//			System.out.print("이름:"+dto.getName());
//			System.out.print("날짜:"+dto.getNalja());
//			System.out.println("금액:"+dto.getPay());
//		}
//	}
}















