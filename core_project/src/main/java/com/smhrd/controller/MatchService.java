package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.Mercenary_Match;
import com.smhrd.model.Mercenary_MatchDAO;

@WebServlet("/MatchService")
public class MatchService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		

		Member vo = (Member)session.getAttribute("member_vo");

		int mm = (int) session.getAttribute("mm");
		String starttime = request.getParameter("starttime");
		String start = starttime.split(":")[0];
		String finishtime = request.getParameter("finishtime");
		String finish = finishtime.split(":")[0];
		String peoplenum = request.getParameter("peoplenum");
		String level = request.getParameter("level");
		String comment = request.getParameter("comment");
		String matchDay = request.getParameter("matchDay");
		System.out.println(mm + matchDay + starttime + finishtime + peoplenum + level + comment );
	
		Mercenary_Match mercenary_match = null;
		mercenary_match = new Mercenary_Match(mm, matchDay, start, finish, peoplenum, level, vo.getTeam_index());
		if (comment != null) {
			mercenary_match.setWriting(comment);
		}
		System.out.println("hi"+ mercenary_match.toString());
		int ck = new Mercenary_MatchDAO().makeMEMA(mercenary_match);
		if (ck != 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패!");
		}
		
		
		response.sendRedirect("ViewMatch.jsp");
	
	
	}
	
}