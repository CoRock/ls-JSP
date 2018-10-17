package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import config.DB;

// import JDBC

public class BookDAO {

	// singleton
	public static BookDAO dao;
	
	// a private constructor
	private BookDAO() { }
	
	public static BookDAO getDao() {
		if (dao == null) {
			dao = new BookDAO();
		}
		return dao;
	}

	public ArrayList<BookDTO> bookList() {
		ArrayList<BookDTO> items = new ArrayList<>();
		Connection conn = null;				// DB 접속 객체
		PreparedStatement pstmt = null;	// SQL 실행 객체
		ResultSet rs = null;						// 결과셋 처리 객체
		
		try {
			conn = DB.dbConn();			// return database connection
			String sql = "select * from book";
			// SQL 실행 객체 생성
			pstmt = conn.prepareStatement(sql);
			// SQL 실행 후 결과셋이 rs에 return됨
			rs = pstmt.executeQuery();
			
			// 다음 레코드가 존재하면 true
			while (rs.next()) {
				BookDTO dto = new BookDTO();
				
				// rs.get자료형("필드명")
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getString("author"));
				dto.setPrice(rs.getInt("price"));
				dto.setQty(rs.getInt("qty"));
				
				// add dto to array list
				items.add(dto);
				
			/*
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String author = rs.getString("author");
				int price = rs.getInt("price");
				int qty = rs.getInt("qty");
				
				items.add(new BookDTO(id, title, author, price, qty));
			*/
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// rs - pstmt - conn: 역순으로 닫음
			try {
				if (rs != null)			rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null)		pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)		conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return items;
	}
	
}
