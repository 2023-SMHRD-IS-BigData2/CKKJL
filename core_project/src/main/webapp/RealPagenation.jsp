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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar Page</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        /* Add your custom styles here */
        body {
            font-family: 'Nunito', sans-serif;
        background-color: #f8f9fc;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    .calendar-container {
        text-align: center;
        margin-top: 20px;
        margin-left: 200px; /* 왼쪽 마진 추가 */
        margin-right: 200px; /* 오른쪽 마진 추가 */
    }
    .navbar {
        background-color: #ffffff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        display: flex;
        justify-content: space-between;
        padding: 10px 20px;
        width: 100%;
    }

    .navbar img {
        margin: 10px;
    }


        .pagination {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .pagination a {
            text-decoration: none;
            color: #62ac2e;
            padding: 8px 16px;
            border-radius: 5px;
            margin: 0 4px;
            transition: background-color 0.3s;
        }

        .pagination a:hover {
            background-color: #d1e7ff;
        }

        .pagination a.active {
            background-color: #62ac2e;
            color: #fff;
        }

        .calendar-container {
            text-align: center;
            margin-top: 20px;
        }

        #calendar-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            
        }

        #calendar-table th,
        #calendar-table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
            background-color: #fff;
        }

        #calendar-table a {
            display: block;
            text-decoration: none;
            color: #333;
            padding: 10px;
            border: 1px solid #ddd;
            margin: 2px;
            border-radius: 5px;
            background-color: #fff;
        }

        #calendar-table a:hover {
            background-color: #f2f2f2;
        }
        h1 {
        color: #62ac2e;
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
</head>

<body>
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

							<li class="nav-item dropdown no-arrow mx-1"><a
								class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">     <i class="fas fa-thumbs-up"></i>

							</a> <!-- Dropdown - Messages -->
								<div
									class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="messagesDropdown">

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
    <!-- Your existing navigation bar code here -->

    

    <!-- Calendar Container -->
    <div class="calendar-container">
        <h1>⚽ 원하시는 날짜를 선택해주세요 ⚽</h1>
        <!-- Pagination -->
    <div class="pagination" id="pagination"></div>

        <table id="calendar-table">
            <thead>
                <tr>
                    <th>Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                </tr>
            </thead>
            <tbody id="calendar-body"></tbody>
        </table>
    </div>

    <!-- Pagination Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const calendarContainer = document.querySelector(".calendar-container");
            const calendarBody = document.getElementById("calendar-body");
            const paginationContainer = document.getElementById("pagination");

            let currentMonth = new Date().getMonth() + 1; // 현재 월 (1-12)
            let currentYear = new Date().getFullYear();

            function generateCalendar(month, year) {
                calendarBody.innerHTML = "";

                // 월의 첫째 날 가져오기
                const firstDay = new Date(year, month - 1, 1).getDay();

                // 월의 마지막 날 가져오기
                const lastDay = new Date(year, month, 0).getDate();

                let dateCounter = 1;

                for (let i = 0; i < 5; i++) {
                    const row = document.createElement("tr");

                    for (let j = 0; j < 7; j++) {
                        const cell = document.createElement("td");
                        const dayLink = document.createElement("a");

                        if (i === 0 && j < firstDay) {
                            // 첫째 날 이전의 빈 셀 추가
                        	dayLink.textContent = "";
                        } else if (dateCounter <= lastDay) {
                            // 캘린더에 날짜 추가
                            
                            dayLink.href = "#";
                            dayLink.textContent = dateCounter;


                            // 각 날짜를 처리하는 논리를 여기에 추가하세요
                            // 필요한 경우 클릭 이벤트를 추가하거나 필요에 맞게 사용자 지정하세요
                            dayLink.href = `RealMatching.jsp?#${year}.${month}.${dateCounter}`;
                                                if (month === 11 && dateCounter >= 19 && dateCounter <= 30) {

                                                    dayLink.classList.add("bold");
                                                }

                            
                            dateCounter++;
                        }

                        cell.appendChild(dayLink);
                        row.appendChild(cell);
                    }

                    calendarBody.appendChild(row);
                }
            }

            function displayPagination() {
                paginationContainer.innerHTML = "";

                for (let i = 1; i <= 12; i++) {
                    const pageLink = document.createElement("a");
                    pageLink.href = "#";
                    pageLink.textContent = i;

                    pageLink.addEventListener("click", function () {
                        currentMonth = i;
                        generateCalendar(currentMonth, currentYear);
                        highlightActivePage(i);
                    });

                    paginationContainer.appendChild(pageLink);
                }

                // 초기에 현재 월을 강조합니다.
                highlightActivePage(currentMonth);
            }

            function highlightActivePage(month) {
                const paginationLinks = document.querySelectorAll(".pagination a");
                paginationLinks.forEach(link => link.classList.remove("active"));

                const activeLink = document.querySelector(`.pagination a:nth-child(${month})`);
                if (activeLink) {
                    activeLink.classList.add("active");
                }
            }

            // 초기 표시
            generateCalendar(currentMonth, currentYear);
            displayPagination();

        });
    </script>
</body>

</html>