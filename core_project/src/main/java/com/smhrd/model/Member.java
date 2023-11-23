package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@AllArgsConstructor
//@NoArgsConstructor
//@Getter
//@Setter
//@ToString
//@RequiredArgsConstructor
public class Member {
	private String id;
	private String nick;
	private String pic;
	private String team;
	private String intro;
	public Member(String id, String nick, String pic, String team, String intro) {
		super();
		this.id = id;
		this.nick = nick;
		this.pic = pic;
		this.team = team;
		this.intro = intro;
	}
	public Member(String id, String nick, String pic) {
		super();
		this.id = id;
		this.nick = nick;
		this.pic = pic;
	
	}
	public String getId() {
		return id;
	}
	public String getNick() {
		return nick;
	}
	public String getPic() {
		return pic;
	}
	public String getTeam() {
		return team;
	}
	public String getIntro() {
		return intro;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	
	
		
	

}
