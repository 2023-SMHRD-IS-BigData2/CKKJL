<%@page import="com.smhrd.model.Team"%>
<%@page import="com.smhrd.model.TeamDAO"%>
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
									<h6 class="dropdown-header">Matching Center</h6>
									<%
									if (vo != null) {
										System.out.println(vo.getU_id());
										List<Matching> matching = new MatchingDAO().receiveMatching(vo.getU_id());
										if (matching != null) {
											for (int i = 0; i < matching.size(); i++) {
										Member challenger = new MemberDAO().login(matching.get(i).getChallenger());
										int team_i = challenger.getTeam_index();
										Team info = new TeamDAO().selTeam(team_i);
									%>
									<div class="friend-request" align="center">
										<div class="friend-info">

											<%int num = info.getT_estnum(); %>
											<div style="font-size: 16px"> <%=challenger.getNick()%>님이 시합 요청 <br>
											<%=(info.getE_time()/num + info.getE_level()/num + info.getE_money()/num + info.getE_manner()/num+info.getE_respon()/num) / 5%>점
											(평가수<%=info.getT_estnum() %>) 시간:<%=info.getE_time()/num %>,수준:<%= info.getE_level()/num%>,
												비용:<%=info.getE_money()/num  %>,	매너:<%=info.getE_manner()/num  %>,응답:<%=info.getE_respon()/num  %>

											</div>
										</div>
										<div class="friend-actions">
											<a
												href="MatchingService?challenger=<%=challenger.getU_id()%>&f_index=<%=matching.get(i).getF_index()%>">
												<button class="btn-accept" style="width:50px;height:30px;">수락</button>
											</a> <a
												href="MatchingService2?challenger=<%=challenger.getU_id()%>&f_index=<%=matching.get(i).getF_index()%>">
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