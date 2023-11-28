package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;

@WebServlet("/MessageService")
public class MessageService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[MessageService]");
      
      // post방식 디코딩
      request.setCharacterEncoding("UTF-8");
      
      String sender = request.getParameter("sender");
      String recipient = request.getParameter("recipient");
      String message = request.getParameter("message");
      
      HttpSession session = request.getSession();
      session.setAttribute("sender", sender);
      session.setAttribute("recipient", recipient);
      session.setAttribute("message", message);
      System.out.println(sender + recipient + message);
      
      Message dto = new Message(sender, recipient, message);
      session.setAttribute("dto", dto);
      int row = new MessageDAO().insertMessage(dto);
      
      
      if(row > 0) {
         System.out.println("메시지 전송 성공");
      }else {
         System.out.println("메시지 전송 실패");
      }
      
      response.sendRedirect("MessageWrite.jsp");
      
   }

}