package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Team {
	
	@NonNull private int t_index;   // 팀 고유번호
	private String t_name;  // 팀 이름
	private int t_member;   // 팀 인원수
	private int t_estnum;    // 팀 평가 개수
	@NonNull private int e_time;    // 시간약속 총점
	@NonNull private int e_level;    // 수준 총점
	@NonNull private int e_money;    // 비용 총점
	@NonNull private int e_manner;    // 매너 총점
	@NonNull private int e_respon;    // 응답 총점
	
	public float star(int e) {
		float star = 0;
		
		star = (float)e/this.t_estnum;
		
		return star;
	}
}
