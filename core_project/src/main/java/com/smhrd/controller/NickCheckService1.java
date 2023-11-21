package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

public class NickCheckService1 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String inputNick = request.getParameter("inputNick");

		System.out.println(inputNick);
		System.out.println(id);

		new MemberDAO().NickCheck(inputNick);

		boolean checkE = new MemberDAO().NickCheck(inputNick);
		System.out.println(checkE);

		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(checkE);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return;
	}

}
