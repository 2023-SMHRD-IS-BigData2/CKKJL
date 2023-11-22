package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true); // 오토 커밋


	public int join(Member vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.MemberMapper.Join", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

}
