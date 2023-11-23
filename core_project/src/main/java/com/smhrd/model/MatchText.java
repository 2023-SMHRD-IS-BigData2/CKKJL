package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@ToString
public class MatchText {

    private String playerName;
	private String starttime;
	private String finishtime;
	private String peoplenum;
	private String level;
	private String comment;

}
