package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@RequiredArgsConstructor
public class Message {
   
   private int num; // pk
   @NonNull private String sender; // 보내는 사람 
   @NonNull private String recipient; //받는 사람
   @NonNull private String message; // 메세지
   private String m_date; // 문자보낸 시간
}
