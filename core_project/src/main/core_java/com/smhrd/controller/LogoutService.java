package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.command;

public class LogoutService implements command{

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// session 값 지우고 Main.jsp로 이동

					HttpSession session = request.getSession();
					// 전체 다 지우기
					// session.invalidate();
					session.removeAttribute("loginMember");
		return "Main.jsp";
	}
	
}
