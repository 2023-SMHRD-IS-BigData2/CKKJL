package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.command;
import com.smhrd.model.MessageDAO;

public class DelMessageAllService implements command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String recipient = request.getParameter("recipient");
		int cnt = new MessageDAO().deleteAllMessage(recipient);

		if (cnt > 0) {
			System.out.println("전체삭제성공");
		} else {
			System.out.println("전체삭제실패");
		}
		return "Main.jsp";
	}

}
