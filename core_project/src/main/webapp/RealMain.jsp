<%@page import="com.smhrd.model.Matching"%>
<%@page import="com.smhrd.model.MatchingDAO"%>
<%@page import="java.awt.Window"%>
<%@page import="com.smhrd.model.IframeDAO"%>
<%@page import="java.util.Random"%>
<%@page import="com.smhrd.model.FeedLike"%>
<%@page import="com.smhrd.model.Friend"%>
<%@page import="com.smhrd.model.FriendDAO"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.Comment"%>
<%@page import="com.smhrd.model.FeedDAO"%>
<%@page import="com.smhrd.model.Feed"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Message"%>
<%@page import="com.smhrd.model.MessageDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>FUTSAL 062</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="path/to/styles.css">
<style>
body {
	margin-left: 10px;
	/* 원하는 여백 값으로 조절하세요 */
}

.navbar-nav .nav-link.collapsed {
	margin-right: 10px;
	/* Adjust the margin as needed */
}

.card.shadow.mb-4 {
	width: 1000px;
	/* Adjust the width as needed */
}

.comment-list {
	max-height: 200px;
	/* 최대 높이를 지정합니다. */
	overflow-y: auto;
}

/* 세로 스크롤을 활성화합니다. */
.profileimg {
	border-radius: 40%;
	object-fit: cover;
	width: 60px;
	height: 60px;

}
.topbar {
   height: 6rem
}
.button{
height: 50px;
    font-size: 23px;
    width: 180px;
}
</style>

<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
</head>

