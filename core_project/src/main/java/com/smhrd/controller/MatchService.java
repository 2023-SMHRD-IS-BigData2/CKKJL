package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;

@WebServlet("/MatchService")
public class MatchService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");
		String nick = vo.getNick();
		
		String starttime = request.getParameter("starttime");
		String finishtime = request.getParameter("finishtime");
		String peoplenum = request.getParameter("peoplenum");
		String level = request.getParameter("level");
		String comment = request.getParameter("comment");
	
		System.out.println(starttime + finishtime + peoplenum + level + comment + nick);
	
		session.setAttribute("starttime", starttime);
		session.setAttribute("finishtime", finishtime);
		session.setAttribute("peoplenum", peoplenum);
		session.setAttribute("level", level);
		session.setAttribute("comment", comment);
		
<<<<<<< HEAD
		// int cnt = new 
=======
		//int cnt = new ;
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-IS-BigData2/CKKJL.git
		// MatchText vo = new MatchText(starttime, finishtime, people,)
		
		
		
		
		response.sendRedirect("ViewMatch.jsp");
	
	
	}
}
