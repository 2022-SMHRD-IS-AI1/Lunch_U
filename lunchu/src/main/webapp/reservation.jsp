<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Gourmet Traditional Restaurant</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : false,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 1,
					max : 4
				},
				height : 'auto',
				width : 240,
			},
			responsive : false,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : false,
				onTouch : false
			}
		});
	});
</script>
<style>
.button::after {
	left: 0;
}

.button, .button::before, .button::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

.button::before, .button::after {
	position: absolute;
	z-index: -1;
	display: block;
	content: '';
	top: 0;
	width: 50%;
	height: 100%;
	background-color: #333;
}
</style>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>

<body>
	<div class="main">
		<header>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.html"><img src="images/logo_lunchu1.png" alt=""></a>
					</h1>
					<div class="menu_block">
						<nav>
							<ul class="sf-menu">
								<li><a href="LogoutService">�α׾ƿ�</a></li>
								<li class="with_ul"><a href="#">����������</a>
									<ul>
										<li><a href="profile.jsp"> �� ����</a></li>
										<li><a href="reservation.jsp"> �� ����</a></li>
										<li><a href="reviews.jsp"> �� ���� </a></li>
										<li><a href="groups.jsp"> �� �׷�</a></li>
									</ul></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>


		<div class="content page1">
			<div class="container_12">
				<div class="grid_12">
					<div class="review">
						<h2>���� ����</h2>
						<table class="review_list">
							<form action="">
								<thead>
									<tr>
										<td class="review_col"></td>
										<td class="review_col">��ȣ</td>
										<td class="review_col">��������</td>
										<td class="review_col">�湮��</td>
									</tr>
								</thead>
								<div class="scroll_box">
									<tbody>
										<tr class="review_detail">
											<td><input type="checkbox"></td>
											<td class="review_detail">1</td>
											<td><a href="#">���޲ٹ�</a></td>
											<td>2022-12-18</td>
										</tr>

										<tr class="review_detail">
											<td><input type="checkbox"></td>
											<td class="review_detail">2</td>
											<td><a href="#">��ٷθ�</a></td>
											<td>2022-12-18</td>
										</tr>

										<tr class="review_detail">
											<td><input type="checkbox"></td>
											<td class="review_detail">3</td>
											<td><a href="#">��õ��</a></td>
											<td>2022-12-18</td>
										</tr>

										<tr class="review_detail">
											<td><input type="checkbox"></td>
											<td class="review_detail">4</td>
											<td><a href="#">����ȭ��</a></td>
											<td>2022-12-18</td>
										</tr>

										<tr class="review_detail">
											<td><input type="checkbox"></td>
											<td class="review_detail">5</td>
											<td><a href="#">������</a></td>
											<td>2022-12-18</td>
										</tr>

									</tbody>
									<tfoot>
										<tr>
											<td colspan="4" align="center"><button
													class="review_delete">
													<a href="#">������</a></td>
										</tr>
									</tfoot>
								</div>
								<button class="review_delete">����</button>

							</form>
						</table>

						</button>
					</div>
				</div>


			</div>
		</div>




		<footer>
			<div class="container_12">
				<div class="grid_12">����Ʈ���簳�߿� Team Lunch_U</div>
				<div class="clear"></div>
			</div>
		</footer>
</body>

</html>