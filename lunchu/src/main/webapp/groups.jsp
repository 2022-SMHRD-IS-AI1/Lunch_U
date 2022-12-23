<%@page import="java.sql.ResultSet"%>
<%@page import="model.JoinGroupDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.GroupDTO"%>
<%@page import="model.GroupDAO"%>
<%@page import="model.MemberDTO"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Gourmet Traditional Restaurant | Menu</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script type="text/javascript">
	$(document)
			.on(
					"click",
					".deletegroup_btn",
					function() {
						var data = $(this).parent().parent()
								.find(".groupseq_1").text();

						$.ajax({
							type : "POST",
							url : "deletegroup.jsp",
							data : {
								"data" : data
							},
							success : function(res) {
								// console.log("요청성공");
							},
							error : function(e) {
								// console.log("요청실패");
							}
						})
						var url = "deletegroup.jsp";
						var name = "delete group"
						var option = "width = 500, height = 500, top = 100, left = 200, location = no"
						window.open(url, name, option);
					})

	$(document).on("click", ".element", function() {
		var name = $(this).find(".groupname").text();
		$(".prefix_1").find("h2").text(name);

		var arr = $(this).find("span").text().trim().split(" ");
		var str = "";
		for (var i = 0; i < arr.length; i++) {
			str += ('<a href="#">' + arr[i] + '</a>,')
		}

		$(".inn1").html(str.slice(0, -1));

	})
</script>
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
							<!-- 로그인 전 
                <ul class="sf-menu">
                <li><a href="index.html">로그인</a></li>
                <li><a href="index.html">회원가입</a></li>
              </ul> -->
							<ul class="sf-menu">
								<li><a href="LogoutService">로그아웃</a></li>
								<li><a href="#">마이페이지</a>
									<ul>
										<li><a href="profile.jsp">내 정보</a></li>
										<li><a href="reservation.jsp">내 예약</a></li>
										<li><a href="reviews.jsp">내 리뷰</a></li>
										<li><a href="groups.jsp">내 그룹</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		<div class="content">
			<div class="container_12">
				<div class="group_list">
					<h2 class="head_groupList"
						style="display: content; width: 200px; margin-right: 0px">Group
						List</h2>
					<div class="scroll_box">
						<table>

							<%
							MemberDTO info = (MemberDTO) session.getAttribute("info");
							String id = info.getMemId();

							JoinGroupDAO JGdao = new JoinGroupDAO();
							GroupDAO Gdao = new GroupDAO();

							ArrayList<Integer> groupseq = JGdao.select(id);

							ResultSet result = null;
							if (groupseq.size() == 0) {
							%>
							<tr>
								<td style="text-align: center; vertical-align: center">생성된
									그룹이 없습니다.</td>
							</tr>
							<%
							} else {
							for (int i = 0; i < groupseq.size(); i++) {
								GroupDTO Gdto = Gdao.select(groupseq.get(i));
								ArrayList<String> members = JGdao.findmembers(groupseq.get(i));
							%>
							<tbody class="element">
								<tr>
									<td class="group_sequence"><%=i + 1%></td>
									<td class="group_detail"><a class="groupname" href="#"><%=Gdto.getGroupName()%></a>
										<a style="display: none" class="groupseq_1"><%=groupseq.get(i)%></a><br>
										<span> <%
 String temp = "";
 for (String j : members) {
 	temp += j + " ";
 }
 %><%=temp%></span></td>
									<td style="text-align: right;"><%=members.size()%>명</td>
									<td style="color: red; text-align: right"><strong
										class="deletegroup_btn">X</strong></td>
								</tr>
							</tbody>
							<%
							}
							}
							%>

						</table>
					</div>
					<table>
						<tr>
							<td colspan="3" onclick="location.href='creategroup.jsp'"
								class="add_new_group" align="center"><br> ➕새 그룹</td>
						</tr>
					</table>
				</div>

				<div class="grid_5 prefix_1">
					<h2></h2>
					<p>by. 그룹 만든사람 표시하는거 해야함</p>
					<p class="col2 inn1"></p>

					<div>
						<button class="manage_favorites">삭제</button>
						<table>
							<thead>
								<tr>
									<td class="restaurant_col"></td>
									<td class="restaurant_col">번호</td>
									<td class="restaurant_col">음식점명</td>
								</tr>
							</thead>
							<div class="scroll_box">
								<tbody>
									<tr class="review_detail">
										<td><input type="checkbox"></td>
										<td class="review_detail">1</td>
										<td><a href="#">신쭈꾸미</a></td>
									</tr>
									<tr class="review_detail">
										<td><input type="checkbox"></td>
										<td class="review_detail">2</td>
										<td><a href="#">비바로마</a></td>
									</tr>
									<tr class="review_detail">
										<td><input type="checkbox"></td>
										<td class="review_detail">2</td>
										<td><a href="#">바른초밥</a></td>
									</tr>
									<tr class="review_detail">
										<td><input type="checkbox"></td>
										<td class="review_detail">2</td>
										<td><a href="#">상무초밥</a></td>
									</tr>
									<tr class="review_detail">
										<td><input type="checkbox"></td>
										<td class="review_detail">2</td>
										<td><a href="#">상무초밥</a></td>
									</tr>
							</div>
							</tbody>
						</table>

					</div>
				</div>

			</div>
			<div class="clear"></div>
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
						<li class="current"><a href="menu.html">Menu</a></li>
						<li><a href="portfolio.html">Portfolio</a></li>
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