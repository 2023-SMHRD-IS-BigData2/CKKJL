package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

public class Match {

	public Match(String playerName, String starttime, String finishtime, String peoplenum, String level,
			String comment) {
		this.playerName = playerName;
		this.starttime = starttime;
		this.finishtime = finishtime;
		this.peoplenum = peoplenum;
		this.level = level;
		this.comment = comment;
	}

	private String playerName;
	private String starttime;
	private String finishtime;
	private String peoplenum;
	private String level;
	private String comment;

	@Override
	public String toString() {
		return "Match [playerName=" + playerName + ", starttime=" + starttime + ", finishtime=" + finishtime
				+ ", peoplenum=" + peoplenum + ", level=" + level + ", comment=" + comment + "]";
	}

	public String getPlayerName() {
		return playerName;
	}

	public String getStarttime() {
		return starttime;
	}

	public String getFinishtime() {
		return finishtime;
	}

	public String getPeoplenum() {
		return peoplenum;
	}

	public String getLevel() {
		return level;
	}

	public String getComment() {
		return comment;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public void setFinishtime(String finishtime) {
		this.finishtime = finishtime;
	}

	public void setPeoplenum(String peoplenum) {
		this.peoplenum = peoplenum;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
