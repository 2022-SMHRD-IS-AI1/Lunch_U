<%@page import="model.RestaurantDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@page import="model.ReservationDAO"%>
<%@page import="model.ReservationDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html lang="en">

<head>
<title>Gourmet Traditional Restaurant</title>
<meta charset="utf-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>

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
</script>
<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
%>
<body>
	<div class="main">
		<header>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="home.jsp"><img src="images/logo_lunchu1.png" alt=""></a>
					</h1>
					<div class="menu_block">
						<nav>
							<ul class="sf-menu">
								<%
								if (info != null) {
								%>
								<li><a href="LogoutService">로그아웃</a></li>
								<li class="with_ul"><a href="#">마이페이지</a>
									<ul>
										<li><a href="profile.jsp"> 내 정보</a></li>
										<li><a href="reservation.jsp"> 내 예약</a></li>
										<li><a href="review_list.jsp"> 내 리뷰 </a></li>
										<li><a href="groups.jsp"> 내 그룹</a></li>
									</ul></li>
								<%
								} else {
								%>
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
								<%
								}
								%>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
		<%
		ReservationDAO Rdao = new ReservationDAO();
		String id = info.getMemId();
		ArrayList<ReservationDTO> re_dto = Rdao.select(id);
		%>
		<div class="content page1">
			<div class="container_12">
				<div class="grid_12">
					<div class="reservation">
						<h2>Evaluation</h2>
						<table class="reservation_list">
							<form action="" method="post">
								<thead>
									<tr>
										<td class="reservation_col"></td>
										<td class="reservation_col">번호</td>
										<td class="reservation_col">음식점명</td>
										
									</tr>
								</thead>

								<tbody>
									<%
									ReservationDAO reservdao = new ReservationDAO();
									RestaurantDAO Restdao = new RestaurantDAO();
									
									for (int i = 0; i < re_dto.size(); i++) {
									%>
									<tr class="reservation_detail">
										<td><input type="checkbox"></td>
										<td class="reservation_detail"><%=i + 1%></td>
										<td><a href=""><%= Restdao.getName(re_dto.get(i).getRestSeq()) %></a></td>
										<td> <%= re_dto.get(i).getReservDate() %>
										</td>
									</tr>
									<%
									}
									%>
								</tbody>
								</div>
							</form>
						</table>
					</div>

					<!--  <div class="bottom_block">
                    <div class="grid_6">
                        <h3>Follow Us</h3>
                        <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
                        <nav>
                            <ul>
                                <li class="current"><a href="index.html">Home</a></li>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="menu.html">Menu</a></li>
                                <li><a href="portfolio.html">Portfolio</a></li>
                                <li><a href="news.html">News</a></li>
                                <li><a href="contacts.html">Contacts</a></li>
                            </ul>
                        </nav>
                    </div> -->
					<div class="grid_6">
						<h3>Email Updates</h3>
						<p class="col1">
							Join our digital mailing list and get news<br> deals and be
							first to know about events
						</p>
						<form id="newsletter" action="#">
							<div class="success">Your subscribe request has been sent!</div>
							<label class="email"> <input type="email"
								value="Enter e-mail address"> <a href="#" class="btn"
								data-type="submit">subscribe</a> <span class="error">*This
									is not a valid email address.</span>
							</label>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container_12">
			<div class="grid_12">
				Gourmet Traditional Restaurant &copy; 2045 | <a href="#">Privacy
					Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a>
			</div>
		</div>
	</footer>
</body>

</html>