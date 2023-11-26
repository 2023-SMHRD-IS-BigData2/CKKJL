<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 1em;
}

header img {
	align-items: right;
	width: 150px; /* 프로필 사진 크기 조절 */
	border-radius: 50%; /* 프로필 사진을 원형으로 만들기 위해 추가 */
}

main {
	padding: 20px;
	max-width: 600px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #333;
}

p {
	color: #666;
}
</style>
</head>
<body>

	<header>
		<a href="Main.jsp"><img
			src="핵심images/FUTSAL062-removebg-preview.png" alt="Logo"></a>
		<!-- 로고 삽입 -->
		<h1>피드</h1>
	</header>

	<main>
		<article>
			<div id="board">
		<form action="./FeedService" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td> 작성자 </td>
						<td>${vo.getNick()}<input  type="hidden" name="writer" value="${vo.getU_id()}"> </td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<input  type="file" name="filename"style="float: right;">
							<textarea  rows="10" name="content" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="작성하기">
							<input type="reset" value="초기화">
						</td>
					</tr>
				</table>
				</form>
	</div>
		</article>
	</main>
	


</body>
</html>
