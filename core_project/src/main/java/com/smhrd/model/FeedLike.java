package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.ToString;

@AllArgsConstructor
@Getter
@ToString
public class FeedLike {
	@NonNull private int feed_index; // 피드 고유번호
	@NonNull private String user_index; // 유저 고유번호
}
