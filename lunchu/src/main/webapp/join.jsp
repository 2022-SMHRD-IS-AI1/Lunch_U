<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<body>
	<div id="con">
		<div id="login">
			<div id="login_form">
				<!--로그인 폼-->
				<form name="joinform" action="JoinService" method="post"
					onsubmit="return Checkform()">
					<h3 class="login" style="letter-spacing: -1px;">회원가입</h3>
					<hr>
					<label>
						<p style="text-align: left; font-size: 15px; color: #666">아이디</p>
						<input type="text" placeholder="아이디를 입력" class="size" name="id"
						required="required">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">비밀번호
						</p> <input type="text" placeholder="비밀번호를 입력" class="size" name="pw"
						required="required">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">주소</p> <input
						type="text" placeholder="주소를 입력" class="size" name="address"
						required="required">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">좋아하는
							음식</p>
					</label>
					<p></p>

					<input type="checkbox" id="snackbar" name="category" value="분식">
					<label for="snackbar"
						style="text-align: left; font-size: 15px; color: #666">분식</label>

					<input type="checkbox" id="hanjeongsik" name="category" value="한식">
					<label for="hanjeongsik"
						style="text-align: left; font-size: 15px; color: #666">한식</label>

					<input type="checkbox" id="fusionfood" name="category" value="퓨전">
					<label for="fusionfood"
						style="text-align: left; font-size: 15px; color: #666">퓨전</label>

					<input type="checkbox" id="fastfood" name="category" value="패스트푸드">
					<label for="fastfood"
						style="text-align: left; font-size: 15px; color: #666">패스트푸드</label>

					<input type="checkbox" id="chineserestaurant" name="category"
						value="중식"> <label for="chineserestaurant"
						style="text-align: left; font-size: 15px; color: #666">중식</label>
					<br> <input type="checkbox" id="chickendish" name="category"
						value="닭요리"> <label for="chickendish"
						style="text-align: left; font-size: 15px; color: #666">닭요리</label>

					<input type="checkbox" id="japanesestyle" name="category"
						value="일식"> <label for="japanesestyle"
						style="text-align: left; font-size: 15px; color: #666">일식</label>
					<input type="checkbox" id="westernfood" name="category" value="양식">
					<label for="westernfood"
						style="text-align: left; font-size: 15px; color: #666">양식</label>

					<input type="checkbox" id="buffet" name="category" value="부페">
					<label for="buffet"
						style="text-align: left; font-size: 15px; color: #666">부페</label>
					<p>
						<input type="submit" value="가입" class="btn">
					</p>

					<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
					<script type="text/javascript">
						function Checkform() {
							var checked = $("input:checkbox[name='category']:checked").length;

							if (checked <= 2) {

								alert("선호 카테고리를 3개 이상 체크해주세요.");
								return false;
							}
						}
					</script>
					<hr>
					<p class="find">
						<span><a href="login.jsp">로그인 페이지로 이동</a></span>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>