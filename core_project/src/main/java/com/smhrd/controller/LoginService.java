package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.FeedDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pic = request.getParameter("pic");
		String nick = request.getParameter("nick");

		System.out.println(id + pic + nick);

		Member vo = new Member(id, nick, pic);

		int cnt = new MemberDAO().join(vo);

		if (cnt > 0) {
			System.out.println("신규회원");
		} else {
			System.out.println("기존회원");
			vo = new MemberDAO().login(vo.getId());
		}

		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		//member로 바꿔놓음
		response.sendRedirect("./RealMain.jsp");

	}

}