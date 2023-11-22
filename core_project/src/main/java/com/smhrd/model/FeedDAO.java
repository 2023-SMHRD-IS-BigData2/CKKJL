package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FeedDAO {

	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true); // 오토 커밋

	
	// 게시글 작성
	public int writeFeed(Feed vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FeedMapper.writeFeed", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	public List<Feed> totalFeed() {

		List<Feed> Feeds = null;
		try {

			Feeds = sqlSession.selectList("com.smhrd.database.FeedMapper.totalFeed");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return Feeds;

	}

	public int deleteFeed(String num) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.database.FeedMapper.deleteFeed", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return 0;
	}

	public Feed detailBoard(int num) {
		Feed Feed = null;
		try {
			Feed = sqlSession.selectOne("com.smhrd.database.FeedMapper.detailFeed", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Feed;
	}

}
