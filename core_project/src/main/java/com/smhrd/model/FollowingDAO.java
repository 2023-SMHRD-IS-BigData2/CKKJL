package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FollowingDAO {
	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	// 팔로우
	public int sendFollow(Follow follow) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FollowMapper.sendFollow", follow);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	// 팔로우 판별
	public boolean selFollow(Follow follow) {
		boolean sel = false;

		Follow selfollow = null;
		try {
			selfollow = sqlSession.selectOne("com.smhrd.database.FollowMapper.selFollow", follow);
			if (selfollow != null) {
				sel = true;
			}
		} catch (Exception e) {
		} finally {
			sqlSession.close();
		}
		return sel;
	}

}
