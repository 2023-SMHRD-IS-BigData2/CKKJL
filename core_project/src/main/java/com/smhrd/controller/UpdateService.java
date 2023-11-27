package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String u_id = request.getParameter("u_id");
		String nick = request.getParameter("nick");
		String intro = request.getParameter("intro");
		String pic = request.getParameter("pic");
		System.out.println(u_id + "+" + nick + "+" + intro + "+" + pic);
		// 3. Member객체 생성
		Member updateMember = new Member(u_id, nick, pic);

		updateMember.setIntro(intro);

		// 4. DAO에 있는 updateMember() 호출 -> 정수데이터 반환
		int cnt = new MemberDAO().updateMember(updateMember);

		// 5. 콘솔창에 수정 성공
		if (cnt > 0) {
			System.out.println("수정 성공");
			HttpSession session = request.getSession();
			session.setAttribute("vo", updateMember);
			response.sendRedirect("RealMain.jsp");
		} else {
			System.out.println("수정 실패");
			response.sendRedirect("UpdateUser.jsp");
		}

	}

}
