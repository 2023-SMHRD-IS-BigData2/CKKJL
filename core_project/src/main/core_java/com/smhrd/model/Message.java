package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Message {

	private int num;
	private String sender;
	private String recipient;
	private String message;
	private String m_date;
	
}
