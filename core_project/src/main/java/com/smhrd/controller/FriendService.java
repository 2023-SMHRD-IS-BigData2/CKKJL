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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 친구 추가
		String acceptor = request.getParameter("id");

		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		
		String applicant = vo.getU_id();

		if (applicant.equals(acceptor)) {
			
			response.sendRedirect("RealMain.jsp");
			
		} else {
			Friend user = new Friend(applicant,  acceptor );

			int row = new FriendDAO().set(user);
			
			if (row == 0) {
				row = new FriendDAO().apply(user);
				if (row > 0) {
					System.out.println("친구 추가 전송");
				} else {
					System.out.println("친구 추가 실패");
				}
			} else {
				System.out.println("중복 친구 추가");
			}
				
			response.sendRedirect("RealMain.jsp");
		}

	}

}