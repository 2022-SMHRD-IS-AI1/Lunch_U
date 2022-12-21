package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jakarta.servlet.annotation.WebServlet;
import model.GroupDAO;
import model.GroupDTO;
import model.MemberDTO;

/**
 * Servlet implementation class CreateGroup
 */
@WebServlet("/CreateGroup")
public class CreateGroup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		String id = info.getMemId();
//		String gName = request.getAttribute("gname");
		
		GroupDAO dao = new GroupDAO();
//		GroupDTO dto = new GroupDTO(gName, id);
		
//		dao.create(dto);
	}

}
