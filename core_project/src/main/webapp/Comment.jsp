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
		function checkE() {
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
				type : 'post',
				// 요청 성공시
				success : function(data) {
				
				},
				// 요청 실패시 
				error : function() {
					alert("통신실패")
				}
			})
		}
		// 댓글 삭제
		function CommDel() {
			$.ajax({
				url: "CommDelService",
				type: "post",
				data: {
					     : 
					
				},
				success: function(data) {

				},
				error : function(){
					console.log('err');
				}
			});
		};
	</script>
</body>
</html>