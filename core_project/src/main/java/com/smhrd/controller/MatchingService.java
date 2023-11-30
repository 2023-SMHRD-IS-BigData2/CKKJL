package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Matching;
import com.smhrd.model.MatchingDAO;
import com.smhrd.model.Member;

@WebServlet("/MatchingService")
public class MatchingService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int cnt = 0;
		int f_index = Integer.parseInt(request.getParameter("f_index"));

		String challenger = request.getParameter("challenger");
		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		String writer = vo.getU_id();
		Matching matching = new Matching(writer, challenger, f_index);

		cnt += new MatchingDAO().sacramentMatching(matching);
		cnt += new MatchingDAO().delAllMatching(f_index);
		if (cnt > 1) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		response.sendRedirect("RealMain.jsp");

	}

}
