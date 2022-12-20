<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<!--�α��� ��-->
				<form action="JoinService" method="post">
					<h3 class="login" style="letter-spacing: -1px;">ȸ������</h3>
					<hr>
					<label>
						<p style="text-align: left; font-size: 15px; color: #666">���̵�</p>
						<input type="text" placeholder="���̵� �Է�" class="size" name="id">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">��й�ȣ
						</p> <input type="text" placeholder="��й�ȣ�� �Է�" class="size" name="pw">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">�ּ�</p> <input
						type="text" placeholder="�ּҸ� �Է�" class="size" name="address">
					</label> <label>
						<p style="text-align: left; font-size: 15px; color: #666">�����ϴ�
							����</p>
					</label>
					<p></p>

					<input type="checkbox" id="snackbar" name="category" value="�н�">
					<label for="snackbar" style="text-align: left; font-size: 15px; color: #666">�н�</label>
					
					<input type="checkbox" id="hanjeongsik" name="category" value="�ѽ�">
					<label for="hanjeongsik" style="text-align: left; font-size: 15px; color: #666">�ѽ�</label>
					
					<input type="checkbox" id="fusionfood" name="category" value="ǻ��">
					<label for="fusionfood" style="text-align: left; font-size: 15px; color: #666">ǻ��</label>
					
					<input type="checkbox" id="fastfood" name="category" value="�н�ƮǪ��">
					<label for="fastfood" style="text-align: left; font-size: 15px; color: #666">�н�ƮǪ��</label>
					
					<input type="checkbox" id="chineserestaurant" name="category" value="�߽�">
					<label for="chineserestaurant" style="text-align: left; font-size: 15px; color: #666">�߽�</label>
					<br>
					<input type="checkbox" id="chickendish" name="category" value="�߿丮">
					<label for="chickendish" style="text-align: left; font-size: 15px; color: #666">�߿丮</label>
					
					<input type="checkbox" id="japanesestyle" name="category" value="�Ͻ�">
					<label for="japanesestyle"
						style="text-align: left; font-size: 15px; color: #666">�Ͻ�</label>
					<input type="checkbox" id="westernfood" name="category" value="���">
					<label for="westernfood" style="text-align: left; font-size: 15px; color: #666">���</label>
					
					<input type="checkbox" id="buffet" name="category" value="����">
					<label for="buffet" style="text-align: left; font-size: 15px; color: #666">����</label>
					<p>
						<input type="submit" value="����" class="btn">
					</p>

					<hr>

					<p class="find">
						<span><a href="login.jsp">�α��� �������� �̵�</a></span>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>