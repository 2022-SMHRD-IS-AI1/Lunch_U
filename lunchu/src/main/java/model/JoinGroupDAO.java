package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JoinGroupDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	MemberDTO result = null;

	public void getconn() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");

			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_4_1220_2";
			String db_pw = "smhrd2";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void close() {
		// 1. try catch
		String nextPage = "";
		try {
			// 2.
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public int joingroup(String member) {
		try {
			getconn();

			String sql = "insert into t_joingroup values(t_joingroup_seq.nextval, ?, t_group_seq.currval, sysdate)";
			psmt = conn.prepareStatement(sql);

			// 3-2 바인드 변수(?) 채우기
			psmt.setString(1, member);

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
