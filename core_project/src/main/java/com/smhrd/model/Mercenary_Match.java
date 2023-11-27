package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@NoArgsConstructor
@ToString
@RequiredArgsConstructor
public class Mercenary_Match {

   // 매칭, 용병 피드 추가시 모든 정보 입력!
   private int f_index;
   @NonNull private int mm; // 1 = 매칭 / 2 = 용병 / 3 = 매칭 성사 / 4 = 용병 성사
   @NonNull private String m_date; // 경기날짜
   @NonNull private String user_index; // 작성자 고유번호
   @NonNull private String start_hour; // 시작시간 ex) 11:00 -> 11
   @NonNull private String last_hour; // 끝시간 ex) 20:00 -> 20
   @NonNull private String people_num; // 인원수/원하는 인원수
   @NonNull private String f_level; // 수준
   private String writing; // 남기실 말
   
   public void setWriting(String writing) {
      this.writing = writing;
   }
   
   public void update() {
      switch (this.mm) {
      case 1:
         this.mm = 3;
         break;
      case 2:
         this.mm = 4;
         break;
      case 3:
         this.mm = 1;
         break;
      case 4:
         this.mm = 2;
         break;

      default:
         System.out.println("mm에러");
         break;
      }
   }

   public String getStart_hour() {
      if (this.start_hour.equals("미정")) {
         return this.start_hour;
      }else {
         return this.start_hour+":00";
      }
   }
   
   public String getLast_hour() {
      if (this.last_hour.equals("미정")) {
         return this.last_hour;
      }else {
         return this.last_hour+":00";
      }
   }
   
   
   
   

}