package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Friend;
import com.smhrd.model.FriendDAO;
import com.smhrd.model.Member;


@WebServlet("/FriendService2")
public class FriendService2 extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 친구 수락
		String acceptor = request.getParameter("friend");
		String acc_nick = request.getParameter("nick");
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");

		String applicant = vo.getU_id();
		String app_nick = vo.getNick();

		
		Friend user = new Friend(applicant, app_nick, acceptor,acc_nick);
		
		int cnt = new FriendDAO().accept(user);
		
	}

}