package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FriendDAO {
	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	// 팔로우
	public int apply(Friend user) {
		int cnt = 0;
		try {
			 cnt = sqlSession.insert("com.smhrd.database.FriendMapper.Add", user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int set(Friend user) {
		int cnt = 0;
		try {
			 cnt = sqlSession.selectOne("com.smhrd.database.FriendMapper.Set", user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<Friend> check(String id) {
		List<Friend> friend =null;
		try {
			 friend = sqlSession.selectList("com.smhrd.database.FriendMapper.Check", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return friend;
	}
	
	public int accept(Friend user) {
		int cnt = 0;
		try {
			cnt += sqlSession.update("com.smhrd.database.FriendMapper.Accept1", user);
			cnt += sqlSession.insert("com.smhrd.database.FriendMapper.Accept2", user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;	
		
	}
	
	public int reject(Friend user) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("com.smhrd.database.FriendMapper.Reject", user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
		
	}

}