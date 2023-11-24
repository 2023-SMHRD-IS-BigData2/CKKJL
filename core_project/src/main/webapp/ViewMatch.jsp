<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Message"%>
<%@page import="com.smhrd.model.MessageDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body id="page-top">

	<%
	Member vo = (Member) session.getAttribute("vo");

	if (vo != null) {
		System.out.print(vo.getId());
	}
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
						<!-- Topbar Search -->
						<form
							class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="input-group">
								<div class="input-group-append">
									<button class="search " type="button">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search"
									aria-describedby="basic-addon2">
							</div>
						</form>
						<a class="nav-link collapsed" href="RealMyPage.jsp"
							data-target="#collapseTwo" aria-expanded="true"
							aria-controls="collapseTwo"> <span><button
									class="button is-primary is-outlined is-large">My Page</button></span>
						</a> <a class="nav-link collapsed" href="RealFeedWrite.jsp"
							data-target="#collapseTwo" aria-expanded="true"
							aria-controls="collapseTwo"> <span><button
									class="button is-primary is-outlined is-large">피드 작성</button></span>
						</a> <a class="nav-link collapsed" href="RealPagenation.jsp"
							data-target="#collapseTwo" aria-expanded="true"
							aria-controls="collapseTwo"> <span><button
									class="button is-primary is-outlined is-large">매칭용병 등록</button></span>
						</a> <a class="nav-link collapsed" href="ViewPagenation.jsp"
							data-target="#collapseTwo" aria-expanded="true"
							aria-controls="collapseTwo"> <span><button
									class="button is-primary is-outlined is-large">매칭용병 보기</button></span>
						</a>
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


							<!-- Nav Item - Alerts -->
							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-user fa-fw"></i> <!-- Counter - Alerts -->
									<span class="badge badge-danger badge-counter">3+</span>
							</a> <!-- Dropdown - Alerts -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="alertsDropdown">
									<h6 class="dropdown-header">Alerts Center</h6>
									<a class="dropdown-item d-flex align-items-center" href="#">
										<div class="mr-3">
											<div class="icon-circle bg-primary">
												<i class="fas fa-file-alt text-white"></i>
											</div>
										</div>
										<div>
											<div class="small text-gray-500">December 12, 2019</div>
											<span class="font-weight-bold">A new monthly report is
												ready to download!</span>
										</div>
									</a> <a class="dropdown-item d-flex align-items-center" href="#">
										<div class="mr-3">
											<div class="icon-circle bg-success">
												<i class="fas fa-donate text-white"></i>
											</div>
										</div>
										<div>
											<div class="small text-gray-500">December 7, 2019</div>
											$290.29 has been deposited into your account!
										</div>
									</a> <a class="dropdown-item d-flex align-items-center" href="#">
										<div class="mr-3">
											<div class="icon-circle bg-warning">
												<i class="fas fa-exclamation-triangle text-white"></i>
											</div>
										</div>
										<div>
											<div class="small text-gray-500">December 2, 2019</div>
											Spending Alert: We've noticed unusually high spending for
											your account.
										</div>
									</a> <a class="dropdown-item text-center small text-gray-500"
										href="#">Show All Alerts</a>
								</div></li>

							<!-- Nav Item - Messages -->

							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
									<!-- Counter - Messages --> <span
									class="badge badge-danger badge-counter">7</span>
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
									<a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle" src="img/undraw_profile_1.svg"
												alt="...">
											<div class="status-indicator bg-success"></div>
										</div>
										<div class="font-weight-bold">
											<div class="text-truncate">Hi there! I am wondering if
												you can help me with a problem I've been having.</div>
											<div class="small text-gray-500">Emily Fowler · 58m</div>
										</div>
									</a> <a class="dropdown-item d-flex align-items-center" href="#">
										<div class="dropdown-list-image mr-3">
											<img class="rounded-circle" src="img/undraw_profile_2.svg"
												alt="...">
											<div class="status-indicator"></div>
										</div>
										<div>
											<div class="text-truncate">I have the photos that you
												ordered last month, how would you like them sent to you?</div>
											<div class="small text-gray-500">Jae Chun · 1d</div>
										</div>
									</a>
									<%
									} else {
									List<Message> messages = new MessageDAO().showMessage(vo.getNick());
									if (messages.size() < 3) {
										for (int i = 0; i < messages.size(); i++) {
											System.out.println(messages.get(i).getSender());
										}
									} else {
										for (int i = 0; i < 3; i++) {
											System.out.println(messages.get(i).getSender());
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
									</a>

									<%
									}
									}
									}
									%>
									<a class="dropdown-item text-center small text-gray-500"
										href="#">Read More Messages</a>
								</div></li>
							<div class="topbar-divider d-none d-sm-block"></div>

							<!-- Nav Item - User Information -->
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" href="RealLogin.jsp"
								id="userDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <%
 if (vo == null) {
 %>
									<span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인해주세요</span>
									<img class="img-profile rounded-circle"
									src="img/undraw_profile.svg"> <%
 } else {
 %> <span
									class="mr-2 d-none d-lg-inline text-gray-600 small"><%=vo.getNick()%></span>
									<img class="img-profile rounded-circle" src="<%=vo.getPic()%>">
									<%
									}
									%>
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item" href="RealLogin.jsp"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> login
									</a> <a class="dropdown-item" href="#"> <i
										class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										Settings
									</a> <a class="dropdown-item" href="#"> <i
										class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
										Activity Log
									</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#" data-toggle="modal"
										data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
									</a>
								</div></li>

						</ul>

					</nav>
					<!-- 여기부터 복사해요 -->
					
	<!-- 일자별로 매치와 용병으로 나눠서 보여주기 -->
	<!-- 배열 받기 -->
	<!-- > -->
		
		<% request. %>
		




</body>
</html>