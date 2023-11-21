package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FeedDAO {

	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	// 게시글 작성
	public int writeFeed (Feed vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FeedMapper.writeFeed",vo);
		} catch (Exception e) {
		} finally {
			sqlSession.close();
		}
		return cnt; 
	}
	
	public List<Feed> allFeed() {
		List<Feed> boards = null;
		try {
		boards	= sqlSession.selectList("com.smhrd.database.BoardMapper.allBoard");
		} catch (Exception e) {
		}finally {
			sqlSession.close();
		}
		return boards; 
	} 
	// 게시글 상세 조회
	public Board detailBoard(int num) {
		Board board = null;
		try {
		board =	sqlSession.selectOne("com.smhrd.database.BoardMapper.detailBoard", num);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return board;
	}
}
