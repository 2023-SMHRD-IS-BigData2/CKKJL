<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Futsal Mercenary Board</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	background-color: ivory;
	color: black;
	text-align: center;
	padding: 1em;
}

header img {
	align-items: right;
	width: 150px;
	/* 프로필 사진 크기 조절 */
	border-radius: 50%;
	/* 프로필 사진을 원형으로 만들기 위해 추가 */
}

main {
	padding: 20px;
	display: flex;
	justify-content: space-between; /* 섹션을 왼쪽과 오른쪽에 정렬 */
}

section {
	flex: 1; /* 가능한 공간을 동일하게 차지하도록 설정 */
	margin-bottom: 20px;
	padding: 20px;
	border: 1px solid #ddd;
	background-color: #fff;
}

form {
	display: flex;
	flex-direction: column;
	max-width: 400px;
	margin: auto;
}

label {
	margin-bottom: 8px;
}

button {
	padding: 8px 16px;
	background-color: #333;
	color: #fff;
	border: none;
	cursor: pointer;
}

ul {
	list-style-type: none;
	padding: 0;
}

li {
	border: 1px solid #ddd;
	margin-bottom: 10px;
	padding: 10px;
	background-color: #fff;
}
</style>
</head>

<body>

	<header>
		<a href="Main.jsp"> <img
			src="핵심images/FUTSAL062-removebg-preview.PNG" alt="" /></a>
		<h1>매치 용병 등록하기</h1>
	</header>
	<main>
		<section>
			<h2 align="center">매치등록</h2>
			<form>
				<script>
					var date = window.location.hash;
					document.write('날짜 : ', date.slice(1, 11));
				</script>
				<label for="playerName">팀 이름</label> <input type="text"
					id="matching_playerName" name="playerName" required> <label
					for="position">시작 시간</label> <select id="matching_starttime"
					name="starttime" required>
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
				</select> <label for="position"> 끝나는 시간</label> <select
					id="matching_finishtime" name="finishtime">
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

				</select> <label for="position"> 인원수 </label> <select id="matching_peoplenum"
					name="peoplenum">
					<option value="5vs5">5:5</option>
					<option value="6vs6">6:6</option>
					<option value="7vs7">7:7</option>
					<option value="그 외">그 외</option>
				</select> <label for="position">수준</label> <select id="matching_level"
					name="matching_level">
					<option value="하">하</option>
					<option value="하상">하상</option>
					<option value="중하">중하</option>
					<option value="중상">중상</option>
					<option value="상">상</option>
				</select> <label for="position"> 남기실 말</label> <input type="text"
					id="matching_comment" name="comment" required>

				<button type="button" onclick="matchingRegistration()">매치
					게시글 등록하기</button>
			</form>
		</section>
		<section>
			<h2 align="center">용병 등록</h2>
			<form>
				<script>
					var date = window.location.hash;
					document.write('날짜 : ', date.slice(1, 11));
				</script>
				<label for="playerName">팀 이름</label> <input type="text"
					id="M_playerName" name="playerName" required> <label
					for="position">가능한 시작 시간 </label> <select id="M_starttime"
					name="starttime" required>
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
				</select> <label for="position"> 가능한 끝 시간</label> <select id="M_finishtime"
					name="finishtime">
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

				</select> <label for="position"> 원하는 인원수 </label> <select id="M_peoplenum"
					name="peoplenum">
					<option value="1명">1명</option>
					<option value="2명">2명</option>
					<option value="3명">3명</option>
					<option value="4명">4명</option>
					<option value="5명">5명</option>
					<option value="6명">6명</option>
					<option value="그 외">그 외</option>
				</select> <label for="position">수준</label> <select id="M_level" name="level">
					<option value="하">하</option>
					<option value="하상">하상</option>
					<option value="중하">중하</option>
					<option value="중상">중상</option>
					<option value="상">상</option>
				</select> <label for="position"> 원하는 인원수 </label> <select id="M_peoplenum"
					name="peoplenum">
					<option value="1명">1명</option>
					<option value="2명">2명</option>
					<option value="3명">3명</option>
					<option value="4명">4명</option>
					<option value="5명">5명</option>
					<option value="6명">6명</option>
					<option value="그 외">그 외</option>
				</select> <label for="position"> 남기실 말</label> <input type="text"
					id="M_comment" name="comment" required>

				<button type="button" onclick="recruitMercenary()">용병 게시글
					등록하기</button>
			</form>
		</section>

		<section>
			<h2>등록된 게시판 목록</h2>
			<ul id="MatchList">	</ul>
		</section>
		
	</main>
	
	<script>
		// "&nbsp;" 1칸 뛰어쓰기 "&ensp;" 2칸 "&emsp;" 3칸
		function matchingRegistration() {
			var playerName = document.getElementById('matching_playerName').value;
			var starttime = document.getElementById('matching_starttime').value;
			var finishtime = document.getElementById('matching_finishtime').value;
			var peoplenum = document.getElementById('matching_peoplenum').value;
			var level = document.getElementById('matching_level').value;
			var comment = document.getElementById('matching_comment').value;
			var date = document.getElementById('matching_date').value;

			// Create a list item to display the recruited mercenary
			var listItem = document.createElement('li');

			listItem.innerHTML = "매칭" + "&ensp;" + date + '(' + starttime
					+ ' ~ ' + finishtime + ") " + "&ensp;" + "인원수 : "
					+ peoplenum + "&ensp;" + '수준 : ' + level + "&ensp;"
					+ "이름 : " + playerName + "<br>" + comment;

			// Append the list item to the mercenary list
			document.getElementById('MatchList').appendChild(listItem);

			// Clear the form fields after recruiting
			document.getElementById('matching_playerName').value = '';
			document.getElementById('matching_starttime').value = '';
			document.getElementById('matching_finishtime').value = '';
			document.getElementById('matching_peoplenum').value = '';
			document.getElementById('matching_level').value = '';
			document.getElementById('matching_comment').value = '';
			document.getElementById('matching_date').value = '';
		}

		function recruitMercenary() {
			var playerName = document.getElementById('M_playerName').value;
			var starttime = document.getElementById('M_starttime').value;
			var finishtime = document.getElementById('M_finishtime').value;
			var peoplenum = document.getElementById('M_peoplenum').value;
			var level = document.getElementById('M_level').value;
			var comment = document.getElementById('M_comment').value;
			var date = document.getElementById('M_date').value;

			// Create a list item to display the recruited mercenary
			var listItem = document.createElement('li');

			listItem.innerHTML = "용병" + "&ensp;" + date + '(' + starttime
					+ ' ~ ' + finishtime + ")" + "&ensp;" + "원하는 인원 수 : "
					+ peoplenum + "&ensp;" + '수준 : ' + level + "&ensp;"
					+ "이름 : " + playerName + "<br>" + comment;

			// Append the list item to the mercenary list
			document.getElementById('MatchList').appendChild(listItem);

			// Clear the form fields after recruiting
			document.getElementById('M_playerName').value = '';
			document.getElementById('M_starttime').value = '';
			document.getElementById('M_finishtime').value = '';
			document.getElementById('M_peoplenum').value = '';
			document.getElementById('M_level').value = '';
			document.getElementById('M_comment').value = '';
			document.getElementById('M_date').value = '';
		}
	</script>
</body>

</html>