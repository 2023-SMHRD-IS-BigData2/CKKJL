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

    <title>fds</title>

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
            /* 세로 스크롤을 활성화합니다. */
    </style>


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
                            <a href="RealMain.jsp"><img src="img/futsal062.PNG" alt="" width="200" height="40"></a>
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
                        <a class="nav-link collapsed" href="RealMyPage.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large">My Page</button></span>
                        </a> <a class="nav-link collapsed" href="RealFeedWrite.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large">피드 작성</button></span>
                        </a> <a class="nav-link collapsed" href="RealPagenation.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large">매칭용병 등록</button></span>
                        </a> <a class="nav-link collapsed" href="ViewPagenation.jsp" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <span><button class="button is-primary is-outlined is-large">매칭용병 보기</button></span>
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
                            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-user fa-fw"></i> <!-- Counter - Alerts -->

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
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인해주세요</span>
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
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->


                                    <!-- End of Footer -->


                                </div>


                            </div>

                            <!-- Pie Chart -->
                            <div class="col-xl-4 col-lg-5"></div>


                            <!-- Content Row -->
                            <div class="row">

                                <!-- Content Column -->
                                <div class="col-lg-6 mb-4">

                                    <!-- Project Card Example -->



                                </div>

                            </div>


                            <div class="row">
                                <div class="col-lg-20 mb-4">
                                    <h1 class="h3 mb-4 text-gray-800">Main page</h1>

                                    <!-- Illustrations -->
                                    <% List<Feed> feeds = new FeedDAO().totalFeed(); %>
                                    <% for(Feed i : feeds){ %>
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">
                                                <%String index = i.getF_user_index(); %>
                                                <%Member member = new MemberDAO().login(index); %>
                                                <%= member.getNick() %>
                                                <i class="fas fa-user fa-fw float-right"></i> 
                                            </h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="container-fluid">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered" id="dataTable" style="width:700px;" cellspacing="0">
                                                        <thead>
                                                            <tr>
                                                                <th class="text-center">피드</th>
                                                                <th class="text-center">댓글</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td rowspan="2"><img alt="" src="img/<%=i.getFeed_file() %>" width="300" height="300" object-fit: cover><br><br><%=i.getFeed_content() %></td>
                                                                <% List<Comment> Comments = new CommentDAO().showComment(i.getFeed_index()); %>
                                                                <td>
                                                                <% for(int j =0;j<Comments.size();j++){ %>
                                                                    <ul class="comment-list">
                                                                        <li><strong><%=Comments.get(j).getC_NAME() %></strong> <br><%=Comments.get(j).getC_COMMENT() %></li>
                                                                    </ul>
                                                                <%} %>
                                                                </td>
                                                            </tr>
                                                            <tr>
																 <%
                           										if (vo == null) {
                           											
                           										}else{
                           												%>
                           										
                                                                <td>
                                                                    <div class="comment-form">
                                                                        <form id="commentForm" action="CommentService">
                                                                        	<input type="hidden" name="F_INDEX" value="<%= i.getFeed_index() %>">
                                                                        	<input type="hidden" name="C_NAME" value="<%= vo.getNick() %>">
                                                                            <label for="comment">댓글 입력:</label>
                                                                            <textarea id="comment" name="C_COMMENT" rows="4" cols="50" required></textarea>
                                                                            <br>
                                                                            <input type="submit" value="댓글 전송">
                                                                        </form>
                                                                    </div>
                                                                </td>
                                                                <%} %>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //Illustrations -->
                                    <%} %>
                                    
                                    
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
                </div>
                <div class="modal-body">Select "Logout" below if you are ready
                    to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="LogoutService">Logout</a>
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
    </script>

</body>

</html>