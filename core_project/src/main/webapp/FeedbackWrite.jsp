<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.Friend"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.FriendDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

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
	String target = request.getParameter("target");
	
   %>
  <form action="FeedbackService">
        <table border="1">
            <th colspan="7"> 피드백 선택지 </th>
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
               
                	<th colspan="7" align="center">
                	<button align="center"  name="submit" type="submit" id="contact-submit"  data-submit="...Sending">피드백 제출</button>
                	</th>
                
         </table> 
         <input type="hidden" name= "target" value="<%=target%>">
      	


</form>
  
</div>

</body>
</html>