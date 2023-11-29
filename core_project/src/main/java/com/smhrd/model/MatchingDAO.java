package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MatchingDAO {

	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

	public int sendMatching(Matching vo) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.sendMatching", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<Matching> allMatching() {
		List<Matching> matching = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			matching = sqlSession.selectList("com.smhrd.database.MatchMapper.allMatching");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}
	
	public int sacramentMatching(int m_index) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.sacramentMatching", m_index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int delAllMatching(int f_index) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.delAllMatching", f_index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int delMatching(int m_index) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.delMatching", m_index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

}
