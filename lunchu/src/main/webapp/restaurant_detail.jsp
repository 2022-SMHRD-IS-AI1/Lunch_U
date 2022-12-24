<%@page import="model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ReviewDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Gourmet Traditional Restaurant | News</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->

<style type="text/css">
td {
	height: 23px;
}

table {
	width: 100%;
}

button {
	float: right;
}

#detail tr {
	border-bottom: 1px solid #dcdcdc;
	height: auto;
}

#detail td {
	vertical-align: middle;
	font-size: 15px;
}

hr {
	margin-top: 15px;
}

.restaurant_info {
	margin-top: 10px;
}

#reviewlist td {
	text-align: center;
	height: auto;
}

.seq, .rating {
	width: 35px;
}

.writer {
	width: 40px;
}

thead {
	font-style: bold;
}

.date {
	width: 100px;
}

tbody .date, tbody .writer, tbody .review {
	border-right: solid 1px #dcdcdc;
}
</style>
</head>
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
								MemberDTO info = (MemberDTO) session.getAttribute("info");
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
					</div>
				</div>
			</div>
		</header>
		<div class="content">
			<div class="container_12">
				<div class="grid_3 restaurant_detail">
					<div class="restaurant_info">
						<table>
							<tr>
								<td>
									<h2>
										<strong>미미원</strong>
									</h2>
								</td>
							</tr>
							<tr>
								<td style="height: 20px">동명동 | 한식</td>
								<td style="text-align: right;">8명의 평가 4.8</td>
							</tr>

						</table>
						<div style="left: 0px">
							<button id="add2group">그룹에 추가</button>
							<button onclick="location.href='popup_review.jsp'">리뷰 및
								평점</button>
							<br>
						</div>
						<hr>
					</div>

					<div id="detail">
						<table>
							<tr>
								<td>광주 서구 상무누리로 20 1층 비바로마</td>
							</tr>
							<tr>
								<td>김대중컨벤션 제2주차장 무료 -매장 앞 대로변 11:00~14:00 단속 유예 -매장 뒤 매장 건물
									주차장 (6~7대 공간)</td>
							</tr>
							<tr>
								<td>매일 11:00 - 23:00</td>
							</tr>
							<tr>
								<td>0507-1439-9806</td>
							</tr>
							<tr>
								<td>단체석, 포장, 예약, 무선 인터넷</td>
							</tr>
							<tr style="border-bottom: none">
								<td>https://www.instagram.com/vivaroma_insta/</td>
							</tr>
						</table>
					</div>
					<hr>
					<div id="reviewlist" style="overflow: auto; height: 330px;">
						<table>
							<thead>
								<tr>
									<td class="date">작성일자</td>
									<td class="writer">작성자</td>
									<td class="review">내용</td>
									<td class="rating">별점</td>
								</tr>
							</thead>
							<tbody>
								<%
								ReviewDAO Rdao = new ReviewDAO();

								ArrayList<ReviewDTO> review = Rdao.restReview(1);

								for (int i = 0; i < review.size(); i++) {
								%>
								<tr>
									<td class="date"><%=review.get(i).getRv_dt()%></td>
									<td class="writer"><%=review.get(i).getMem_id()%></td>
									<td class="review"><%=review.get(i).getRv_content()%></td>
									<td class="rating"><%=review.get(i).getRv_rating()%></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
				<div class="grid_7 map">
					<figure class="img_inner">
						<iframe style="height: 700px; width: 540px;"
							src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed">
						</iframe>
					</figure>
				</div>
				<div class="clear"></div>
				<div class="bottom_block">
					<div class="grid_6">
						<h3>Follow Us</h3>
						<div class="socials">
							<a href="#"></a> <a href="#"></a> <a href="#"></a>
						</div>
						<nav>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="about-us.html">About Us</a></li>
								<li><a href="menu.html">Menu</a></li>
								<li><a href="portfolio.html">Portfolio</a></li>
								<li class="current"><a href="news.html">News</a></li>
								<li><a href="contacts.html">Contacts</a></li>
							</ul>
						</nav>
					</div>
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
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container_12">
			<div class="grid_12">
				Gourmet Traditional Restaurant &copy; 2045 | <a href="#">Privacy
					Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a>
			</div>
			<div class="clear"></div>
		</div>
	</footer>
</body>
</html>