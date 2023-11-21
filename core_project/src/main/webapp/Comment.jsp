<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
		function checkE() {// 옆에 ()괄호에 feedNo,nick,id1,id2,id3,id4 이렇게 적었음
			var inputComm = $('#inputComm').val();
			console.log(inputComm)
			$.ajax({
				// 어디로 요청할 것인지
				url : 'CommentService',
				// 요청 데이터(json)
				data : {
					'inputComm' : inputComm, 'text' : text
				},
				// 요청방식
				type : 'get',
				// 요청 성공시
				success : function(data) {
				// 키티퍼피는 아래처럼 적었음
					//	feedComCount(feedNo,id2);
				//	feedComLoad(feedNo,nick,id3,id4);
				},
				// 요청 실패시 
				error : function() {
					alert("통신실패")
				}
			})
		}
		
		// 댓글 삭제(키티퍼피버전)
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
	</script>
</body>
</html>