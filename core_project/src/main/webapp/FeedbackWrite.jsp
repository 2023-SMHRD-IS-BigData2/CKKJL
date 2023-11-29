<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.Friend"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.FriendDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600);

* {
   margin:0;
   padding:0;
   box-sizing:border-box;
   -webkit-box-sizing:border-box;
   -moz-box-sizing:border-box;
   -webkit-font-smoothing:antialiased;
   -moz-font-smoothing:antialiased;
   -o-font-smoothing:antialiased;
   font-smoothing:antialiased;
   text-rendering:optimizeLegibility;
}

body {
   font-family:"Open Sans", Helvetica, Arial, sans-serif;
   font-weight:300;
   font-size: 12px;
   line-height:30px;
   color:#777;
   background:#62AC2E;
}

.container {
   max-width:400px;
   width:100%;
   margin:0 auto;
   position:relative;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px "Open Sans", Helvetica, Arial, sans-serif; }

#contact {
   background:#F9F9F9;
   padding:25px;
   margin:50px 0;
}

#contact h3 {
   color: #F96;
   display: block;
   font-size: 30px;
   font-weight: 400;
}

#contact h4 {
   margin:5px 0 15px;
   display:block;
   font-size:13px;
}

fieldset {
   border: medium none !important;
   margin: 0 0 10px;
   min-width: 100%;
   padding: 0;
   width: 100%;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea {
   width:100%;
   border:1px solid #CCC;
   background:#FFF;
   margin:0 0 5px;
   padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact input[type="tel"]:hover, #contact input[type="url"]:hover, #contact textarea:hover {
   -webkit-transition:border-color 0.3s ease-in-out;
   -moz-transition:border-color 0.3s ease-in-out;
   transition:border-color 0.3s ease-in-out;
   border:1px solid #AAA;
}

#contact textarea {
   height:100px;
   max-width:100%;
  resize:none;
}

#contact button[type="submit"] {
   cursor:pointer;
   width:100%;
   border:none;
   background:#62AC2E;
   color:#FFF;
   margin:0 0 5px;
   padding:10px;
   font-size:15px;
}

#contact button[type="submit"]:hover {
   background:#09C;
   -webkit-transition:background 0.3s ease-in-out;
   -moz-transition:background 0.3s ease-in-out;
   transition:background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }

#contact input:focus, #contact textarea:focus {
   outline:0;
   border:1px solid #999;
}
::-webkit-input-placeholder {
 color:#888;
}
:-moz-placeholder {
 color:#888;
}
::-moz-placeholder {
 color:#888;
}
:-ms-input-placeholder {
 color:#888;
}

</style>

</head>
<body>
<script type="text/javascript">
	function closeTab() {
		window.close();
	}
</script>
<%
	Member vo = (Member) session.getAttribute("vo");
	%>
	<div class="container">  
  <form id="contact" action="MessageService" method="post">
    <h3>FeedBack</h3>
    <h4>경기후 상대를 평가해주세요</h4>
    <input type="hidden" name="sender"
            id="name" value="<%=vo.getNick() %>" />
    <fieldset>
      <!-- <input placeholder="받는 사람" type="text" name="recipient" tabindex="1" required autofocus> -->
      <legend>받는 사람</legend>
      <select name="recipient">
      <% List<Friend> friends =  new FriendDAO().All(vo.getU_id());
      for (Friend i : friends) {
      Member friend = new MemberDAO().login(i.getApplicant());
      %>
      	<option value="<%=friend.getU_id()%>"><%=friend.getNick()%></option>
      <%}%>	
      </select>
    </fieldset>
    <fieldset>
      <textarea placeholder="보낼 메세지를 입력하세요"  name="message" tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
      <button   name="submit" type="submit" id="contact-submit"  data-submit="...Sending">문자 전송</button>
    </fieldset>
  </form>
  <form action="FeedbackService">
  <fieldset>
        <table border="1">
            <th colspan="6"> 피드백 선택지 </th>
            <tr align="center">
              <td > 평가 항목</td>
              <td > 최악</td>
              <td> 불만족</td>
              <td > 보통</td> 
              <td > 만족</td>
              <td > 최고 </td>
            </tr>
              <tr>
                <td name="time" align="center"> 상대팀이 시간 약속을 잘 지켰나요?</td>
                <td>1점<input type="radio" name="time" value="1"> </td>
                <td>2점<input type="radio" name="time" value="2"> </td>
                <td>3점<input type="radio" name="time" value="3">  </td>
                <td>4점<input type="radio" name="time" value="4"> </td>
                <td>5점<input type="radio" name="time" value="5"> </td>
                </tr>
                <tr>
                    <td name="manner" align="center">상대팀이 친절하고 매너가 좋나요?</td>
                    <td>1점<input type="radio" name="manner" value="1"> </td>
                    <td>2점<input type="radio" name="manner" value="2"> </td>
                    <td>3점<input type="radio" name="manner" value="3">  </td>
                    <td>4점<input type="radio" name="manner" value="4"> </td>
                    <td>5점<input type="radio" name="manner" value="5"> </td>
                </tr>
                <tr>
                    <td name="level" align="center"> 상대팀이 본인들이 올린 실력과 비슷한가요?</td>
                    <td>1점<input type="radio" name="level" value="1"> </td>
                    <td>2점<input type="radio" name="level" value="2"> </td>
                    <td>3점<input type="radio" name="level" value="3">  </td>
                    <td>4점<input type="radio" name="level" value="4"> </td>
                    <td>5점<input type="radio" name="level" value="5"> </td>
                </tr>
                <tr>
                    <td name="money" align="center"> 상대팀이 비용관련 입금이 잘 되었나요?</td>
                    <td>1점<input type="radio" name="money" value="1"> </td>
                    <td>2점<input type="radio" name="money" value="2"> </td>
                    <td>3점<input type="radio" name="money" value="3">  </td>
                    <td>4점<input type="radio" name="money" value="4"> </td>
                    <td>5점<input type="radio" name="money" value="5"> </td>
                </tr>
                <tr>
                    <td name="respon" align="center">상대팀이 채팅 응답이 빠른가요?</td>
                    <td>1점<input type="radio" name="respon" value="1"> </td>
                    <td>2점<input type="radio" name="respon" value="2"> </td>
                    <td>3점<input type="radio" name="respon" value="3">  </td>
                    <td>4점<input type="radio" name="respon" value="4"> </td>
                    <td>5점<input type="radio" name="respon" value="5"> </td>
                </tr>
         </table> 
          
         </fieldset> 
</form>
  
</div>

</body>
</html>