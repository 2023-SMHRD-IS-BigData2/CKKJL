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
<<<<<<< HEAD
	
	private int num;  // 인덱스
	@NonNull private String writer;  // 작성자
	@NonNull private String filename;  // 파일이름
	@NonNull private String content;   // 내용
    private String b_date;  // 업로드 시각

}
=======
	private int index; // 고유번호
	@NonNull private int user_index; // 유저고유번호
	@NonNull private String title; // 피드제목
	@NonNull private String content; // 피드글
	private Date date; // 작성일시
	private String file; // 파일주소
	private int like_cnt; //좋아요 수
}
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-IS-BigData2/CKKJL.git
