package com.smhrd.model;

import java.util.Date;

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
public class Feed {
	private int index; // 고유번호
	@NonNull private int category; // 카테고리 넘버
	@NonNull private int user_index; // 유저고유번호
	@NonNull private String title; // 피드제목
	@NonNull private String content; // 피드글
	private String file; // 파일주소
	private int like_cnt; //좋아요 수
	private Date date; // 작성일시
}
