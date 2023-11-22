package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


public class Login_Service extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = (String)request.getAttribute("id");
		String pic = (String)request.getAttribute("pic");
		String nick = (String)request.getAttribute("nick");
		
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		session.setAttribute("pic", pic);
		session.setAttribute("nick", nick);
		
		Member vo = new Member(id,nick,pic);
		int cnt = new MemberDAO().join(vo);
		
		if (cnt>0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		
		response.sendRedirect("./Main.jsp");
	
	
	
	
	}

}
