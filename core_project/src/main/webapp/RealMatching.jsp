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
                            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-user fa-fw"></i>
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
                        <div class="container button-container"></div>
                </div>
                </section>

                <!-- Begin Page Content -->
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
                        <div class="col-xl-4 col-lg-5"></div>
                        <!-- Content Row -->
                        <div class="row">

                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4">

                                <!-- Color System -->
                                <div class="row"></div>
                            </div>
                        </div>



                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5"></div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4">

                                <!-- Color System -->
                                <div class="row"></div>
                            </div>
                        </div>

                        <!-- 여기서부터 -->

                        <div class="col-lg-6 mb-4">
                            <h1 class="h3 mb-4 text-gray-800" align="center">매치용병 등록하기</h1>

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary" align="center">매치등록</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <form action="MatchService" method="post" name="matchForm">
                                            <input type="hidden" name="matchDay" value="">
                                            <script>
                                                var matchDay = window.location.hash
                                                    .slice(1, 11);
                                                document.matchForm.matchDay.value = matchDay;
                                                document.write('날짜 ', matchDay);
                                            </script>
                                            <br> <label for="position">시작 시간</label> <select id="matching_starttime" name="starttime" required>
                                                <option value="미정">미정</option>
                                                <option value="00:00">00:00</option>
                                                <option value="01:00">01:00</option>
                                                <option value="02:00">02:00</option>
                                                <option value="03:00">03:00</option>
                                                <option value="04:00">04:00</option>
                                                <option value="05:00">05:00</option>
                                                <option value="06:00">06:00</option>
                                                <option value="07:00">07:00</option>
                                                <option value="08:00">08:00</option>
                                                <option value="09:00">09:00</option>
                                                <option value="10:00">10:00</option>
                                                <option value="11:00">11:00</option>
                                                <option value="12:00">12:00</option>
                                                <option value="13:00">13:00</option>
                                                <option value="14:00">14:00</option>
                                                <option value="15:00">15:00</option>
                                                <option value="16:00">16:00</option>
                                                <option value="17:00">17:00</option>
                                                <option value="18:00">18:00</option>
                                                <option value="19:00">19:00</option>
                                                <option value="20:00">20:00</option>
                                                <option value="21:00">21:00</option>
                                                <option value="22:00">22:00</option>
                                                <option value="23:00">23:00</option>
                                                <br>
                                            </select> <br> <label for="position"> 끝나는 시간</label> <select id="matching_finishtime" name="finishtime">
                                                <option value="미정">미정</option>
                                                <option value="00:00">00:00</option>
                                                <option value="01:00">01:00</option>
                                                <option value="02:00">02:00</option>
                                                <option value="03:00">03:00</option>
                                                <option value="04:00">04:00</option>
                                                <option value="05:00">05:00</option>
                                                <option value="06:00">06:00</option>
                                                <option value="07:00">07:00</option>
                                                <option value="08:00">08:00</option>
                                                <option value="09:00">09:00</option>
                                                <option value="10:00">10:00</option>
                                                <option value="11:00">11:00</option>
                                                <option value="12:00">12:00</option>
                                                <option value="13:00">13:00</option>
                                                <option value="14:00">14:00</option>
                                                <option value="15:00">15:00</option>
                                                <option value="16:00">16:00</option>
                                                <option value="17:00">17:00</option>
                                                <option value="18:00">18:00</option>
                                                <option value="19:00">19:00</option>
                                                <option value="20:00">20:00</option>
                                                <option value="21:00">21:00</option>
                                                <option value="22:00">22:00</option>
                                                <option value="23:00">23:00</option>
                                                <br>

                                            </select><br> <label for="position"> 인원수 </label> <select id="matching_peoplenum" name="peoplenum">
                                                <option value="5vs5">5:5</option>
                                                <option value="6vs6">6:6</option>
                                                <option value="7vs7">7:7</option>
                                                <option value="그 외">그 외</option>
                                            </select><br> <label for="position">수준</label> <select id="matching_level" name="matching_level">
                                                <option value="하">하</option>
                                                <option value="하상">하상</option>
                                                <option value="중하">중하</option>
                                                <option value="중상">중상</option>
                                                <option value="상">상</option>
                                            </select><br> <label for="position"> 남기실 말</label> <input type="text" id="matching_comment" name="comment" required>
                                            <br> <input type="submit" value="매치 게시글 등록하기" onclick="matchingRegistration()">
                                        </form>

                                    </div>

                                </div>
                            </div>


                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary" align="center">용병
                                        등록</h6>
                                </div>

                                <div class="card-body">
                                    <div class="text-center">
                                        <form action="MatchService" method="post" name="matchForm2">
                                            <input type="hidden" name="matchDay" value="">
                                            <script>
                                                document.matchForm2.matchDay.value = matchDay;
                                                document.write('날짜 ', matchDay);
                                            </script>
                                            <br> <label for="position">가능한 시작 시간 </label> <select id="M_starttime" name="starttime" required>
                                                <option value="미정">미정</option>
                                                <option value="00:00">00:00</option>
                                                <option value="01:00">01:00</option>
                                                <option value="02:00">02:00</option>
                                                <option value="03:00">03:00</option>
                                                <option value="04:00">04:00</option>
                                                <option value="05:00">05:00</option>
                                                <option value="06:00">06:00</option>
                                                <option value="07:00">07:00</option>
                                                <option value="08:00">08:00</option>
                                                <option value="09:00">09:00</option>
                                                <option value="10:00">10:00</option>
                                                <option value="11:00">11:00</option>
                                                <option value="12:00">12:00</option>
                                                <option value="13:00">13:00</option>
                                                <option value="14:00">14:00</option>
                                                <option value="15:00">15:00</option>
                                                <option value="16:00">16:00</option>
                                                <option value="17:00">17:00</option>
                                                <option value="18:00">18:00</option>
                                                <option value="19:00">19:00</option>
                                                <option value="20:00">20:00</option>
                                                <option value="21:00">21:00</option>
                                                <option value="22:00">22:00</option>
                                                <option value="23:00">23:00</option>
                                            </select><br> <label for="position"> 가능한 끝 시간</label> <select id="M_finishtime" name="finishtime">
                                                <option value="미정">미정</option>
                                                <option value="00:00">00:00</option>
                                                <option value="01:00">01:00</option>
                                                <option value="02:00">02:00</option>
                                                <option value="03:00">03:00</option>
                                                <option value="04:00">04:00</option>
                                                <option value="05:00">05:00</option>
                                                <option value="06:00">06:00</option>
                                                <option value="07:00">07:00</option>
                                                <option value="08:00">08:00</option>
                                                <option value="09:00">09:00</option>
                                                <option value="10:00">10:00</option>
                                                <option value="11:00">11:00</option>
                                                <option value="12:00">12:00</option>
                                                <option value="13:00">13:00</option>
                                                <option value="14:00">14:00</option>
                                                <option value="15:00">15:00</option>
                                                <option value="16:00">16:00</option>
                                                <option value="17:00">17:00</option>
                                                <option value="18:00">18:00</option>
                                                <option value="19:00">19:00</option>
                                                <option value="20:00">20:00</option>
                                                <option value="21:00">21:00</option>
                                                <option value="22:00">22:00</option>
                                                <option value="23:00">23:00</option>
                                            </select><br> <label for="position"> 원하는 인원수 </label> <select id="M_peoplenum" name="peoplenum">
                                                <option value="1명">1명</option>
                                                <option value="2명">2명</option>
                                                <option value="3명">3명</option>
                                                <option value="4명">4명</option>
                                                <option value="5명">5명</option>
                                                <option value="6명">6명</option>
                                                <option value="그 외">그 외</option>
                                            </select><br> <label for="position">수준</label> <select id="M_level" name="level">
                                                <option value="하">하</option>
                                                <option value="하상">하상</option>
                                                <option value="중하">중하</option>
                                                <option value="중상">중상</option>
                                                <option value="상">상</option>
                                            </select><br> <label for="position"> 남기실 말</label> <input type="text" id="M_comment" name="comment" required><br>
                                            <input type="submit" value="용병 게시글 등록하기">

                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            <script>
                // "&nbsp;" 1칸 뛰어쓰기 "&ensp;" 2칸 "&emsp;" 3칸
                function matchingRegistration() {
                    <
                    % request.setAttribute("mm", "0"); % >
                    var playerName = document
                        .getElementById('matching_playerName').value;
                    var starttime = document
                        .getElementById('matching_starttime').value;
                    var finishtime = document
                        .getElementById('matching_finishtime').value;
                    var peoplenum = document
                        .getElementById('matching_peoplenum').value;
                    var level = document.getElementById('matching_level').value;
                    var comment = document
                        .getElementById('matching_comment').value;

                    // Create a list item to display the recruited mercenary
                    var listItem = document.createElement('li');

                    listItem.innerHTML = "매칭" + "&ensp;" + date + '(' +
                        starttime + ' ~ ' + finishtime + ") " +
                        "&ensp;" + "인원수 : " + peoplenum + "&ensp;" +
                        '수준 : ' + level + "&ensp;" + "이름 : " +
                        playerName + "<br>" + comment;

                    // Append the list item to the mercenary list
                    document.getElementById('matchingList').appendChild(
                        listItem);
                    // Clear the form fields after recruiting
                    document.getElementById('matching_playerName').value = '';
                    document.getElementById('matching_starttime').value = '';
                    document.getElementById('matching_finishtime').value = '';
                    document.getElementById('matching_peoplenum').value = '';
                    document.getElementById('matching_level').value = '';
                    document.getElementById('matching_comment').value = '';
                }

                function recruitMercenary() {
                    <
                    % request.setAttribute("mm", "1"); % >
                    var playerName = document
                        .getElementById('M_playerName').value;
                    var starttime = document.getElementById('M_starttime').value;
                    var finishtime = document
                        .getElementById('M_finishtime').value;
                    var peoplenum = document.getElementById('M_peoplenum').value;
                    var level = document.getElementById('M_level').value;
                    var comment = document.getElementById('M_comment').value;

                    // Create a list item to display the recruited mercenary
                    var listItem = document.createElement('li');

                    listItem.innerHTML = "용병" + "&ensp;" + date + '(' +
                        starttime + ' ~ ' + finishtime + ")" +
                        "&ensp;" + "원하는 인원 수 : " + peoplenum +
                        "&ensp;" + '수준 : ' + level + "&ensp;" +
                        "이름 : " + playerName + "<br>" + comment;
                    // Append the list item to the mercenary list
                    document.getElementById('mercenaryList').appendChild(
                        listItem);
                    // Clear the form fields after recruiting
                    document.getElementById('M_playerName').value = '';
                    document.getElementById('M_starttime').value = '';
                    document.getElementById('M_finishtime').value = '';
                    document.getElementById('M_peoplenum').value = '';
                    document.getElementById('M_level').value = '';
                    document.getElementById('M_comment').value = '';
                }
            </script>

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