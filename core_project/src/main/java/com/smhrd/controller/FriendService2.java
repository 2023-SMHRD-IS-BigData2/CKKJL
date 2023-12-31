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
		String acceptor = request.getParameter("id2");
		
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");

		String applicant = vo.getU_id();

		
		Friend user = new Friend(applicant, acceptor);
		
		int cnt = new FriendDAO().accept(user);
		
		if (cnt==2) {
			System.out.println("친구 추가 성공");
		} else {
			System.out.println("친구 추가 실패");
		}
		
		response.sendRedirect("RealMain.jsp");
		
	}

}