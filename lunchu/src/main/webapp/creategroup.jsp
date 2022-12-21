<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<style>
/* @import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css'); */
@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 100;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf)
		format('opentype');
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 300;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf)
		format('opentype');
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 400;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf)
		format('opentype');
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf)
		format('opentype');
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf)
		format('opentype');
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 900;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf)
		format('opentype');
}

body {
	margin: 0 auto;
}
/* body, table, div, p ,span{font-family:'Nanum Gothic';} */
body, table, div, p, span {
	font-family: 'Noto Sans KR';
}

a {
	text-decoration: none;
	color: #333;
}

#con {
	width: 100%;
	height: 100vh;
	background-color: #f5f1ee;
	background-image: url("img/bg.jpg");
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding: 0;
}

#login {
	width: 600px;
	height: 600px;
	margin: 0 auto;
	/* position: relative; */
	/* background:#ddd; */
}

#login_form {
	/* text-align:center; */
	border-radius: 10px;
	padding: 50px;
	background: #fff;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.login {
	font-size: 25px;
	font-weight: 900;
	color: #333;
}

.size {
	width: 300px;
	height: 30px;
	padding-left: 10px;
	background-color: #f4f4f4;
	/* margin-left:10px; */
	border: none;
	border-radius: 5px;
}

.btn {
	width: 310px;
	height: 40px;
	font-size: 15px;
	background-color: #df3278;
	color: #fff;
	border: none;
	cursor: pointer;
	border-radius: 5px;
}

.btn:hover {
	background: #ca296a;
}

hr {
	margin-top: 20px;
	background: #eee;
}

.find {
	color: #ddd;
	font-size: 12px;
}

.find span {
	padding-left: 10px;
}

.find span::before {
	content: '|';
	color: #333;
	padding-right: 10px;
}

.find span:nth-child(1):before {
	content: none;
}

.find span:nth-child(1) {
	padding-left: 0px;
}

.find a:hover {
	color: #707070;
}
</style>

<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script type="text/javascript">
	function search() {
		console.log("ajax")
	}

	$.ajax({
		url : 'SearchService', //어디로 요청할 것인가?
		type : 'Post', //요청방식(Get or Post)
		data : {search_id}, //보내는 데이터
		success : function(res) {
			return search_id
			// 요청이 성공했고, 응답이 정상적으로 돌아오면 실행되는 콜백 함수
			//서버로부터 받은 응답이 매개변수 res에 자동으로 담긴다.
		},
		error : function(e) {
			alert("존재하지 않는 아이디입니다.");
			// 요청이 실패했을 때, 실행되는 콜백함수
		}

	})
</script>
<body>
	<div id="con">
		<div id="login">
			<div id="login_form">
				<!--로그인 폼-->
				<form action="LoginService" method="post">
					<h3 class="login" style="letter-spacing: -1px;">그룹 생성</h3>
					<hr>
					<label>
						<p style="text-align: left; font-size: 15px; color: #666">그룹명</p>
						<input type="text" placeholder="그룹명을 입력" class="size"
						name="groupname">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">그룹멤버</p>
						<input type="text" placeholder="멤버 아이디 검색" class="size"
						name="searchid" style="width: 248px;">
						<button style="width: 50px; height: 30px; vertical-align: center"
							onclick="search()">추가</button>
					</label>


					<div
						style="width: 300px; background-color: #f2f0f0; height: 200px; margin-top: 30px; border-radius: 5px;">

						<ul>
							<li style="list-style: none;">b</li>

						</ul>
					</div>

					<p></p>
					<p>
						<input type="submit" value="그룹생성" class="btn">
					</p>

					<hr>
					<p class="find">
						<span><a href="groups.jsp">그룹 페이지로 이동</a></span>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>