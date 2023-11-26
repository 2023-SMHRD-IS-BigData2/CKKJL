package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
public class Friend {
	
	@NonNull private String applicant;
	
	@NonNull private String acceptor;
	
	private int match;

}
