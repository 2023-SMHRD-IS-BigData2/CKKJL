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
	private int c_index; // 댓글 고유번호
	@NonNull private int f_index; // 피드 고유번호
	@NonNull private String c_user_index; // 작성자 고유번호(이름)
	@NonNull private String contents; // 작성글
	private Date c_date; // 작성일시
}