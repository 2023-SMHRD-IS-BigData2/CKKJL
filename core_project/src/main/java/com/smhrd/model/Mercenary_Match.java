package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Mercenary_Match {
	
	// 매칭, 용병 피드 추가시 모든 정보 입력!
<<<<<<< HEAD
	private int m_index;
	@NonNull private int mm; // 경기 성사 구분코드 (미성사 = 0, 성사 = 1)
	@NonNull private String matchDate; // 경기날짜
	private String teamName; // 팀네임(user에서 가져올 것)
=======
	private int f_index;
	@NonNull private int mm; // 용병/매치 구분코드 (매치 = 0, 용병 = 1)
	@NonNull private String m_date; // 경기날짜
	@NonNull private int t_index; // 팀 고유번호
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-IS-BigData2/CKKJL.git
	@NonNull private String start_hour; // 시작시간 ex) 11:00 -> 11
	@NonNull private String last_hour; // 끝시간 ex) 20:00 -> 20
	@NonNull private String people_num; // 인원수/원하는 인원수
	@NonNull private String f_level; // 수준
	private String writing; // 남기실 말
<<<<<<< HEAD
	@NonNull private int team_index; // 팀 고유번호
	
	// 리스트 생성시 필요한 거(뷰참고)
	public Mercenary_Match(int m_index, int mm, String matchDate, String teamName,
			String start_hour, String last_hour, String people_num, String level,
			String writing) {
		this.m_index = m_index;
		this.mm = mm;
		this.matchDate = matchDate;
		this.teamName = teamName;
		this.start_hour = start_hour;
		this.last_hour = last_hour;
		this.people_num = people_num;
		this.level = level;
		this.writing = writing;
	}
=======
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-IS-BigData2/CKKJL.git
	
	
	
}
