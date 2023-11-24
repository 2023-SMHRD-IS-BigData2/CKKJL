package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class Mercenary_MatchDAO {
	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);
	
	public int makeMEMA(Mercenary_Match vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.makeMEMA", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<Mercenary_Match> allMEMA_date(String date) {
		List<Mercenary_Match> mercenary_matchs = null;
		try {
			mercenary_matchs = sqlSession.selectList("com.smhrd.database.MatchMapper.allMEMA_date", date);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return mercenary_matchs;
	}
}
