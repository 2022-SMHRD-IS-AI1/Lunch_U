package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jakarta.servlet.annotation.WebServlet;
import model.GroupDAO;
import model.JoinGroupDAO;
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
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = response.getWriter();
		
		String groupname = request.getParameter("groupname");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String id = info.getMemId();
		
		GroupDAO Gdao = new GroupDAO();
		JoinGroupDAO JGdao = new JoinGroupDAO();
		
		String[] members = request.getParameterValues("memberId");
		
		int cnt = Gdao.create(groupname, id);
		int cnt2 = 0;
		if(cnt > 0) {
			for (String i:members) {
				cnt2 = JGdao.joingroup(i);
				if (cnt2 <= 0) {
					writer.println("<script>alert('그룹 생성 실패'); location.href='creategroup.jsp';</script>"); 
					writer.close();
				} else {
					writer.println("<script>alert('그룹이 생성되었습니다.'); location.href='groups.jsp';</script>"); 
					writer.close();
				}
			}
		} else {
			writer.println("<script>alert('그룹 생성 실패'); location.href='creategroup.jsp';</script>"); 
			writer.close();
		}
	}

}
