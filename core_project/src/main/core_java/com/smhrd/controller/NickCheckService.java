package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.command;
import com.smhrd.model.MemberDAO;

public class NickCheckService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String inputNick = request.getParameter("inputNick");

		System.out.println(inputNick);

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
		return null;
	}

}
