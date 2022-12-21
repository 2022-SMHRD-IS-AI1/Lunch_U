<%@page import="javax.swing.text.Document"%>
<%@page import="model.MemberDTO"%>
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

		$.ajax({
			url : "SearchService", //어디로 요청할 것인가?
			type : "post", //요청방식(Get or Post)
			data : {
				"searchId" : $("#searchid").val()
			}, //보내는 데이터
			success : function(res) {
				// 요청이 성공했고, 응답이 정상적으로 돌아오면 실행되는 콜백 함수
				//서버로부터 받은 응답이 매개변수 res에 자동으로 담긴다.
				console.log("요청성공");
				console.log(res)
			},
			error : function(e) {
				alert("존재하지 않는 아이디입니다.");
				// 요청이 실패했을 때, 실행되는 콜백함수
			}

		})

	}
</script>

<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String id = info.getMemId();
%>
<body>
	<div id="con">
		<div id="login">
			<div id="login_form">
				<h3 class="login" style="letter-spacing: -1px;">그룹 생성</h3>
				<hr>
					<form action="CreateGroup" method="post">
						<p style="text-align: left; font-size: 15px; color: #666">그룹명</p>
						<input type="text" placeholder="그룹명 입력" class="size"
							required="required" name="groupname">
					<p style="text-align: left; font-size: 15px; color: #666">그룹멤버</p>
					<input type="text" placeholder="멤버 아이디 검색" class="size"
					id="searchid" style="width: 248px;">
					<button type="button"
						style="border: none; width: 48px; height: 30px; vertical-align: center"
						onclick="search()">추가</button>

				<div
					style="width: 300px; background-color: #f2f0f0; height: 200px; margin-top: 30px; border-radius: 5px;">
					<table>
						<tr>
							<td name="memberId"
								style="padding-left: 10px; width: 140px; text-align: left"><%=id%></td>
							<td style="width: 50%; text-align: right;"></td>
						</tr>
						<%--
						현재까지 된 부분 : ajax 이용 검색한 아이디 콘솔에 찍는 것 까지 함.
						질문할 부분 : 가져온 데이터를 원하는 위치(test)에 넣는 방법
							윗부분 : 현재 세션에 저장된 사용자는 무조건 그룹에 포함, 아래부분 : 검색한 아이디가 있을 경우 반복 
							test 부분에 조회 결과에 따라서 값 넣기
							--%>
						<tr>
							<td name="memberId"
								style="padding-left: 10px; width: 140px; text-align: left">test</td>
							<td style="width: 50%; text-align: right;">
								<button type="button"
									style="background-color: #df3278; border: none; color: #fff; border-radius: 5px;">삭제</button>
							</td>
						</tr>

					</table>
				</div>
				</form>
				<p></p>
				<p>
					<input type="submit" value="그룹생성" class="btn">
				</p>

				<hr>
				<p class="find">
					<span><a href="groups.jsp">그룹 페이지로 이동</a></span>
				</p>
			</div>
		</div>
	</div>
</body>
</html>