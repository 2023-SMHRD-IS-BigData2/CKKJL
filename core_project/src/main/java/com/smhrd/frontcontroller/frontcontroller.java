package com.smhrd.frontcontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.FeedService;



@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[front controller]");

		// 어떤 요청이 들어왔는지 확인
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);

		// ContextPath 확인
		String contextPath = request.getContextPath();
		System.out.println(contextPath);

		// 문자열 자르기
		// subString(start) : start위치부터 끝까지 문자열 자르기
		// subString(start, end) : start위치부터 end전까지 문자열 자르기
		String result = requestURI.substring(contextPath.length());
		System.out.println(result);

		request.setCharacterEncoding("UTF-8");
		String url = null;
		command service = null;

		if (result.equals("/FeedService.do")) {

			service = new FeedService();

		} 

		url = service.execute(request, response);
		if (url != null) {
			response.sendRedirect(url);
		}
	}

}
