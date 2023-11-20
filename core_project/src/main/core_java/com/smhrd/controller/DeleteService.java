package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.command;
import com.smhrd.model.MemberDAO;

public class DeleteService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");

		// 3. Member객체 생성

		// 4. DAO에 있는 updateMember() 호출 -> 정수데이터 반환
		int cnt = new MemberDAO().deleteMember(email);

		// 5. 콘솔창에 수정 성공
		if (cnt > 0) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		return "ShowMember.jsp";
	}

}
