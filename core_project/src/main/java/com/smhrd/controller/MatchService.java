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

@WebServlet("/MatchService")
public class MatchService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("member");
		String nick = vo.getNick();
		
		String starttime = request.getParameter("starttime");
		int start = Integer.valueOf(starttime.split(":")[0]);
		String finishtime = request.getParameter("finishtime");
		int finish = Integer.valueOf(finishtime.split(":")[0]);
		String peoplenum = request.getParameter("peoplenum");
		String level = request.getParameter("level");
		String comment = request.getParameter("comment");
	
		System.out.println(starttime + finishtime + peoplenum + level + comment + nick);
	
		Mercenary_Match mercenary_match = null;
		mercenary_match = new Mercenary_Match(0, date, start, finish, peoplenum, level, vo.getTeam());
		if (comment != null) {
			mercenary_match.setWriting(comment);
		}
		session.setAttribute("Mercenary_match", mercenary_match);
		
		
		
		response.sendRedirect("ViewMatch.jsp");
	
	
	}
}
