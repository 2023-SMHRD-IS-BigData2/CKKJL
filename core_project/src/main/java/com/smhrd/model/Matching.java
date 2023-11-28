package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@RequiredArgsConstructor
public class Matching {
	
	private int m_index;  // 매칭 인덱스
	@NonNull private String writer;  // 글 작성자
	@NonNull private String challenger;  // 매칭 신청자
	@NonNull private int f_index;      // 매칭 정보 pk
	@NonNull private char matching;    // 상시 여부 OX
	
}
