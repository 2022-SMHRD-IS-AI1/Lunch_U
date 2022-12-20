package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.connector.Response;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;

	public void getconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_4_1220_1";
			String db_pw = "smhrd2";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

	public int join(MemberDTO dto) {

		try {
			getconn();

			String sql = "insert into web_member values(?, ?, ?, ?, sysdate, ?,?)";
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
}
