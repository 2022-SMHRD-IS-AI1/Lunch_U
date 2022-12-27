<%@page import="model.MenuListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MenuListDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Gourmet Traditional Restaurant</title>
<meta charset="utf-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
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
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
MenuListDAO dao = new MenuListDAO();
String han = "한식";
String il = "일식";
String yang = "양식";
String buffet = "부페";
String bunsik = "분식";
String fusion = "퓨전";
String fastfood = "패스트푸드";
String joong = "중식";
String chicken = "닭요리";

ArrayList<MenuListDTO> hanlist = dao.menuList(han);
ArrayList<MenuListDTO> illist = dao.menuList(il);
ArrayList<MenuListDTO> yanglist = dao.menuList(yang);
ArrayList<MenuListDTO> buffetlist = dao.menuList(buffet);
ArrayList<MenuListDTO> bunsiklist = dao.menuList(bunsik);
ArrayList<MenuListDTO> fusionlist = dao.menuList(fusion);
ArrayList<MenuListDTO> fastfoodlist = dao.menuList(fastfood);
ArrayList<MenuListDTO> joonglist = dao.menuList(joong);
ArrayList<MenuListDTO> chickenlist = dao.menuList(chicken);
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
										<li><a href="reservation_list.jsp"> 내 예약</a></li>
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
		<div class="slider-relative">
			<div class="slider-block">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slide.jpg" alt=""></li>
						<li><img src="images/slide1.jpg" alt=""></li>
						<li class="mb0"><img src="images/slide2.jpg" alt=""></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="content page1">
			<%
			if (hanlist.size() != 0) {
			%>
			<div class="container_12">
				<div class="grid_5">
					<div class="grid_12">
						<div class="car_wrap">
							<h2><%=hanlist.get(0).getCateName()%></h2>
							<a href="Lunch_U_Map.jsp?cate=<%=hanlist.get(0).getCateName()%>"><img
								src="./images/map_marker.png"></a>
							<%
							if (hanlist.size() > 4) {
							%>
							<a href="#" class="prev"></a><a href="#" class="next"></a>
							<%
							}
							%>
							<ul class="carousel1">

								<%
								for (int i = 0; i < hanlist.size(); i++) {
								%>
								<a
									href="restaurant_detail.jsp?rest_seq=<%=hanlist.get(i).getRestSeq()%>">
									<li>
										<div>
											<img src="images/page1_img1.jpg" alt="">
											<div class="col1 upp">
												<strong> <%=hanlist.get(i).getRestName()%></strong>
								</a>
						</div>

					</div>
					</li> </a>


					<%
					}
					%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>
	<%
	}
	if (yanglist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=yanglist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=yanglist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (yanglist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < yanglist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=yanglist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=yanglist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>
	<%
	}
	if (illist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=illist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=illist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (illist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < illist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=illist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=illist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>

	<%
	}
	if (buffetlist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=buffetlist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=buffetlist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (buffetlist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < buffetlist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=buffetlist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=buffetlist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>


	</div>
	<%
	}
	if (bunsiklist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=bunsiklist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=bunsiklist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (bunsiklist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < bunsiklist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=bunsiklist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=bunsiklist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>
	</div>

	<%
	}
	if (fusionlist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=fusionlist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=fusionlist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (fusionlist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < fusionlist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=fusionlist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=fusionlist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>
	<%
	}
	if (fastfoodlist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=fastfoodlist.get(0).getCateName()%></h2>
					<a
						href="Lunch_U_Map.jsp?cate=<%=fastfoodlist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (fastfoodlist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < fastfoodlist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=fastfoodlist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=fastfoodlist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>
	<%
	}
	if (joonglist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=joonglist.get(0).getCateName()%></h2>
					<a href="Lunch_U_Map.jsp?cate=<%=joonglist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (joonglist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < joonglist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=joonglist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=joonglist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>


						<%
						}
						%>

					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>

	</div>
	<%
	}
	if (chickenlist.size() != 0) {
	%>
	<div class="container_12">
		<div class="grid_5">
			<div class="grid_12">
				<div class="car_wrap">
					<h2><%=chickenlist.get(0).getCateName()%></h2>
					<a
						href="Lunch_U_Map.jsp?cate=<%=chickenlist.get(0).getCateName()%>"><img
						src="./images/map_marker.png"></a>
					<%
					if (chickenlist.size() > 4) {
					%>
					<a href="#" class="prev"></a><a href="#" class="next"></a>
					<%
					}
					%>
					<ul class="carousel1">

						<%
						for (int i = 0; i < chickenlist.size(); i++) {
						%>
						<a
							href="restaurant_detail.jsp?rest_seq=<%=chickenlist.get(i).getRestSeq()%>">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="restaurant_detail.jsp"><strong> <%=chickenlist.get(i).getRestName()%></strong></a>
									</div>

								</div>
						</li>
						</a>
						<%
						}
						%>


					</ul>
				</div>
			</div>
		</div>
		<div class="grid_12">
			<div class="hor_separator"></div>
		</div>
	</div>
	<%
	}
	%>
	</div>
	</div>
</body>

</html>