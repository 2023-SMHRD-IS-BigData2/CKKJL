package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Matching;
import com.smhrd.model.Member;


@WebServlet("/TeamMatchService")
public class TeamMatchService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String writer = request.getParameter("writer");
		int f_index = Integer.parseInt(request.getParameter("f_index"));
		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		String challenger = vo.getU_id();
		
		Matching game = new Matching(writer, challenger, f_index);
		
		
		
	}

}
