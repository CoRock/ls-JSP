package emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import config.DB;

public class EmpDAO {

	public void insert() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DB.getConn();
			conn.setAutoCommit(false);	// auto commit 해제
			
			long before = System.currentTimeMillis();
			for (int i = 1; i <= 10000; i++) {
				String sql = "insert into emp2 (empno, ename, deptno) values (?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				pstmt.setString(2, "kim" + i);
				pstmt.setInt(3, i);
				pstmt.executeUpdate();
				pstmt.close();
			}
			long after = System.currentTimeMillis();
			
			conn.commit();	// 수동 커밋
			conn.setAutoCommit(true);	// auto commit으로 설정
			System.out.println("실행시간: " + (after - before));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if (conn != null) conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			} finally {
				try {
					if (pstmt != null) pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				try {
					if (conn != null) conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	}
	
}
