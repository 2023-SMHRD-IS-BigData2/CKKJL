package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Feed {

	
	private int index;  // 인덱스
	@NonNull private String writer;  // 작성자
	@NonNull private String title;  // 피드제목
	@NonNull private String content;   // 내용
    private String date;  // 업로드 시각
    private String file; // 파일 주소
    private int likecnt; // 좋아요 수

}

