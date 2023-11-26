package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CommentDAO {

		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

		
		SqlSession sqlSession = sqlSessionFactory.openSession(true); // 오토 커밋

		// 게시글 작성
		public int writeComment(Comment vo) {
			int cnt = 0;
			try {
				cnt = sqlSession.insert("com.smhrd.database.CommentMapper.writeComment", vo);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return cnt;
		}
		public List<Comment> showComment(int F_INDEX) {
			List<Comment> Comments = null;
			try {
				Comments = sqlSession.selectList("com.smhrd.database.CommentMapper.showComment", F_INDEX);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return Comments;
		}
		
}
