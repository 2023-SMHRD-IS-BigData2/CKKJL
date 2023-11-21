<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	width: 150px; /* 프로필 사진 크기 조절 */
	border-radius: 50%; /* 프로필 사진을 원형으로 만들기 위해 추가 */
}

main {
	padding: 20px;
}

section {
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
		<a href="sns페이지.html" class="image featured"><img
			src="핵심images/FUTSAL062-removebg-preview.PNG" alt="" /></a>
		<h1>용병 구인</h1>
	</header>

	<main>

		<section>
			<h2>용병 선발</h2>
			<form>
				<label for="position">날짜</label> <input type="date" id="date"
					name="date"> 
				<label for="playerName">팀 이름</label>
				<input type="text" id="playerName" name="playerName" required>

				<label for="position">시작 시간</label> 
				<select id="starttime"
					name="starttime" required>
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
				</select> <label for="position"> 끝나는 시간</label> <select id = "finishtime" name="finishtime" >
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
					
				</select> <label for="position"> 인원수 </label> <select id= "peoplenum" name="peoplenum">
					<option value="5vs5">5:5</option>
					<option value="6vs6">6:6</option>
					<option value="7vs7">7:7</option>
				</select> 
				<label for="position">수준</label> 
				<select id= "level" name="level">
					<option value="low">하</option>
					<option value="lowhigh">하상</option>
					<option value="midlow">중하</option>
					<option value="midhigh">중상</option>
					<option value="high">상</option>
				</select> 
				<label for="position"> 남기실 말</label> 
				<input type="text" id="comment" name="comment" required>

				<button type="button" onclick="recruitMercenary()"> 게시글 등록하기</button>
			</form>
		</section>

		<section>
			<h2>용병 목록</h2>
			<ul id="mercenaryList"></ul>
		</section>
	</main>



	<script>
		function recruitMercenary() {
			var playerName = document.getElementById('playerName').value;
			var starttime = document.getElementById('starttime').value;
			var finishtime = document.getElementById('finishtime').value;
			var peoplenum = document.getElementById('peoplenum').value;
			var level = document.getElementById('level').value;
			var comment = document.getElementById('comment').value;
			var date = document.getElementById('date').value;
			

			// Create a list item to display the recruited mercenary
			var listItem = document.createElement('li');
			listItem. innerHTML = date + '(' + starttime +' ~ ' + finishtime + ")"+ peoplenum + '<' +level+'>' + "&nbsp;" + playerName+ "<br>" + comment;
			
			// Append the list item to the mercenary list
			document.getElementById('mercenaryList').appendChild(listItem)

			// Clear the form fields after recruiting
			document.getElementById('playerName').value = '';
			document.getElementById('position').value = '';
			
		}
	</script>

</body>
</html>
