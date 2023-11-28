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
    <h3>Message</h3>
    <h4>친구에게 문자를 보내세요</h4>
    <input type="hidden" name="sender"
            id="name" value="<%=vo.getNick() %>" />
    <fieldset>
      <input placeholder="받는 사람" type="text" name="recipient" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <textarea placeholder="보낼 메세지를 입력하세요"  name="message" tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
      <button   name="submit" type="submit" id="contact-submit"  data-submit="...Sending">문자 전송</button>
    </fieldset>
  </form>
 
  
</div>

</body>
</html>