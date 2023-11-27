package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
@NoArgsConstructor
public class Friend {
	
	@NonNull private String applicant;
	
	@NonNull private String app_nick;
	
	@NonNull private String app_pic;
	
	@NonNull private String acceptor;
	
	@NonNull private String acc_nick;
	
	@NonNull private String acc_pic;
	
	private char match;

}