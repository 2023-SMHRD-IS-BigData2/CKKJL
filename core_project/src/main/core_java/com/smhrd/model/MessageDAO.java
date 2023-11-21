package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager1;

public class MessageDAO {

	static SqlSessionFactory sqlSessionFactory = SqlSessionManager1.getSqlSession();


	// 메시지 보내기 기능
	public int insertMessage(Message vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertMessage", vo);
		session.close();

		return row;
	}

	// 나에게 온 메시지 조회 기능
	public static List<Message> showMessage(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Message> m_list = session.selectList("showMessage", email);
		session.close();
		return m_list;
	}

	public int deleteMessage(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessage",num);
		session.close();		
		return row;
	}

	public int deleteAllMessage(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteAllMessage", email);
		session.close();
		return row;
	}

	
	
	
}
