package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DB;

public class MemberDAO {

	public String loginCheck(String userid, String passwd) {
		String name = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();		// return DB connection
			String sql = "select name from member where userid = ? and passwd = ?";
			pstmt = conn.prepareStatement(sql);		// 1st question mark
			pstmt.setString(1, userid);						// 2nd question mark
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {		// if the record exists(success sign in)
				name = rs.getString("name");		// save name
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		
		return name;
	}
	
}
