package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	MemberDTO result = null;

	public void getConn() {
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
		try {
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

	public int join(MemberDTO dto) {

		try {
			getConn();

			String sql = "insert into t_member values(?, ?, ?, ?, sysdate, ?,?)";
			psmt = conn.prepareStatement(sql);

			// 3-2 바인드 변수(?) 채우기
			psmt.setString(1, dto.getMemId());
			psmt.setString(2, dto.getMemPw());
			psmt.setString(3, dto.getMemAddr());
			psmt.setString(4, null);
			psmt.setString(6, sql);
			psmt.setString(7, "M");

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

	public MemberDTO login(MemberDTO dto) {

		try {
			getConn();

			String sql = "select * from t_member where mem_id=? and mem_pw=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMemId());
			psmt.setString(2, dto.getMemPw());

			rs = psmt.executeQuery();

			// ResultSet로 부터 원하는 데이터값 가져오기
			if (rs.next()) {
				String mem_id = rs.getString(1);
				String mem_pw = rs.getString(2);
				String mem_address = rs.getString(3);
				String mem_visit_rest = rs.getString(4);
				String mem_pref_cate = rs.getString(5);
				String mem_joindt = rs.getString(6);
				String mem_type = rs.getString(7);

				result = new MemberDTO(mem_id, mem_pw, mem_address, mem_visit_rest, mem_pref_cate, mem_joindt,
						mem_type);
			} 

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
}
