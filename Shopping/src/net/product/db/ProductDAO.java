package net.product.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDAO {
	
	Connection conn = null;
	PreparedStatement pt = null;
	ResultSet re = null;

	
	public ProductDAO() { //디비 연결
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		conn = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	//디비에 상품 등록하기
	public boolean insertProduct(ProductBean productbean) throws SQLException {
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
		java.sql.Timestamp date = java.sql.Timestamp.valueOf(productbean.getProduct_date());
		try {
			pt = conn.prepareStatement(sql);
			
			pt.setInt(1, productbean.getProduct_code());
			pt.setString(2, productbean.getProduct_category());
			pt.setString(3, productbean.getProduct_name());
			pt.setInt(4, productbean.getProduct_count());
			pt.setString(5, productbean.getProduct_image());
			pt.setInt(6, productbean.getProduct_cost());
			pt.setInt(7, productbean.getProduct_price());
			pt.setString(8, productbean.getProduct_detail());
			pt.setTimestamp(9, date);
			
			pt.executeUpdate();
			
			return true;
			
		}catch(RuntimeException er) {
			er.printStackTrace();
		}finally {
			try {
				if(pt!=null) {conClose(); pt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	//상품 수정
	public boolean updateProduct(ProductBean productbean) throws SQLException {
		String sql = "update product "
				+ "set product_code = ?,"
					+ "product_category = ?,"
					+ "product_name = ?,"
					+ "product_count = ?,"
					+ "product_image = ?,"
					+ "product_cost = ?,"
					+ "product_price = ?,"
					+ "product_detail = ?,"
					+ "product_date = ?"
				+ "where product_code ="+productbean.getProduct_code();
		java.sql.Timestamp date = java.sql.Timestamp.valueOf(productbean.getProduct_date());
		try {
			pt = conn.prepareStatement(sql);
			
			pt.setInt(1, productbean.getProduct_code());
			pt.setString(2, productbean.getProduct_category());
			pt.setString(3, productbean.getProduct_name());
			pt.setInt(4, productbean.getProduct_count());
			pt.setString(5, productbean.getProduct_image());
			pt.setInt(6, productbean.getProduct_cost());
			pt.setInt(7, productbean.getProduct_price());
			pt.setString(8, productbean.getProduct_detail());
			pt.setTimestamp(9, date);
			
			pt.executeUpdate();
			
			return true;
			
		}catch(RuntimeException er) {
			er.printStackTrace();
		}finally {
			try {
				if(pt!=null) {conClose(); pt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	//상품상세정보용
	public List detailProduct(int code) throws SQLException{
		String sql = "select * from product where product_code = "+1;
		List list = new ArrayList();
		
		try {
			pt = conn.prepareStatement(sql);
			re = pt.executeQuery();
			
			while(re.next()) {
				ProductBean productbean = new ProductBean();
				Date pd = re.getTimestamp("product_date");
				String date = String.valueOf(pd);
				
				productbean.setProduct_code(re.getInt("product_code"));
				productbean.setProduct_category(re.getString("product_category"));
				productbean.setProduct_name(re.getString("product_name"));
				productbean.setProduct_count(re.getInt("product_count"));
				productbean.setProduct_image(re.getString("product_image"));
				productbean.setProduct_cost(re.getInt("product_cost"));
				productbean.setProduct_price(re.getInt("product_price"));
				productbean.setProduct_detail(re.getString("product_detail"));
				productbean.setProduct_date(date);
				list.add(productbean);
			}
			
			return list;
		}catch(RuntimeException er) {
			er.printStackTrace();
		}finally {
			try {
				if(pt!=null) {conClose(); pt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	//상품 검색 상품이름용 
	public String researchProduct(String id) {
		return "x";
	}
	
	//상품 검색 코드용 
	public String researchProduct(int code) {
		return "x";
	}
	
	//상품 삭제
	public boolean deleteProduct(int code) throws SQLException {
		String sql = "delete from product where product_code = ?";
		try {
			pt = conn.prepareStatement(sql);
			pt.setInt(1, code);
			pt.executeUpdate();
			
			return true;
			
		}catch(RuntimeException er) {
			er.printStackTrace();
		}finally {
			try {
				if(pt!=null) {conClose(); pt.close();}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	//커넥트 닫기
	public void conClose() {
		try {
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
