# CKKJL
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/128181071/6350aac5-55ee-4b1b-89ab-5b9ccc640c1b)
<hr/>

# 1. 프로젝트 개요
- 기간 : 23.11.14~ 23.11.30
- 주제 : 광주 2030을 위한 풋살 SNS 서비스
- 참여 인원 : 
팀장 김명준
팀원 이재환, 정호준, 강지민, 최현주
- 리버스 엔지니어링 : SNS

## 맡은 역할
|김명준|이재환|정호준|강지민|최현주|
|------|---|---|---|---|
|**PM, DB** <br/>기획 및 자료 수집<br/>DB 틀 작성<br/>**BACK-END**<br/>매칭용병 등록 및 보기 구현|**BACK-END**<br/>소셜 로그인 (카카오)<br/>친구 추가 기능<br/>매칭<br/>피드백 기능<br/>**CRAWLING**<br/>유튜브 크롤링|**BACK-END**<br/>쪽지 기능 구현<br/>댓글 기능 구현<br/>웹소켓 채팅<br/>**Front-end**<br/>메인 페이지 구현<br/>카테고리바 구현<br/>|**DATABASE** <br/>데이터베이스 테이블 설계 보조<br/>**Back-end**<br/>피드<br/>용병매칭 등록 및삭제 기능구현|**FRONT-END**<br/>메인 페이지<br/>마이 페이지<br/>피드작성<br/>캘린더 작성 <br/>로그인 페이지 구현|
<hr/>

# 2. 차별성
## 주제 : 2030을 위한 futsal sns서비스
리버스 엔지니어링 : SNS

+ 광주의 모든 풋살장 이용가능
+ 캘린더를 통한 가독성 향상
+ SNS로 지속적인 사용 유도

# 3. 사용기술
|개발환경|상세보기
|--|--|
|FRONT-END|![Eclipse](https://img.shields.io/badge/Eclipse-FE7A16.svg?style=for-the-badge&logo=Eclipse&logoColor=white) ![Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)|
|DATABASE|![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white) ![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)|
|IDE|![Eclipse](https://img.shields.io/badge/Eclipse-FE7A16.svg?style=for-the-badge&logo=Eclipse&logoColor=white) ![Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)|
|COLLABORATION|<img src="https://img.shields.io/badge/Github-181717?style=flat-square&logo=Github&logoColor=white"/> ![Notion](https://img.shields.io/badge/Notion-%23000000.svg?style=for-the-badge&logo=notion&logoColor=white)|
|LANGUAGE|![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
|BACK-END|![Apache Tomcat](https://img.shields.io/badge/apache%20tomcat-%23F8DC75.svg?style=for-the-badge&logo=apache-tomcat&logoColor=black)

</hr>

# 4. ERD 설계
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/70366a28-f798-4b20-99a9-bcecf0bb0b05)


# 5. 서비스 흐름도
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/a1bd3bb3-2dcb-4680-98b7-229af2a97fcf)

# 6. 주요 기능
### 1) sns로그인
   한 사람이 여러개의 계정을 만들 수 있는 유사서비스의 단점을 보완하고자 SNS로그인으로 로그인을 하게 만들어 아이디의 신뢰성을 부여하였다. 이는 나중에 이어지는 피드백 서비스와도 연관이 있다.

### 2) 피드작성
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/e1bd10eb-cd03-4d43-b92c-ccf1c657c0da)
메인화면에서 피드 작성을 누르게 되면 좌측의 사진처럼 작성자에 본인의 이름이 적히고 아래에 내용을 적을 수 있다. 물론 파일 첨부도 가능하다.
작성을 하게 되면 메인 화면에 오른쪽처럼 작성한 내용이 들어가게 된다.
그리고 좋아요를 누를 수 있고, 댓글을 달 수 있다. 이를 통해서 서비스 이용자들과 소통 할 수 있다. 

### 3) 매칭,용병 등록
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/765fe434-0297-4865-bac4-59d0d84ed178)
본인이 원하는 일자에 풋살을 할 사람이 있는지가 가장 중요한 요소로 봤기 때문에 캘린더를 이용했다.
캘린더에서 본인이 원하는 날짜를 선택하고 오른쪽 사진처럼 본인이 등록하고자 하는 내용을 등록한다.
본인이 팀이 있다면 매치등록과 용병등록 둘 다 가능하고, 팀이 없다면 용병 등록만 가능하다. 

![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/27637a92-aa17-4bfa-ae3f-bddde62c14c1)
등록을 하면 위 사진처럼 등록이 된다.
용병 등록은 친구신청을 보내서 메시지를 보낼 수 있고, 매치등록은 매치 신청을 보낼 수 있다.

### 4) 피드백
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/21175771-04e3-4aa6-ba3b-c0749b425a30)
매치 신청을 하게 되면 상대방에게 왼쪽 사진처럼 매치신청이 보내진다. 이때에 상대방의 피드백의 별점이 같이 보여지게 된다. 경기가 끝나면 오른쪽 사진처럼 피드백 선택지가 보내지고 이를 통해서 상대방의 오늘 풋살에 대한 평가를 하게된다.

