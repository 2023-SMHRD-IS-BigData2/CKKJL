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
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

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
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <div>
                            <a href="RealMain.jsp"><img src="img/futsal062.png" alt="" width="200" height="40"></a>
                        </div>
                        </button>
                        <!-- Topbar Search -->
                        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <div class="input-group-append">
                                    <button class="search " type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                            </div>
                        </form>
                        <a class="nav-link collapsed" href="RealMyPage.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large" style="margin-right: 10px;">My Page</button></span>
                        </a> <a class="nav-link collapsed" href="RealFeedWrite.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large" style="margin-right: 10px;">피드 작성</button></span>
                        </a> <a class="nav-link collapsed" href="RealPagenation.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large" style="margin-right: 10px;">매칭용병 등록</button></span>
                        </a> <a class="nav-link collapsed" href="ViewPagenation.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large" style="margin-right: 10px;">매칭용병 보기</button></span>
                        </a>
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
                            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-bell fa-fw"></i>
                                </a> <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
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
                                    </a> <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
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
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">Hi there! I am wondering if
                                                you can help me with a problem I've been having.</div>
                                            <div class="small text-gray-500">Emily Fowler · 58m</div>
                                        </div>
                                    </a> <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
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
 %>
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인해주세요</span>
                                    <img class="img-profile rounded-circle" src="img/undraw_profile.svg"> <%
 } else {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=vo.getNick()%></span>
                                    <img class="img-profile rounded-circle" src="<%=vo.getPic()%>">
                                    <%
                           }
                           %>
                                </a> <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="RealLogin.jsp"> <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> login
                                    </a> <a class="dropdown-item" href="#"> <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a> <a class="dropdown-item" href="#"> <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- 여기부터 복사해요 -->
                    <section>
                        <div class="container button-container">
                            <!-- 고정시켜야됨 -->
                        </div>
                </div>
                </section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="row">

                            <!-- Area Chart -->
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                </div>
                            </div>
                        </div>
                        <!-- Pie Chart -->
                        <div class="col-xl-1 col-lg-5"></div>
                        <!-- Content Row -->
                        <div class="row">
                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4" align="center">
                                <!-- Project Card Example -->
                                <!-- Color System -->
                                <div class="row"></div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-4">
                            <h1 class="h3 mb-4 text-gray-800">My page</h1>
                            <section>
                                <div class="col-md-10" style="max-width: 800px;">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <div class="row align-items-center">
                                                <div class="col-auto d-flex">
                                                    <!-- 여기에 프로필 사진 추가 -->
                                                    <img class="rounded-circle mr-3" src="img/로그인 풋살사진.jpg" alt="프로필 사진" width="50" height="50">
                                                </div>
                                                <div class="col">
                                                    <h6 class="m-0 font-weight-bold text-primary">My Profile</h6>
                                                    <small>광주 풋살 대장 발흥민</small>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ... (your existing code) ... -->

                                        <!-- ... (your existing code) ... -->

                                        <div class="card-body">
                                            <!-- Your existing content goes here -->

                                            <!-- Add the table -->
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th class="border">친구</th>
                                                        <th class="border">친구삭제</th>
                                                        <th class="border">게시글 목록</th>
                                                        <th class="border">팀 소개문구</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="border">삼민아</td>
                                                        <td class="border">삼민아</td>
                                                        <td class="border">오풋완</td>
                                                        <td class="border" rowspan="2">광주풋살끝판왕</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="border">팔자철</td>
                                                        <td class="border">팔자철</td>
                                                        <td class="border">풋살 챌린지 영상</td>
                                                    </tr>
                                                    <!-- Add more rows if needed -->
                                                </tbody>
                                            </table>
                                        </div>

                                        <!-- ... (your existing code) ... -->


                                        <!-- ... (your existing code) ... -->

                                    </div>
                                </div>



                                <!-- Illustrations -->
                                <div class="container-fluid custom-my-page-container">
                                    <section>
                                        <div class="container-fluid custom-container-fluid">



                                            <div class="row">
                                                <!-- 첫 번째 열 -->


                                                <!-- 두 번째 열 -->



                                                <!-- 세 번째 열 -->


                                                <!-- 네 번째 열 -->


                                                <!-- 다섯 번째 열 -->


                                                <!-- 여섯 번째 열 -->

                                            </div>
                                        </div>
                                </div>

                        </div>
                        </section>
                    </div>




                    <!-- Illustrations -->





                    <!-- Approach -->





                    </section>


                </div>

            </div>
            <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
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
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready
                    to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="RealLogin.jsp">Logout</a>
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