package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FeedAnCommentsDAO {

	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	// 댓글 및 대댓글 작성
	public int writeFeedAnComments(FeedAnComments vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FeedAnCommentsMapper.writeFeedAnComments", vo);
		} catch (Exception e) {
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	public List<FeedAnComments> allFeedAnComments() {
		List<FeedAnComments> boards = null;
		try {
			boards = sqlSession.selectList("com.smhrd.database.FeedAnCommentsMapper.allFeedAnComments");
		} catch (Exception e) {
		} finally {
			sqlSession.close();
		}
		return boards;
	}
	
}
