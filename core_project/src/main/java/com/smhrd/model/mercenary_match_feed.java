package com.smhrd.model;

import java.sql.Date;

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
public class mercenary_match_feed {
	Boolean mm; // 용병/매치 구분코드 (매치 = True, 용병 = False)
	Date date; // 경기날짜
	String teamName; // 팀네임(user에서 가져올 것)
	int start_hour; // 시작시간 ex) 11:00 -> 11
	int last_hour; // 끝시간 ex) 20:00 -> 20
	String people_num; // 인원수/원하는 인원수
	String level; // 수준
	String writing; // 남기실 말
}
