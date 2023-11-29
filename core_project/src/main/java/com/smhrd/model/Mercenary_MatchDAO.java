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
}