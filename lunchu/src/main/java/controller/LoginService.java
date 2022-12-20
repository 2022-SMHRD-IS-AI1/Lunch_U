package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

/**
 * Servlet implementation class loginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		// 2. 데이터 가져오기
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");

		// 3. db에 데이터 연결하기 - > MemberDAO 접근 -> login 기능 생성후 -> 연결
		MemberDAO dao = new MemberDAO();
		// dao.login(email, pw);

		MemberDTO dto = new MemberDTO(mem_id, mem_pw);

		MemberDTO result = dao.login(dto);
		String nextPage = "";

		response.setContentType("text/html; charset=UTF-8");
		if (result != null) {
			// Main -> 로그인된 회원의 정보를 저장후 이동
			HttpSession session = request.getSession();
			session.setAttribute("info", result);

			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} 

	}

}
