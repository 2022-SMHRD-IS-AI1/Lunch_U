package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class replyDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	
	public void getConn() {
		
		try {
			
			Class.forName("oracle.jdbc.OracleDriver");

			
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_4_1220_2";
			String db_pw = "smhrd2"; 
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public void close() {
		
		try {
			
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	
	public int join(replyDTO dto) {

		try {
			getConn();

			String sql = "insert into t_review values(?, ?, ?, ?,?,?)";
			psmt = conn.prepareStatement(sql);

			// 3-2 바인드 변수(?) 채우기
			psmt.setInt(1, dto.getRv_seq());
			psmt.setInt(2, dto.getRest_seq());
			psmt.setString(3, dto.getRv_content());
			psmt.setDouble(4, dto.getRv_rating());
			psmt.setDate(5, (Date) dto.getRv_dt());
			psmt.setString(6,  dto.getMem_id());
			
			
			// 4. 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	
	
	
	
}
