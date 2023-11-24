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


@WebServlet("/FriendService")
public class FriendService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String friend = request.getParameter("friend");
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");
		String id = vo.getId();

		
		Friend user = new Friend(id,friend);
		
		int row = new FriendDAO().apply(user);
		
	}

}