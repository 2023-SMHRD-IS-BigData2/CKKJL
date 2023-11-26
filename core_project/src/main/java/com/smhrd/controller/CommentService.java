package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Comment;
import com.smhrd.model.CommentDAO;



@WebServlet("/CommentService")
public class CommentService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
	      System.out.println("[CommentService]");
	      
	      // post방식 디코딩
	      request.setCharacterEncoding("UTF-8");
	      
	      String F_INDEX = request.getParameter("F_INDEX");
	      String C_NAME = request.getParameter("C_NAME");
	      String C_COMMENT = request.getParameter("C_COMMENT");
	      
	      
	      System.out.println(F_INDEX +"+"+C_NAME +"+"+ C_COMMENT);
	      
	      Comment vo = new Comment(F_INDEX, C_NAME, C_COMMENT);
	      
	      int row = new CommentDAO().writeComment(vo);
	      
	      
	      if(row > 0) {
	         System.out.println("댓글 전송 성공");
	      }else {
	         System.out.println("댓글 전송 실패");
	      }
	      
	      response.sendRedirect("./RealMain.jsp");
	      
	   }

	}