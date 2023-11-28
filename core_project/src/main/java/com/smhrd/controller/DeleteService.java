package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MessageDAO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));

		int cnt = new MessageDAO().deleteMessage(num);

		if (cnt > 0) {
			System.out.println("메세지 삭제 성공");
		} else {
			System.out.println("메세지 삭제 실패");
		}

		response.sendRedirect("RealMain.jsp");

	}

}
