<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<input type="button" value="닉네임중복체크" onclick="checkE()">
	<script type="text/javascript">
		function checkE() {
			var inputNick = $('#inputNick').val();
			console.log(inputE)

			$.ajax({
				// 어디로 요청할 것인지
				url : 'NickCheckService',
				// 요청 데이터(json)
				data : {
					'inputNick' : inputNick
				},
				// 요청방식
				type : 'get',
				// 요청 성공시
				success : function(data) {

					if (data == 'true') {
						$('#NickCheck').text('사용할 수 없는 닉네임')
					} else {
						$('#NickCheck').text('사용할 수 있는 닉네임')
					}
				},
				// 요청 실패시 
				error : function() {
					alert("통신실패")
				}
			})
		}
	</script>
</body>
</html>