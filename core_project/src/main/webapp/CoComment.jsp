<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
// 대댓글 작성
		function CoCommWrite() {
			var text = $(id1).val();
			$.ajax({
				url: "CoCommWrite",
				type: "post",
				data: {
					fcNo: fcNo, feedNo:feedNo, text: text
					},
				dataType: 'json',
				success: function(result) {

				},
				error : function(){
					console.log('err');
				}
			});
		};
		
        // 대댓글 삭제
		function CoCommDel() {
			$.ajax({
				url: "CoCommeDel",
				type: "post",
				data: {
					coNo: coNo
					},
				dataType: 'json',
				success: function(result) {
					
				},
				error : function(){
					console.log('err');
				}
			});
		};
 </script>
 
</body>
</html>