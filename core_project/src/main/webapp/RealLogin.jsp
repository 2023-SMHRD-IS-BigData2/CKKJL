<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .kakao-logo {
            color: #3C1E1E; /* 카카오톡 로고 색상을 조절하려면 이 부분을 수정하세요. */
        }
        form{
        display:none;
        }
    </style>

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image" style="background: url('img/로그인\ 풋살사진.jpg'); background-size: cover; background-position: center; height: 70vh;">
                            </div>
                            
                            <div class="col-lg-6">
                                <div class="text-center"><br><br>
                                <div><a href="RealMain.jsp"><img src="img/FUTSAL062.png" alt="" width="200" height="40"></div></a>
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome!</h1>
                                    </div>
                                    
                                        <a href="javascript:loginWithKakao();" class="btn btn-google btn-user btn-block">
                                            <img src="img/카카오톡 로그인.png" alt="KakaoTalk Logo" class="kakao-logo-img" width="30" height="30">
                                            Login with kakaotalk
                                        </a>
                                        
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
</div>
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
							let pic = properties.profile_image;
							let nick = properties.nickname;
							
							console.log(id);
							console.log(pic);
							console.log(nick);
						
							document.token_value.id.value = id;
							document.token_value.pic.value = pic;	
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
	
	<form action="LoginService" name="token_value" method="post">
		<input type="text" name="id" value="">
		<input type="text" name="pic" value="">
		<input type="text" name="nick" value="">
	</form>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>