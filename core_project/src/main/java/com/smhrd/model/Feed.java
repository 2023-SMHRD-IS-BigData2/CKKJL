package com.smhrd.model;

import java.sql.Date;

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

	
	private int feed_index;  // 인덱스
	@NonNull private String f_user_index;  // 작성자
	@NonNull private String feed_title;  // 피드제목
	@NonNull private String feed_content;   // 내용
    private Date feed_date;  // 업로드 시각
    private String feed_file; // 파일 주소
    private int f_likecnt; // 좋아요 수
    
    public void setfile(String feed_file) {
		this.feed_file = feed_file;
	}
    
    

}

