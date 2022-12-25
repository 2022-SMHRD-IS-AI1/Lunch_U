package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RestGroupDAO;

/**
 * Servlet implementation class Add2GroupService
 */
public class Add2GroupService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String[] groupseq = request.getParameterValues("groupcheck");
		int restseq = Integer.valueOf("1");
		// requst.getParameter("restseq");

		RestGroupDAO RGdao = new RestGroupDAO();

		int cnt = 0;

		for (String i : groupseq) {
			cnt += RGdao.add(restseq, Integer.valueOf(i));
		}

		PrintWriter out = response.getWriter();

		if (cnt == groupseq.length) {
			out.print(
					"<script>alert('그룹에 추가를 성공했습니다.');opener.parent.location.relodad('add2group.jsp');window.close();</script>");
			out.close();
		}

	}

}