<body id="page-top">
	<script type="text/javascript">
      function MessageWrite() {
         window.open("MessageWrite.jsp", "MessageWrite",
               "width=400, height=500, top=10, left=10")
      }
   </script>

	<%
	Member vo = (Member) session.getAttribute("vo");
	%>



	<!-- Page Wrapper -->
	<div id="wrapper">


		<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Topbar -->
					<nav
						class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

						<!-- Sidebar Toggle (Topbar) -->
						<div>
							<a href="RealMain.jsp"><img src="img/futsal062.png" alt=""
								width="200" height="40"></a>
						</div>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mx-auto">
								<!-- mx-auto 클래스를 사용하여 수평 가운데 정렬 -->
								<li class="nav-item"><a class="nav-link collapsed"
									href=<%if (vo != null) {%>
									"RealMyPage.jsp"<%} else {%>"RealLogin.jsp"<%}%>
									data-target="#collapseTwo" aria-expanded="true"
									aria-controls="collapseTwo"> <span align="center"><button
												class="button is-primary is-outlined is-large">My
												Page</button></span>
								</a></li>
								<li class="nav-item"><a class="nav-link collapsed"
									href=<%if (vo != null) {%>
									"RealFeedWrite.jsp"<%} else {%> "RealLogin.jsp" <%}%>
									data-target="#collapseTwo" aria-expanded="true"
									aria-controls="collapseTwo"> <span align="center"><button
												class="button is-primary is-outlined is-large">피드
												작성</button></span>
								</a></li>
								<li class="nav-item"><a class="nav-link collapsed"
									href=<%if (vo != null) {%>
									"RealPagenation.jsp"<%} else {%>"RealLogin.jsp" <%}%>
									data-target="#collapseTwo" aria-expanded="true"
									aria-controls="collapseTwo"> <span align="center"><button
												class="button is-primary is-outlined is-large">매칭용병
												등록</button></span>
								</a></li>
								<li class="nav-item"><a class="nav-link collapsed"
									href="ViewPagenation.jsp" data-target="#collapseTwo"
									aria-expanded="true" aria-controls="collapseTwo"> <span
										align="center"><button
												class="button is-primary is-outlined is-large">매칭용병
												보기</button></span>
								</a></li>
							</ul>
						</div>
						<!-- Topbar Navbar -->
						<ul class="navbar-nav ml-auto">

							<!-- Nav Item - Search Dropdown (Visible Only XS) -->
							<li class="nav-item dropdown no-arrow d-sm-none"><a
								class="nav-link dropdown-toggle" href="#" id="searchDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
							</a> <!-- Dropdown - Messages -->
								<div
									class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
									aria-labelledby="searchDropdown">
									<form class="form-inline mr-auto w-100 navbar-search">
										<div class="input-group">
											<input type="text"
												class="form-control bg-light border-0 small"
												placeholder="Search for..." aria-label="Search"
												aria-describedby="basic-addon2">
											<div class="input-group-append">
												<button class="btn btn-primary" type="button">
													<i class="fas fa-search fa-sm"></i>
												</button>
											</div>
										</div>
									</form>
								</div></li>
								
                         <!-- 매칭 경기 -->
							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">     <i class="fas fa-thumbs-up"></i>
								

							</a> <!-- Dropdown - Messages -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="messagesDropdown">
									<%
									if (vo != null) {
										System.out.println(vo.getU_id());
										List<Matching> matching = new MatchingDAO().receiveMatching(vo.getU_id());
										if (matching != null) {
											for (int i = 0; i < matching.size(); i++) {
										Member challenger = new MemberDAO().login(matching.get(i).getChallenger());
									%>
									<div class="friend-request" align="center">
										<div class="friend-info">
											
											<div style="font-size: 16px"> <%=challenger.getNick()%>님이
												시합 요청
											</div>
										</div>
										<div class="friend-actions">
											<a
												href="MatchingService?id=1&challenger<%=challenger.getU_id()%>&f_index=<%=matching.get(i).getF_index()%>">
												<button class="btn-accept" style="width:50px;height:30px;">수락</button>
											</a> <a
												href="MatchingService?id=2&challenger<%=challenger.getU_id()%>&f_index=<%=matching.get(i).getF_index()%>">
												<button class="btn-reject" style="width:50px;height:30px;">거절</button>
											</a>
										</div>
									</div>
									<%
									}
									}
									}
									%>

									<a class="dropdown-item text-center small text-gray-500"
										href="#">Read More Messages</a>
								</div></li>
								
								
								
								
							<!-- Nav Item - Alerts -->
							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-user fa-fw"></i>


							</a> <!-- Dropdown - Alerts -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="alertsDropdown">
									<h6 class="dropdown-header">friends Center</h6>

									<%
									if (vo != null) {
										System.out.println(vo.getU_id());
										List<Friend> friends = new FriendDAO().check(vo.getU_id());
										if (friends != null) {
											for (int i = 0; i < friends.size(); i++) {
										Member friend = new MemberDAO().login(friends.get(i).getApplicant());
									%>
									<div class="friend-request" align="center">
										<div class="friend-info">
											
											<div style="font-size: 16px"> <%=friend.getNick()%>님이
												친구 요청
											</div>
										</div>
										<div class="friend-actions">
											<a
												href="FriendService2?id2=<%=friends.get(i).getApplicant()%>">
												<button class="btn-accept" style="width:50px;height:30px;">수락</button>
											</a> <a
												href="FriendService3?id3=<%=friends.get(i).getApplicant()%>">
												<button class="btn-reject" style="width:50px;height:30px;">거절</button>
											</a>
										</div>
									</div>
									<%
									}
									}
									}
									%>

								</div></li>

							<!-- Nav Item - Messages -->

							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>

							</a> <!-- Dropdown - Messages -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="messagesDropdown">
									<h6 class="dropdown-header">
										Message Center
										<!-- 문자 찾기 -->
									</h6>

									<%
									if (vo == null) {
									%>
									<%
									} else {
									List<Message> messages = new MessageDAO().showMessage(vo.getU_id());

									for (int i = 0; i < messages.size(); i++) {
									%>

									<a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle" src="img/undraw_profile_1.svg"
												alt="...">
											<div class="status-indicator bg-success"></div>
										</div>
										<div class="font-weight-bold">
											<div class="text-truncate"><%=messages.get(i).getMessage()%></div>
											<div class="small text-gray-500"><%=messages.get(i).getSender()%>
												·
												<%=messages.get(i).getM_date()%></div>
										</div>
										<div>
											<form action="DeleteService" method="post">
												<input name="num" type="hidden"
													value="<%=messages.get(i).getNum()%>">
												<div style="margin-left: 10px">
													<input type="submit" value="삭제"
														style="background-color: #5fa92d; border-color: #5fa92d; border-radius: 10px; color: white; font-weight: bold">
												</div>
											</form>
										</div> <%
 }
 }
 %> <a class="dropdown-item text-center small text-gray-500"
										href="javascript:MessageWrite()">문자 보내기</a>
								</div></li>

							<div class="topbar-divider d-none d-sm-block"></div>

							<!-- Nav Item - User Information -->
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" href="RealLogin.jsp"
								id="userDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <%
 if (vo == null) {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인해주세요</span>
									<img class="img-profile rounded-circle"
									src="img/undraw_profile.svg"> <%
 } else {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=vo.getNick()%></span>
 									<%if(vo.getPic().contains("http")){ %>
									<img class="img-profile rounded-circle" src="<%=vo.getPic()%>">
									<%}else{ %>
									<img class="img-profile rounded-circle" src="img/<%=vo.getPic()%>">
									<%} %>
									<%
									}
									%></a> <!-- Dropdown - User Information -->



								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<%
									if (vo == null) {
									%>
									<a class="dropdown-item" href="RealLogin.jsp"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 로그인
									</a>
									<%
									} else {
									%>
									<a class="dropdown-item" href="UpdateUser.jsp"> <i
										class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 정보변경 <a
										class="dropdown-item" href="#" data-toggle="modal"
										data-target="#logoutModal"> <i
											class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
											로그아웃
									</a> <%
 }
 %>
								</div></li>

						</ul>


					</nav>
					<!-- 여기부터 복사해요 -->

					<!-- End of Topbar -->
					<section>
						<div class="container button-container">
							<!-- 고정시켜야됨 -->





						</div>
				</div>
				</section>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->

					<!-- Content Row -->
					<div class="row">





						<!-- Earnings (Monthly) Card Example -->

						<div class="row">


							<!-- Area Chart -->

							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->


								<!-- End of Footer -->


							</div>




							<!-- Pie Chart -->
							<div class="col-xl-4 col-lg-5"></div>


							<!-- Content Row -->
							<div class="row">
								<table class="futsal-class">
									<h1 class="h3 mb-4 text-gray-800">풋살 강좌</h1>
									<!--caption : 표의 제목-->

									<!--thead : Header에 들어가 Content를 모아놓은 태그-->
									<thead>
										<!--tr : table row 행을 의미하는 태그-->
										<tr align="center">
											<!--th : table header 행의 제목을 의미하는 태그-->



											<%
											Random random = new Random();
											for (int i = 0; i < 3; i++) {
												int j = random.nextInt(99);
												String address = new IframeDAO().Load(j);
											%>
											<th width="300" height="400"><%=address%></th>

											<%
											}
											%>


										</tr>
									</thead>
								</table>

								<!-- Content Column -->
								<div class="col-lg-6 mb-4">

									<!-- Project Card Example -->



								</div>

							</div>


							<div class="row">
								<div class="col-lg-20 mb-4">
									<h1 class="h3 mb-4 text-gray-800">Main page</h1>

									<!-- Illustrations -->
									<%
									List<Feed> feeds = new FeedDAO().totalFeed();
									%>
									<%
									String ck = null; // 좋아요 여부 및 로그인 판별
									%>
									<%
									String link = "RealLogin.jsp"; // 초기 설정
									%>
									<%
									String hart = "♡"; // 초기 설정
									%>
									<%
									FeedLike fl = null;
									%>
									<%
									for (Feed i : feeds) {
									%>
									<%
									if (vo != null) {
									%>
									<%
									fl = new FeedLike(i.getFeed_index(), vo.getU_id());
									%>

									<%
									System.out.println(fl.toString());
									%>
									<%
									if (new FeedDAO().whetherlike(fl)) {
									%>
									<%
									ck = "dislikeBtn";
									%>
									<%
									hart = "♥";
									%>
									<%
									link = "likeService?check=1&num=" + i.getFeed_index();
									%>
									<%
									} else {
									%>
									<%
									ck = "likeBtn";
									%>
									<%
									hart = "♡";
									%>
									<%
									link = "likeService?check=2&num=" + i.getFeed_index();
									%>
									<%
									}
									%>
									<%
									} else {
									%>
									<%
									ck = "login";
									%>
									<%
									}
									%>
									<div class="card shadow mb-4"
										style="max-width: 1000px; max-height: 570px;">

										<div class="card-header py-3">
											<h6 class="m-0 font-weight-bold text-primary">
												<%
												String index = i.getF_user_index();
												Member member = new MemberDAO().login(index);
												%>
												<%=member.getNick()%>
												<% List<Friend> friends =  new FriendDAO().All(vo.getU_id()); 
												boolean checkFriend=false;
												for (Friend temp : friends){
													if(member.getU_id().equals(temp.getApplicant())){
														checkFriend=true;
													}
												}
												
							
												if (checkFriend){%>
												<a
													href="MessageWrite.jsp">
													<i class="fas fa-envelope fa-fw float-right"
													style="color: #62ac2e"></i>
												</a>
												<%} else {%>	
												<a
													href="FriendService?id=<%=member.getU_id()%>">
													<i class="fas fa-user fa-fw float-right"
													style="color: #62ac2e"></i>
												</a>
												
												
												<%}%> 

											</h6>
										</div>
										<div class="card-body">
											<div class="container-fluid">
												<div class="table-responsive">
													<table class="table table-bordered" id="dataTable"
														style="width: 100%;" cellspacing="0">
														<thead>
															<tr>
																<th class="text-center">피드</th>
																<th class="text-center" style="width: 413px">댓글</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td rowspan="2"><img alt=""
																	src="img/<%=i.getFeed_file()%>" width="100%"
																	height="300" object-fit: cover><br> <br><%=i.getFeed_content()%>
																	<h4>
																		<a class=<%=ck%> href=<%=link%>
																			style="margin-right: 5px;"><%=hart%></a><%=i.getF_likecnt()%></h4>
																</td>
																<%
																List<Comment> Comments = new CommentDAO().showComment(i.getFeed_index());
																%>
																<td>
																	<div style="overflow-y: scroll; max-height: 350px;">
																		<%
																		for (int j = 0; j < Comments.size(); j++) {
																		%>
																		<ul class="comment-list">
																			<li><strong><%=Comments.get(j).getC_NAME()%></strong>
																				<br><%=Comments.get(j).getC_COMMENT()%></li>
																		</ul>
																		<%
																		}
																		%>
																	</div>
																</td>
															</tr>
															<tr>
																<%
																if (vo == null) {

																} else {
																%>

																<td style="height: 55px">
																	<div class="comment-form">
																		<form id="commentForm" action="CommentService">
																			<input type="hidden" name="F_INDEX"
																				value="<%=i.getFeed_index()%>"> <input
																				type="hidden" name="C_NAME"
																				value="<%=vo.getNick()%>">
																			<%
																			if (vo != null) {
																			%>


																			<input type="text" name="C_COMMENT"
																				style="width: 85%;" placeholder="댓글을 입력하세요">
																			<input type="submit" value="전송" class="send">
																			<%
																			} else {
																			%>
																			<p>로그인 후에 이용할 수 있습니다.</p>
																			<%
																			}
																			%>
																		</form>
																	</div>
																</td>
																<%
																}
																%>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<!-- //Illustrations -->

									<%
									}
									%>

								</div>
							</div>




						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->


			<!-- End of Footer -->
	</div>

	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">나가시겠습니까?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
				</div>
				<div class="modal-body">로그인 버튼을 누르시면 로그아웃 됩니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
					<a class="btn btn-primary" href="LogoutService">로그아웃</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>

	<!-- Kakao SDK -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
        Kakao.init('eefca775da363abc546f57a131ec1863'); //발급받은 키 중 javascript키를 사용해준다.
        console.log(Kakao.isInitialized()); // sdk초기화여부판단

        <
        % --$(document).on('click', '.likeBtn', (e) => {
            // console.log(e);
            $(e.target).text('♥');
            // $('.likeBtn+span').text('1');
            <
            % new FeedDAO().likeup(fl); % >
            $(e.target).removeAttr('class'); /// 속성자체
            $(e.target).attr('class', 'dislikeBtn');
        });



        // (2) 좋아요 취소 버튼 클릭 시
        //     좋아요 취소 -> 좋아요
        //      1 -> 0
        //     class="dislikeBtn" -> class="likeBtn"
        $(document).on('click', '.dislikeBtn', (e) => {
            <
            % new FeedDAO().likedown(fl); % >
            $(e.target).text('♡');
            // $('.dislikeBtn+span').text('0');
            <
            % System.out.println(fl.toString()); % >

            $(e.target).removeClass('dislikeBtn'); /// 속성 값만
            $(e.target).attr('class', 'likeBtn');
        });
        -- % >
    </script>

</body>

</html>