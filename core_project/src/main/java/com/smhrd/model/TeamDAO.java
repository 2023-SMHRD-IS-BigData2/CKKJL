package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class TeamDAO {
	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();
	
	public int updateTeamSum(Team team) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.update("com.smhrd.database.TeamMapper.updateTeamSum", team);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public Team selTeam(int index) {
		Team team = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			team = sqlSession.selectOne("com.smhrd.database.TeamMapper.selTeam", index);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return team;
	}
	
	
	
}
