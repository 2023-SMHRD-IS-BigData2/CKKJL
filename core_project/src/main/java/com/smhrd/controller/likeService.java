package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.FeedDAO;
import com.smhrd.model.FeedLike;
import com.smhrd.model.Member;

@WebServlet("/likeService")
public class likeService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ck = 0;
		int num = 0;
		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		ck = Integer.valueOf(request.getParameter("check"));
		num = Integer.valueOf(request.getParameter("num"));
		System.out.println(ck+num);
		FeedLike fl = new FeedLike(num, vo.getU_id());
		
		switch (ck) {
		case 1:
			new FeedDAO().likedown(fl);
			break;
		case 2:
			new FeedDAO().likeup(fl);
			
			break;
		default:
			System.out.println("이거는 뭐죠?!");
			break;
		}
		response.sendRedirect("RealMain.jsp");
	}

}
