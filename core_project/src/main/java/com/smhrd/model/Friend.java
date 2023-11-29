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
		
	@NonNull private String acceptor;
		
	private char match;

}