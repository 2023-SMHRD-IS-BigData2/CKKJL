<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Kakao Login</title>
<!-- Kakao SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('eefca775da363abc546f57a131ec1863'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
</script>
<style type="text/css">
form {
	display: none
}
</style>

</head>

<body>

	<a align="center" href="sns페이지.html" class="image featured"> <img
		style="width: 468px; height: 81px;" align="center"
		src="./핵심images/FUTSAL062-removebg-preview.png" alt="logo" /></a>

	<h2 align="center">풋살062 login</h2>
	<a align="center" id="kakao-login-btn"
		href="javascript:loginWithKakao()"> <img
		src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
		width="222" alt="카카오 로그인 버튼" />
	</a>



	<script>
		function loginWithKakao() {

			Kakao.Auth.login({
				success : function(authObj) {
					alert(JSON.stringify(authObj))
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {

							let properties = response.properties;
							let id = response.id;
							let profile = properties.profile_image;
							let nick = properties.nickname;
							console.log(id);
							console.log(profile);
							console.log(name);
						
							document.token_value.id.value = id;
							document.token_value.profile.value = profile;	
							document.token_value.nick.value = nick;
							document.token_value.submit();

						},
						fail : function(error) {
							console.log(error);
						}
					});
				},
				fail : function(err) {
					alert(JSON.stringify(err))
				},
			})
		}
	</script>
	
	<form action="Login_Service" name="token_value">
		<input type="text" name="id" value="">
		<input type="text" name="profile" value="">
		<input type="text" name="nick" value="">
	</form>




</body>
</html>