![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/a2a991e1-f23c-4f6c-8b5d-ef0a0e25d244)

이 피드백을 통해서 왼쪽 사진처럼 매치를 등록할 때, 매치를 신청할 때 모두 보여지게 됨으로써 서비스 이용자가 비매너 사용자를 거를 수 있는 장치가 된다. 오른쪽 사진처럼 마이페이지에 본인 팀 평가에 대한 점수가 보여지게 된다. 
SNS로그인으로 로그인을 하기 때문에 아이디를 마음대로 생성할 수 없기 때문에 이 별점에 대해서 신경을 쓰게 된다.
이를 통해서 클린한 풋살 문화 조성하는것이 피드백을 구현한 목표이다.

# 7. 트러블 슈팅
### 1. 소스코드 크롤링
![image](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/assets/145407027/5d3d4f26-83dd-4833-987c-a51806a61461)
풋살 서비스이기 때문에 풋살 강좌를 영상으로 보여주고자 하였다. 영상 자체를 가지고 오려고 하였으나 외부 사이트에서 사용할 수 없게 막아두는 유튜브 영상 때문에 왼쪽 사진처럼 나왔다.
그래서 외부 사이트에서도 사용할 수 있는 소스코드를 오른쪽 사진의 코드처럼 사용하여 크롤링 하였다.

### 2. 웹소켓 채팅
따로 공부를 하여 node.js 기반인 웹소켓 채팅을 구현을 했으나, java와 언어가 달라 연동하지 못했다.
그리고 웹소켓 채팅이 처음에 구현하려고 생각했던것과 달리 1대1 채팅이 아니라 다자간 채팅으로 구현되었다. 그래서 1대1 메시지가 아닌 서비스를 이용하는 전체 이용자들의 단체방으로 이용할 생각이다.

# 8. 기대효과 및 활용방안
### 기대효과
- SNS+피드백을 갖춘 서비스로 포지셔닝
  현재 피드백 서비스와 SNS서비를 같이 갖춘 서비스는 없는것으로 파악되었다.
  이 두가지를 갖춘 서비스로 이용자들을 만들 수 있다고 기대한다
- 지역 공동체 형성 및 지역 경제 활성화
  SNS를 통해서 풋살에 대해 관심을 가지고 있는 사람이 실제로 풋살을 하여 풋살장을 이용하게 된다면 풋살장이 활성화 될 것이다. 이 과정에서 지역 경제가 활성화 될것이라고 기대한다.
### 활용방안
- 광주 -> 타 지역, 풋살 -> 축구
- 상용화 가능성
  현재 광주 풋살장은 대부분 전화로 예약을 받고 있는 상태로, 예약내역 파악이 어렵다.
  풋살장에 서비스에 대한 홍보를 하고 풋살장과의 협약을 한다면 상용화 가능성이 있다고 생각한다.

## 발표 PPT
[핵심 프로젝트(최강김정이).pdf](https://github.com/2023-SMHRD-IS-BigData2/CKKJL/files/13623563/default.pdf)






