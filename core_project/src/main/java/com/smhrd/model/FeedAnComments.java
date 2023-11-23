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
@NoArgsConstructor
@ToString
@RequiredArgsConstructor
public class FeedAnComments {
	private boolean CoNum; // 댓글 및 대댓글 구분 (true = 댓글, false = 대댓글)
	private int first_index; // 댓글 및 대댓글 고유번호
	@NonNull private int second_index; // 주체가 되는 고유번호(댓글시 피드,대댓글시 댓글)
	@NonNull private String user_index; // 작성자 고유번호(이름)
	@NonNull private String content; // 작성글
	private Date date; // 작성일시
}