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
	private int f_index;
	@NonNull private int mm; // 용병/매치 구분코드 (매치 = 0, 용병 = 1)
	@NonNull private String m_date; // 경기날짜
	@NonNull private int t_index; // 팀 고유번호
	@NonNull private String start_hour; // 시작시간 ex) 11:00 -> 11
	@NonNull private String last_hour; // 끝시간 ex) 20:00 -> 20
	@NonNull private String people_num; // 인원수/원하는 인원수
	@NonNull private String f_level; // 수준
	private String writing; // 남기실 말
	
	
	
}
