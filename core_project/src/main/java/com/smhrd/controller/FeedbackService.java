package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MatchingDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Team;
import com.smhrd.model.TeamDAO;

import lombok.NonNull;

@WebServlet("/FeedbackService")
public class FeedbackService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String target = request.getParameter("target");
		int f_index = Integer.parseInt(request.getParameter("index")) ;
		Member team = new MemberDAO().login(target);
		int t_index = team.getTeam_index();

		int e_time = Integer.parseInt(request.getParameter("time"));
		int e_level = Integer.parseInt(request.getParameter("level"));
		int e_money = Integer.parseInt(request.getParameter("money"));
		int e_manner = Integer.parseInt(request.getParameter("manner"));
		int e_respon = Integer.parseInt(request.getParameter("respon"));
		
		Team feedback = new Team(t_index,e_time,e_level,e_money,e_manner,e_respon);
		
		int cnt =new TeamDAO().updateTeamSum(feedback);
		cnt = new MatchingDAO().delMatch(f_index);
		
		if(cnt>0) {
			response.sendRedirect("RealMyPage.jsp");
		} else {
			response.sendRedirect("RealMain.jsp");
		}
		
	}

}
