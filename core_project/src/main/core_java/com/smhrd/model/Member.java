package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@RequiredArgsConstructor //이거 적고 아래에 nonnull
@AllArgsConstructor
@Getter
@NoArgsConstructor
@ToString
public class Member {

	@NonNull private String email;
	@NonNull private String pw;
	private String tel;
	private String address;		
}
