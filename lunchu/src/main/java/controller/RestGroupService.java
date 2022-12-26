package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MenuListDAO;
import model.MenuListDTO;
import model.RestGroupDAO;

/**
 * Servlet implementation class RestGroupService
 */
public class RestGroupService extends HttpServlet {
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
		PrintWriter out = response.getWriter();

		int groupseq = Integer.valueOf(request.getParameter("groupseq"));
		RestGroupDAO RGdao = new RestGroupDAO();

		ArrayList<Integer> restseq = RGdao.list(groupseq);

		MenuListDAO Rdao = new MenuListDAO();

		ArrayList<String> restNames = Rdao.getNames(restseq);

		out.print(restNames);

	}

}
