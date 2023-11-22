package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FollowingDAO {
	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	// 팔로우
	public String sendFollow () {
		String cnt = null;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FollowMapper.sendFollow",);
		} catch (Exception e) {
		  
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	// 팔로잉
	public String receiveFollow () {
		String cnt = null;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FollowMapper.receiveFollow",);
		} catch (Exception e) {
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	
	
	
	
}
