package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.command;
import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;

public class MessageService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[MessageService]");

		// 받아오기
		String sender = request.getParameter("sender");
		String recipient = request.getParameter("recipient");
		String message = request.getParameter("message");

		System.out.println(sender + recipient + message);

		// 객체 생성
		Message vo = new Message(0, sender, recipient, message, null);
		int row = new MessageDAO().insertMessage(vo);

		if (row > 0) {
			System.out.println("메시지 전송 성공");
		} else {
			System.out.println("메시지 전송 실패");
		}
		return "Main.jsp";
	}

}
