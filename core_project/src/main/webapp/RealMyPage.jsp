<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	background-color: ivory;
	color: black;
	text-align: center;
	padding: 1em;
	display: flex; /* 로고와 텍스트를 가로로 정렬하기 위해 추가 */
	justify-content: flex-start; /* 로고를 왼쪽에 정렬하기 위해 추가 */
	align-items: center; /* 세로 가운데 정렬을 위해 추가 */
}

header img {
	width: 150px; /* 프로필 사진 크기 조절 */
	border-radius: 50%; /* 프로필 사진을 원형으로 만들기 위해 추가 */
	margin-right: 100px; /* 로고와 프로필 사진 사이 간격 조절 */
}

header img:last-child {
	margin-left: auto;
	margin-right: auto;
	display: block;
}

main {
	padding: 20px;
	display: flex;
	flex-direction: row; /* 가로로 배치 */
	justify-content: space-between; /* 섹션 간 간격을 벌리기 */
}

section {
	margin-bottom: 20px;
	flex: 1; /* 각 섹션이 동일한 너비를 가지도록 설정 */
	padding: 10px;
	border: 1px solid #ddd; /* 섹션을 구분하기 위한 테두리 추가 */
	background-color: #fff;
}
.actions, .special, button{
	
	color : #64ad2f;
	padding : 10px 15px;
	border : none;
	border-radius : 5px;
	cursor : pointer;
	margin-right : 10px;
}
</style>
</head>
<body>
	<header>
		<a href="RealMain.jsp"><img
			src="핵심images/FUTSAL062-removebg-preview.png" alt="Logo"></a>
		<!-- 로고 삽입 -->
		<img src="핵심images/박지성.jfif" alt="profile">
		
		<h1>My Page</h1> <br><br>
		<h2 align=right> 채팅하기 </h2>
	</header>
	<main>
		<section>
			<h2>팔로잉</h2>
			<h3>0</h3>
			<p>Name: 박건성</p>
			<p>Email: gunseongPark@example.com</p>
		</section>
		
		<section>
			<h2>팔로우</h2>
			<h3>0</h3>
			<p>건성fc</p>
			<p>흥민fc</p>
		</section>

		<section>
			<h2>
				<a href="피드및게시글.html">게시글 목록</a>
			</h2>
			<p>상지 풋살에서 뜰사람</p>
			<p>바로에서 뜰 사람</p>
		</section>
		<section>
			<h2> 팀 소개문구</h2>
			
		</section>
		<section>
			<form>
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
					<li><input type="reset" value="팔로우 취소" class="special" /></li>
				</ul>
			</form>
		</section>
	


	</main>


</body>
</html>
