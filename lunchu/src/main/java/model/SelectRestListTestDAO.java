package model;

import java.util.ArrayList;

public class SelectRestListTestDAO extends MemberDAO{
	

	public ArrayList<SelectRestListTestDTO> restList() {
		ArrayList<SelectRestListTestDTO> list = new ArrayList<SelectRestListTestDTO>();
		try {
			getconn();
			String sql = "select * from t_restaurant";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				list.add(new SelectRestListTestDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
		
	}

}
