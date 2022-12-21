<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.MemberDTO"%>
<%@page import="java.lang.ProcessHandle.Info"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	%>
	<div class="main">
		<header>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt=""></a>
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
		<div class="content">
			<div class="container_12">
				<div class="grid_12">
					<h2>�� ���� �����ϱ�</h2>
				</div>
				<div class="portfolio">
					<form action="UpdateMemberService.java" method="post">
						<table>
							<tr>
								<td>���̵�</td>
								<td><%=info.getMemId()%></td>
							</tr>
							<tr>
								<td>��й�ȣ</td>
								<td><input type="password" name="pw" value=<%= info.getMemPw() %>></td>
							</tr>
							<tr>
								<td>��й�ȣ Ȯ��</td>
								<td><input type="password" name="pwCheck" value=<%= info.getMemPw() %>></td>
							</tr>
							<tr>
								<td>�ּ�</td>
								<td><input name="address" value="<%=info.getMemAddr()%>"></td>
							</tr>
							<tr>
								<td>��ȣ ī�װ�</td>
								<td><input type="checkbox" id="snackbar" name="category"
									value="�н�"> <label for="snackbar"
									style="text-align: left; font-size: 15px; color: #666">�н�</label>

									<input type="checkbox" id="hanjeongsik" name="category"
									value="�ѽ�"> <label for="hanjeongsik"
									style="text-align: left; font-size: 15px; color: #666">�ѽ�</label>

									<input type="checkbox" id="fusionfood" name="category"
									value="ǻ��"> <label for="fusionfood"
									style="text-align: left; font-size: 15px; color: #666">ǻ��</label>

									<input type="checkbox" id="fastfood" name="category"
									value="�н�ƮǪ��"> <label for="fastfood"
									style="text-align: left; font-size: 15px; color: #666">�н�ƮǪ��</label>

									<input type="checkbox" id="chineserestaurant" name="category"
									value="�߽�"> <label for="chineserestaurant"
									style="text-align: left; font-size: 15px; color: #666">�߽�</label>
									<br> <input type="checkbox" id="chickendish"
									name="category" value="�߿丮"> <label for="chickendish"
									style="text-align: left; font-size: 15px; color: #666">�߿丮</label>

									<input type="checkbox" id="japanesestyle" name="category"
									value="�Ͻ�"> <label for="japanesestyle"
									style="text-align: left; font-size: 15px; color: #666">�Ͻ�</label>
									<input type="checkbox" id="westernfood" name="category"
									value="���"> <label for="westernfood"
									style="text-align: left; font-size: 15px; color: #666">���</label>

									<input type="checkbox" id="buffet" name="category" value="����">
									<label for="buffet"
									style="text-align: left; font-size: 15px; color: #666">����</label>
								</td>
							</tr>
							<tr>
								<td>�ֱ� �湮 �Ĵ�</td>
								<td>
									<%
									String visitRest = "";
									if (info.getMemVisitRestaurant() != null) {
										visitRest = info.getMemVisitRestaurant();
									} else {
										visitRest = "-";
									}
									%> <%=visitRest%>
								</td>
							</tr>
							<tr>
								<td>���Գ�¥</td>
								<td><%=info.getMemJoindate()%></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="����" style="text-align: center">
								</td>
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