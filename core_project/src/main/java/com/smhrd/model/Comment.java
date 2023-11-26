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
public class Comment {
   
   private int C_INDEX; // 
   @NonNull private String F_INDEX; // 
   @NonNull private String C_NAME; //
   @NonNull private String C_COMMENT; // 
   private String C_DATE; //
}
