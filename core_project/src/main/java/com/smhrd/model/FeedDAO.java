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

	// 피드 전체 조회
	public List<Feed> totalFeed() {

		List<Feed> feeds = null;
		try {

			feeds = sqlSession.selectList("com.smhrd.database.FeedMapper.totalFeed");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return feeds;

	}

	// 피드 삭제시 피드의 고유번호(feed_index)를 받아서 삭제
	public int deleteFeed(int index) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.database.FeedMapper.deleteFeed", index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return 0;
	}

	// 피드 상세 들어갈 시 피드의 고유번호(feed_index)를 받아서 들어갈 수 있게 한다
	public Feed detailFeed(int index) {
		Feed Feed = null;
		try {
			Feed = sqlSession.selectOne("com.smhrd.database.FeedMapper.detailFeed", index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Feed;
	}
	
	// 해당 유저의 좋아요 했는지 여부 확인 메소드
	public boolean whetherlike(FeedLike feedlike) {
		FeedLike like = null;
		like = selFeedlike(feedlike);
		if(like != null) {
			return true;
		}else {
			return false;
		}
		
	}
	
	// 좋아요 올라갈때
	public void likeup(FeedLike feedlike) {
		
		int send_cnt = 0;
		int like_cnt = 0;
		
		send_cnt = sendFeedlike(feedlike);
		if (send_cnt == 0) {
			System.out.println("좋아요 입력 실패");
		}else {
			like_cnt = updatelikeup(feedlike.getFeed_index());
			
			if (like_cnt != 0) {
				System.out.println("좋아요 업데이트 성공");
			}else {
				System.out.println("좋아요 업데이트 실패");
			}
		}
		
	}

	// 좋아요 취소시 내려갈때
	public void likedown(FeedLike feedlike) {
		int del_cnt = 0;
		int like_cnt = 0;
		
		del_cnt = delFeedlike(feedlike);
		if (del_cnt == 0) {
			System.out.println("삭제 성공");
			
			like_cnt = updatelikedown(feedlike.getFeed_index());
			
			if (like_cnt != 0) {
				System.out.println("좋아요 업데이트 성공");
			}else {
				System.out.println("좋아요 업데이트 실패");
			}
		}
	}

	private int updatelikeup(int index) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("com.smhrd.database.FeedMapper.updatelikeup", index);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	private int updatelikedown(int index) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("com.smhrd.database.FeedMapper.updatelikedown", index);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	private int sendFeedlike(FeedLike feedlike) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.database.FeedMapper.sendFeedlike", feedlike);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	private FeedLike selFeedlike(FeedLike feedlike) {
		FeedLike like = null;
		try {
			like = sqlSession.selectOne("com.smhrd.database.FeedMapper.selFeedlike", feedlike);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return like;
	}
	
	private int delFeedlike(FeedLike feedlike) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.database.FeedMapper.delFeedlike", feedlike);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

}
