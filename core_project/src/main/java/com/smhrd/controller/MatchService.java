package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.Mercenary_Match;
import com.smhrd.model.Mercenary_MatchDAO;

@WebServlet("/MatchService")
public class MatchService extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("utf-8");
      HttpSession session = request.getSession();
      

      Member vo = (Member)session.getAttribute("vo");
      int mm = Integer.valueOf(request.getParameter("mm"));
      String starttime = request.getParameter("starttime");
      String finishtime = request.getParameter("finishtime");  
      String peoplenum = request.getParameter("peoplenum");
      String level = request.getParameter("level");
      String comment = request.getParameter("comment");
      String matchDay = request.getParameter("matchDay");
      String place = request.getParameter("place");
   
      Mercenary_Match mercenary_match = null;
      // 아래부분 개수부족
      mercenary_match = new Mercenary_Match(mm, matchDay, vo.getU_id(), starttime, finishtime, peoplenum, level);
      if (comment != null) {
         mercenary_match.setWriting(comment);
      }
      if (place != null) {
    	  mercenary_match.setPlace(place);
    	  int ck = new Mercenary_MatchDAO().makeMEMA(mercenary_match);
      }else {
    	  int ck = new Mercenary_MatchDAO().makeME(mercenary_match);
      }
      
      
      
      response.sendRedirect("ViewMatch.jsp?date="+matchDay);
   
   
   }
   

}