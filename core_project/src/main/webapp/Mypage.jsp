<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="contact">
		<div class="inner">
			<section>
				<!-- Q11. 메시지 보내기 기능(메시지는 계속 확인하기 위해서 DB에 저장!) -->
				<!-- 다른 사람의 DB에 메시지 저장해보기! -->
				<form action="MessageService.do" method="post">
					<div class="field half first">
						<label for="name">본인 계정 </label> <input type="text" id="name"
							name="sender" placeholder="보내는 사람 이름" />
					</div>
					<div class="field half">
						<label for="email"> 팔로워 할 계정</label> <input type="text" id="email"
							name="recipient" placeholder="받는 사람 이메일" />
					</div>
					<ul class="actions">
						<li><input type="submit" value="팔로우 신청하기" class="special" /></li>
						<li><input type="reset" value="팔로우 취소" /></li>
					</ul>
				</form>
			</section>
</body>
</html>