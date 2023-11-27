package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class IframeDAO {

	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlsessionFactory.openSession(true);

	public String Load(int i) {
		String address = null;
		try {
			address = sqlSession.selectOne("com.smhrd.database.IframeMapper.Load", i);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return address;
	}
}
