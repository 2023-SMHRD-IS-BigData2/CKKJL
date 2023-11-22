<%@page import="com.smhrd.model.Feed"%>
<%@page import="com.smhrd.model.FeedDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>sns페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">

<style>
.login-image {
	order: 2;
	/* Set the order to 2, so it appears on the right */
	background-color: ivory;
	display: flex;
	justify-content: flex-end;
	/* Align to the right */
	align-items: center;
	width: auto;
}

.bell {
	order: 2;
	/* Set the order to 2, so it appears on the right */
	background-color: ivory;
	display: flex;
	justify-content: flex-end;
	/* Align to the right */
	align-items: center;
	padding: 10px;
	/* Optional: Add padding for better appearance */
}

.hero-body {
	background-color: ivory;
	width: 2000px;
	align-items: center;
	margin-right: 200%;
}

section {
	width: 600px;
	max-width: 100vw;
	margin: auto;
}

.post-container {
	display: flex;
	flex-wrap: wrap;
}

.box {
	max-width: 600px;
	/* 최대 폭을 600px로 설정하거나 필요에 따라 조절 */
	margin: auto;
	/* 중앙 정렬을 위해 margin을 auto로 설정 */
}

.media-left {
	margin-right: 20px;
}

.button-container {
	display: flex;
	justify-content: space-around;
	align-items: center;
	margin-top: 20px;
	/* Center vertically */
}

.login-image img, .bell img {
	margin-right: 0;
	/* Adjust margin between icons */
}

.futsal-class {
	margin: auto;
}

.feed-table {
	width: 100%;
	max-width: 800px;
	margin: auto;
}
</style>
</head>


<body>

	<%-- <%
		List<Feed> Feeds = new FeedDAO().totalFeed();
		pageContext.setAttribute("Feeds", Feeds);
	%> --%>
	<section class="hero is-primary is-bold is-medium">


		<div class="hero-body">

			<img src="핵심images/FUTSAL062-removebg-preview.png">
			<div class="container">

				<h2 class="subtitle" style="color: green;">GWANGJU 2030 FUTSAL
					COMMUNITY</h2>
			</div>
		</div>
	</section>
	<section class="login-image">

		<a href="핵심_로그인.html"><img src="핵심images/로그인.png" width="40"></a>
		<a href="핵심_알림.html"><img src="핵심images/알림.PNG" width="40"></a>


	</section>
	<section class="hero is-primary is-bold is-medium"></section>
	<section>
		<br> <br> <br>
	</section>

	<div class="container button-container">
		<!-- 고정시켜야됨 -->
		<div>
			<a href="MyPage.html">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">My Page</button>
			</a> <a href="./FeedWrite.jsp">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">피드 작성</button>
			</a> <a href="pagenation.html">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">매칭용병 잡기</button>
			</a>
		</div>

	</div>
	<section>
		<br> <br> <br>
	</section>
	<section class="section">
		<h1 class="title">피드</h1>
		<br>
		<h2 class="subtitle">
			내가 올리고싶은 이야기를 <b>자유롭게</b> 올려주세요
		</h2>
		</div>
	</section>
	<section>
		<br> <br> <br>
	</section>
	<a href="피드 및 게시글.html">
		<div class="post-container"></div>
		<div class="post-container"></div>
	</a>
	<%-- <%
	for (int i = 0; i < Feeds.size(); i++) {
	%> --%>
	<div class="box">
		<article class="media">
			<div class="media-left">
				<figure class="image is-64x64">
					<%-- <img src="./file/<%=Feeds.get(i).getFilename()%>" alt="Image"> --%>
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<%--  <p>
						<strong><%=Feeds.get(i).getWriter()%></strong><strong><%=Feeds.get(i).getB_date()%></strong>
						<br>
						<%=Feeds.get(i).getContent()%><br> 
						<tr>
							<td colspan="2">
								<button class="likeBtn">♡</button> <span>0 <!--int cnt = feedLike.size() -->
							</span>
								<button class="textBtn">댓글 쓰기</button> <span>댓글숫자0</span>
								<button>채팅보내기</button>

							</td>
						</tr>
					</p> --%>
				</div>
				<nav class="level is-mobile">
					<div class="level-left">
						<a class="level-item" aria-label="reply"> <span
							class="icon is-small"> <i class="fas fa-reply"
								aria-hidden="true"></i>
						</span>
						</a> <a class="level-item" aria-label="retweet"> <span
							class="icon is-small"> <i class="fas fa-retweet"
								aria-hidden="true"></i>
						</span>
						</a> <a class="level-item" aria-label="like"> <span
							class="icon is-small"> <i class="fas fa-heart"
								aria-hidden="true"></i>
						</span>
						</a>
					</div>
				</nav>
			</div>
		</article>
	</div>

<%-- 	<%
	}
	%> --%>
</body>

</html>