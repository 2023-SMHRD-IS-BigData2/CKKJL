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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FUTSAL 062</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

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
            width: 800px;
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
    </style>


</head>

<body id="page-top">


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
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <div>
                            <a href="RealMain.jsp"><img src="img/futsal062.png" alt="" width="200" height="40"></a>
                        </div>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto"> <!-- mx-auto 클래스를 사용하여 수평 가운데 정렬 -->
                        <li class="nav-item">                  
						<a class="nav-link collapsed" href=<%if (vo != null) {%>"RealMyPage.jsp"<%} else{%>"RealLogin.jsp"<% } %> data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span align="center"><button class="button is-primary is-outlined is-large">My Page</button></span>
                        </a></li>
                        <li class="nav-item">  
                        <a class="nav-link collapsed" href=<%if (vo != null) {%>"RealFeedWrite.jsp"<%} else {%> "RealLogin.jsp" <% } %> data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span align="center"><button class="button is-primary is-outlined is-large">피드 작성</button></span>
                        </a></li>
                        <li class="nav-item">   
                        <a class="nav-link collapsed" href=<%if (vo != null) {%>"RealPagenation.jsp"<%} else {%>"RealLogin.jsp" <% } %> data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span align="center"><button class="button is-primary is-outlined is-large">매칭용병 등록</button></span>
                        </a></li>
                        <li class="nav-item"> 
                        <a class="nav-link collapsed" href="ViewPagenation.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span align="center"><button class="button is-primary is-outlined is-large">매칭용병 보기</button></span>
                        </a></li>
                        </ul>
                        </div>
                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none"><a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
                                </a> <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>


                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-user fa-fw"></i> <!-- Counter - Alerts -->



                                </a> <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">Alerts Center</h6>

                                    <%
										if (vo != null) {
											System.out.println(vo.getU_id());
											List<Friend> friends = new FriendDAO().check(vo.getU_id());
											if (friends != null) {
												for (int i = 0; i<friends.size();i++) {
													
										%>

										<a class="dropdown-item d-flex align-items-center" href="#">
										<div class="mr-3">
											<div class="icon-circle bg-primary">
												<img class="profileimg" src="<%=friends.get(i).getApp_pic()%>">
											</div>
										</div>
										<div>
											<div class="small text-gray-500"><%=friends.get(i).getApp_nick()%>님이
												친구 요청을 했습니다.
											</div>
											<span class="font-weight-bold"> 
											<a href="FriendService2?id2=<%=friends.get(i).getApplicant()%>
											&nick2=<%=friends.get(i).getApp_nick()%>&pic2=<%=friends.get(i).getApp_pic()%>">
											<input id="acc2" type="button" value="수락"></a> 
											<a href="FriendService3?id3=<%=friends.get(i).getApplicant()%>
											&nick3=<%=friends.get(i).getApp_nick()%>&pic3=<%=friends.get(i).getApp_pic()%>">
											<input id="acc3"
												type="button" value="거절"></a>
											</span>
										</div></a> <%

 }
 }
 }
 %>

                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                </div>
                            </li>

                            <!-- Nav Item - Messages -->

                            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>

                                </a> <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">
                                        Message Center
                                        <!-- 문자 찾기 -->
                                    </h6>
                                   <%
									if (vo == null) {
									%>
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
                                            <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
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
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                </div>
                            </li>
                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow"><a class="nav-link dropdown-toggle" href="RealLogin.jsp" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <%
 if (vo == null) {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인해주세요</span>
                                    <img class="img-profile rounded-circle" src="img/undraw_profile.svg"> <%
 } else {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=vo.getNick()%></span>
                                    <img class="img-profile rounded-circle" src="<%=vo.getPic()%>">
                                    <%
									}
									%></a>
									 <!-- Dropdown - User Information -->
									 
									
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                 <% if(vo == null) { %>
                                    <a class="dropdown-item" href="RealLogin.jsp"> <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 로그인
                                   </a> <% } else { %>
                                     <a class="dropdown-item" href="UpdateUser.jsp"> <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        정보변경
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        로그아웃 
                                    </a> <%} %> 
                                </div> 
                            </li>
									
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




                        <!-- Content Row -->


                        <div class="row">


                            <!-- Area Chart -->
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->

                                </div>

                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5"></div>


                        <!-- Content Row -->
                        <div class="row">

                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->


                                <!-- Color System -->
                                <div class="row"></div>
                            </div>

                        </div>

                        <div class="calendar-container">
                            <h1 class="h3 mb-4 text-gray-800">⚽ 원하시는 날짜를 선택해주세요 ⚽</h1>

                            <!-- Illustrations -->

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

                        <script>
                            document.addEventListener("DOMContentLoaded", function() {
                                const calendarContainer = document.querySelector(".calendar-container");
                                const calendarBody = document.getElementById("calendar-body");
                                const paginationContainer = document.getElementById("pagination");

                                let currentMonth = new Date().getMonth() + 1; // Current month (1-12)
                                let currentYear = new Date().getFullYear();

                                function generateCalendar(month, year) {
                                    calendarBody.innerHTML = "";

                                    const firstDay = new Date(year, month - 1, 1).getDay();
                                    const daysInMonth = new Date(year, month, 0).getDate();

                                    let dayCount = 1;

                                    for (let i = 0; i < 5; i++) {
                                        const row = document.createElement("tr");

                                        for (let j = 0; j < 7; j++) {
                                            const cell = document.createElement("td");
                                            const dayLink = document.createElement("a");

                                            if (i === 0 && j < firstDay) {
                                                // Empty cells before the first day
                                                dayLink.textContent = "";
                                            } else if (dayCount <= daysInMonth) {
                                                // Fill in the days
                                                dayLink.textContent = dayCount;
                                                dayLink.href = `ViewMatch.jsp?date=${year}.${month}.${dayCount}`;
                                                if (month === 11 && dayCount >= 19 && dayCount <= 30) {
                                                    dayLink.classList.add("bold");
                                                }
                                                
                                                dayCount++;
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

                                        pageLink.addEventListener("click", function() {
                                            currentMonth = i;
                                            generateCalendar(currentMonth, currentYear);
                                            highlightActivePage(i);
                                        });

                                        paginationContainer.appendChild(pageLink);
                                    }

                                    // Highlight the current month initially
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

                                // Initial display
                                generateCalendar(currentMonth, currentYear);
                                displayPagination();

                            });
                        </script>
                        <form action="ViewMatch.jsp">
                        	<input type="hidden" name="date" value="${year}.${month}.${dayCount}">
                        </form>


                    </div>


                    <!-- Approach -->



                </div>
            </div>

    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; FUTSAL062</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
    </a>

     <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">나가시겠습니까?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                </div>
                <div class="modal-body">로그인 버튼을 누르시면 로그아웃 됩니다.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
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

</body>

</html>