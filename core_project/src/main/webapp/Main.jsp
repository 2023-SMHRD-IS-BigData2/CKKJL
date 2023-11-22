<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	background-color: #6ab04c;
	width: 100%;
	align-items: center;
	margin-right: 200%;
}

section {
	width: 100%;
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
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
	<!-- Bootstrap의 button -->

	<!-- Bulma의 button -->


	<section class="hero is-primary is-bold is-medium">


		<div class="hero-body">
			<div style="background-color:white">
			<img src="핵심images/FUTSAL062-removebg-preview.png">
			</div>
			<div class="container">

				<h2 class="subtitle" style="color: black;">GWANGJU 2030 FUTSAL
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
			</a> <a href="./FeedWrite.html">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">피드 작성</button>
			</a> <a href="pagenation.html">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">매칭용병 잡기</button>
			</a>
			<a href="pagenation.html">
				<button class="button is-primary is-outlined is-large"
					style="background-color: white;">매칭용병 보기</button>
			</a>
		</div>

	</div>
	<section>
		<br> <br> <br>
	</section>
	<section class="section">
		<h1 class="title">피드</h1>
		
		</div>
	</section>
	<section>
		<br> <br> <br>
	</section>
	<a href="피드 및 게시글.html">
		<div class="post-container"></div>
		<div class="post-container"></div>
	</a>
	<div class="box">
		<article class="media">
			<div class="media-left">
				<figure class="image is-64x64">
					<img src="핵심images/발흥민.jpg" alt="Image">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>발흥민</strong> <small>1시간전</small> <br> 저희팀과 비슷한 수준을 가진
						팀과 풋살하고싶습니다~
					</p>

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
	
	<div class="box">
		<article class="media">
			<div class="media-left">
				<figure class="image is-64x64">
					<img src="핵심images/삼민아.jpg" alt="Image">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>삼민아</strong> <small>30분전</small> <br> 골때녀 보고 풋살 관심
						생겼어요 같이해요~
					</p>
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
	<table border="1" class="futsal-class">
		<!--caption : 표의 제목-->

		<body style="text-align: center;"></body>
		<!--thead : Header에 들어가 Content를 모아놓은 태그-->
		<thead>
			<!--tr : table row 행을 의미하는 태그-->
			<tr>
				<!--th : table header 행의 제목을 의미하는 태그-->
				<th><iframe width="200" height="400"
						src="https://www.youtube.com/embed/LpDGDBiCas0"
						title="1vs1 탈압박은 이렇게!🔥" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe></th>


			</tr>
		</thead>
	</table>
	<div class="box">
		<article class="media">
			<div class="media-left">
				<figure class="image is-64x64">
					<img src="핵심images/팔자철.jpg" alt="Image">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>팔자철</strong> <small>15분전</small> <br> 매너있는 팀만 연락주세요
					</p>
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
	
	<div class="box">
		<article class="media">
			<div class="media-left">
				<figure class="image is-64x64">
					<img src="핵심images/박건성.jpg" alt="Image">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>박건성</strong> <small>5분전</small> <br> 저랑 시간대가 맞는분과
						풋살하고싶습니다
					</p>
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
	<table border="1" class="futsal-class">
		<!--caption : 표의 제목-->

		<body style="text-align: center;"></body>
		<!--thead : Header에 들어가 Content를 모아놓은 태그-->
		<thead>
			<!--tr : table row 행을 의미하는 태그-->
			<tr>
				<!--th : table header 행의 제목을 의미하는 태그-->
				<th><iframe width="200" height="400"
						src="https://www.youtube.com/embed/w_yeHm4UPs8"
						title="풋살할때 이 기술 쓰는사람 조심하세요" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe></th>



			</tr>
		</thead>
	</table>

</body>

</html>


