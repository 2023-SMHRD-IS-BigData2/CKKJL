package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager1;

public class MemberDAO {

	// 세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager1.getSqlSession();
	
	// connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	// 회원가입
	public int joinMember(Member vo) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("com.smhrd.database.MemberMapper.joinMember", vo);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	// 로그인
	public Member loginMember(Member vo) {
		Member loginMember = null;
		
		try {
			loginMember = sqlSession.selectOne("com.smhrd.database.MemberMapper.loginMember", vo);
		} catch (Exception e) {
		}finally {
			sqlSession.close();
		}
		return loginMember;
	}
	// 닉네임 확인 메소드
	public boolean NickCheck(String inputNick) {
		boolean checkN = false;
		try {
			checkN = sqlSession.selectOne("com.smhrd.database.MemberMapper.NickCheck", inputNick);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return checkN ; //T or F
	}
	// 업데이트 메소드
	public int updateMember(Member updateMember) {
		int cnt = 0;
		try {   
			cnt = sqlSession.update("com.smhrd.database.MemberMapper.updateMember", updateMember);
		} catch (Exception e) {
			
		} finally{
			sqlSession.close();
		} return cnt;
	}
	
	public List<Member> allMember() {
		List<Member> members = null;
		try {
		members	 = sqlSession.selectList("com.smhrd.database.MemberMapper.allMember");
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return members; 
	}
	public int deleteMember(String email) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.database.MemberMapper.deleteMember",email);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	

}
