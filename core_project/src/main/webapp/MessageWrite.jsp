<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="MessageService" method="post">
      <div class="field half first">
         <label for="name">Name</label> <input type="text" name="sender"
            id="name" placeholder="보내는 사람 이름" />
      </div>
      <div class="field half">
         <label for="email">Email</label> <input type="text" name="recipient"
            id="email" placeholder="받는 사람 이메일" />
      </div>

      <div class="field">
         <label for="message">Message</label>
         <textarea name="message" id="message" rows="6"></textarea>
      </div>
      <ul class="actions">
         <li><input type="submit" value="Send Message" class="special" /></li>
         <li><input type="reset" value="Clear" /></li>
      </ul>
   </form>
</body>
</html>