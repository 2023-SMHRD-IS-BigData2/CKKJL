package com.smhrd.model;

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
}
