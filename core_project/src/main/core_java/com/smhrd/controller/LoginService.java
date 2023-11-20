package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class LoginService implements command {

public String execute(HttpServletRequest request, HttpServletResponse response) {
	System.out.println("[LoginProgram]");
	
	// 1. email, pw 가져오기(post 인코딩)
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");

	// 2. Member 객체 생성하기
	Member vo = new Member(email, pw);
	// 3. DAO LoginMember() 메소드 호출
	Member loginMember = new MemberDAO().loginMember(vo);

	// System.out.println(loginMember.toString());
	if (loginMember != null) {
		// 로그인 성공
		HttpSession session = request.getSession();
		session.setAttribute("loginMember", loginMember);
		System.out.println("로그인 성공!");
	}
	return "Main.jsp";
	// 4. DB에 있는 값 가져와서 콘솔창에 tel값만 출력하기
	// 로그인 기능
}
	
	
	
	
	
	
	
	
	
}
