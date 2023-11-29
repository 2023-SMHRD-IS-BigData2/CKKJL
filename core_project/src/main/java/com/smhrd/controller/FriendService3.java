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


@WebServlet("/FriendService3")
public class FriendService3 extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String applicant = request.getParameter("id3");

		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("vo");
		
		String acceptor = vo.getU_id();

		
		Friend user = new Friend(applicant, acceptor);
		
		int cnt = new FriendDAO().reject(user);
		
		if (cnt>0) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
			
		}
		response.sendRedirect("RealMain.jsp");

	}

}
