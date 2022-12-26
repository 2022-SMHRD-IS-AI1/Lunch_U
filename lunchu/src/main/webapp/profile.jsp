<%@page import="javax.swing.text.Document"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.MemberDTO"%>
<%@page import="java.lang.ProcessHandle.Info"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gourmet Traditional Restaurant | Portfolio</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/prettyPhoto.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script>
	$(document).ready(function() {
		$("a[data-gal^='prettyPhoto']").prettyPhoto({
			theme : 'facebook'
		});
	});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String[] sp = info.getMemPrefCategory().replace("[", "").replace("]", "").replace(" ", "").split(",");
	String[] cate = { "분식", "한식", "퓨전", "패스트푸드", "중식", "닭요리", "일식", "양식", "부페" };
	%>
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
								<li><a href="LogoutService">로그아웃</a></li>
								<li class="with_ul"><a href="#">마이페이지</a>
									<ul>
										<li><a href="profile.jsp"> 내 정보</a></li>
										<li><a href="reservation.jsp"> 내 예약</a></li>
										<li><a href="reviews.jsp"> 내 리뷰 </a></li>
										<li><a href="groups.jsp"> 내 그룹</a></li>
									</ul></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
		<div class="content">
			<div class="container_12">
				<div class="grid_12">
					<h2>내 정보</h2>
				</div>
				<div class="portfolio">
					<form action="UpdateMember" method="post">
						<table>
							<tr>
								<td>아이디</td>
								<td><%=info.getMemId()%></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="pw"
									value=<%=info.getMemPw()%>></td>
							</tr>
							<tr>
								<td>비밀번호 확인</td>
								<td><input type="password" name="pwCheck"
									value=<%=info.getMemPw()%>></td>
							</tr>
							<tr>
								<td>직장 주소</td>
								<td><input name="address" value="<%=info.getMemAddr()%>"></td>
							</tr>
							<tr>
								<td>선호 카테고리</td>


								<td>
									<%
									for (int j=0; j < cate.length; j++){
									%>
									<input type="checkbox" name="category" value=<%=cate[j] %>
									<%for (int i=0; i<sp.length; i++) {
										if(sp[i].equals(cate[j])){
										%> checked <%
										}
									}
										%>
									>
									<label style="text-align: left; font-size: 15px; color: #666"><%=cate[j]%>
									</label>

									<%}%>
								</td>
							</tr>
							<tr>
								<td>최근 방문 식당</td>
								<td>
									<%
									String visitRest = "";
									if (info.getMemVisitRestaurant() != null) {
										visitRest = info.getMemVisitRestaurant();
									} else {
										visitRest = "-";
									}
									%>
									<%=visitRest%>
								</td>
							</tr>
							<tr>
								<td>가입날짜</td>
								<td><%=info.getMemJoindate()%></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="수정"
									style="text-align: center"></td>
							</tr>
						</table>
					</form>
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
								<li class="current"><a href="portfolio.html">Portfolio</a></li>
								<li><a href="news.html">News</a></li>
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