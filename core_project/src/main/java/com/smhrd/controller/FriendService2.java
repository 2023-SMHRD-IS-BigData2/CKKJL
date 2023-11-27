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
		
		System.out.println("여기까지 왔다");
		// 친구 수락
		String acceptor = request.getParameter("id");
		String acc_nick = request.getParameter("nick");
		String acc_pic = request.getParameter("pic");
		
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");

		String applicant = vo.getU_id();
		String app_nick = vo.getNick();
		String app_pic = vo.getPic();


		
		Friend user = new Friend(applicant, app_nick, app_pic, acceptor, acc_nick, acc_pic);
		
		int cnt = new FriendDAO().accept(user);
		
		if (cnt==2) {
			System.out.println("친구 추가 성공");
		} else {
			System.out.println("친구 추가 실패");
		}
		
		response.sendRedirect("RealMain.jsp");
		
	}

}