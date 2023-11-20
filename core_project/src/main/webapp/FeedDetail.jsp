<%@page import="com.smhrd.model.Board"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<!-- Q19. 게시글 세부내용 조회 기능 -->
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	Board board = new BoardDAO().detailBoard(num);
	%>
	<div id="board">
		<table id="list">
			<tr>
				<td>제목</td>
				<td><%=board.getTitle()%></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=board.getWriter()%></td>
			</tr>
			<tr>
				<td colspan="2"><img alt=""
					src="./file/<%=board.getFilename()%>">
				<h3><%=board.getContent()%></h3></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button class="likeBtn">♡</button> <span>0 <!--int cnt = feedLike.size() -->
				</span>
					<button class="textBtn">댓글 쓰기</button> <span>댓글숫자0</span>
					<button>채팅보내기</button>

				</td>
			</tr>
		</table>
	</div>

		<!-- 댓글 작성 
        function feedComCreate(feedNo,nick,id1,id2,id3,id4) {
			var text = $(id1).val();
			$.ajax({
				url: "FeedCommentCreateCon.do",
				type: "post",
				data: {feedNo: feedNo, text: text},
				dataType: 'json',
				success: function(result) {
					feedComCount(feedNo,id2);
					feedComLoad(feedNo,nick,id3,id4);
				},
				error : function(){
					console.log('err');
				}
			});
		};

    // 댓글 삭제
		function feedComDelete(feedNo,fcNo,nick,id,id2,id3) {
			$.ajax({
				url: "FeedCommentDeleteCon.do",
				type: "post",
				data: {fcNo: fcNo},
				dataType: 'json',
				success: function(result) {
					feedComCount(feedNo,id);
					feedComLoad(feedNo,nick,id2,id3);
				},
				error : function(){
					console.log('err');
				}
			});
		};

    // 대댓글 작성
		function feedCoComCreate(fcNo,feedNo,nick,id1,id2,id3,id4) {
			var text = $(id1).val();
			$.ajax({
				url: "FeedCoCommentCreateCon.do",
				type: "post",
				data: {fcNo: fcNo, feedNo:feedNo, text: text},
				dataType: 'json',
				success: function(result) {
					feedComCount(feedNo,id2);
					feedComLoad(feedNo,nick,id3,id4);
				},
				error : function(){
					console.log('err');
				}
			});
		};
        // 대댓글 삭제
		function feedCoComDelete(feedNo,coNo,nick,id,id2,id3) {
			$.ajax({
				url: "FeedCoCommentDeleteCon.do",
				type: "post",
				data: {coNo: coNo},
				dataType: 'json',
				success: function(result) {
					feedComCount(feedNo,id);
					feedComLoad(feedNo,nick,id2,id3);
				},
				error : function(){
					console.log('err');
				}
			});
		};
    -->
	<script>
        $(document).on('click', '.likeBtn',(e)=>{
        //   console.log(e);
            $(e.target).text('♥');
            $('.likeBtn+span').text('1');

            $(e.target).removeAttr('class');
            $(e.target).attr('class', 'dislikeBtn');
        })

        $(document).on('click','.dislikeBtn',(e)=>{
            $(e.target).text('♡');
            $('.dislikeBtn+span').text('0');

            $(e.target).removeClass('dislikeBtn');
            $(e.target).attr('class','likeBtn');
        })
	</script>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>