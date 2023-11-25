package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;

@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			System.out.println(cookies[i]);
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}

		session.invalidate();
		String path;
		path = "https://kauth.kakao.com/oauth/logout";
	    path +=    "?client_id=eefca775da363abc546f57a131ec1863&logout_redirect_uri=http://localhost:8081/core_project/RealMain.jsp";
		response.sendRedirect(path);

	}

}