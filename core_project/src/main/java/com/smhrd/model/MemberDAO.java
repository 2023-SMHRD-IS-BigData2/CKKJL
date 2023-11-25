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
	
	
	
	public Member login(String id) {
		Member member = null;
		try {
			member = sqlSession.selectOne("com.smhrd.database.MemberMapper.Login", id);
			if (member != null) {
				System.out.println("성공");
			}else {
				System.out.println("실패!");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}return member;
	}
	

}
