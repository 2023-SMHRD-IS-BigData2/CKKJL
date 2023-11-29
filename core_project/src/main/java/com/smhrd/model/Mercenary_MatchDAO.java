package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class Mercenary_MatchDAO {
   SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
   
   public int makeMEMA(Mercenary_Match vo) {
      int cnt = 0;
      SqlSession sqlSession = sqlsessionFactory.openSession(true);
      try {
         cnt = sqlSession.insert("com.smhrd.database.MatchMapper.makeMEMA", vo);
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }
      return cnt;
   }
   
   public List<Mercenary_Match> allMEMAdate(String date) {
      List<Mercenary_Match> memas = null;
      SqlSession sqlSession = sqlsessionFactory.openSession(true);
      try {
         memas = sqlSession.selectList("com.smhrd.database.MatchMapper.allMEMAdate", date);
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         sqlSession.close();
      }
      return memas;
   }
   
   public int updateMEMA(Mercenary_Match vo) {
      int cnt = 0;
      SqlSession sqlSession = sqlsessionFactory.openSession(true);
      try {
         cnt = sqlSession.update("com.smhrd.database.MatchMapper.updateMEMA", vo);
      } catch (Exception e) {
    	  e.printStackTrace();
      }finally {
         sqlSession.close();
      }
      return cnt;
   }
   
   public float starNum(String user_index) {
	   float resuit = (float) 1.00;
	   Member member = new MemberDAO().login(user_index);
	   Team team = new TeamDAO().selTeam(member.getTeam_index());
	   
	   if (team.getT_estnum() == 0) {
		   return (float) 5;
	   } else {
		   float time = (float)team.getE_time()/team.getT_estnum();
		   float level = (float)team.getE_level()/team.getT_estnum();
		   float money = (float)team.getE_money()/team.getT_estnum();
		   float manner = (float)team.getE_manner()/team.getT_estnum();
		   float respon = (float)team.getE_respon()/team.getT_estnum();
		   
		   resuit = (time+level+money+manner+respon)/5;
		   
		   
		   return resuit;
	   }
	   
   }
}