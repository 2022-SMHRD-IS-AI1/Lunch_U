<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
#submit {
	align-items: center;
}

img {
	width: 50px;
	height: 50px;
	margin-left: 10px;
}

.label {
	width: 300px;
	background-color: #ccccff;
	margin: 10px 0 0 0;
	padding: 10px;
	text-align: center;
	border-radius: 20px;
}

.elements {
	padding: 10px;
	width: 300px;
}

div {
	position: relative;
}

ul {
	list-style: none;
	padding-left: 0px;
	position: static;
}

li {
	display: inline-block;
}

button {
	margin: 20px;
}

#fieldset {
	width: 350px;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script type="text/javascript">
	$(document).on(
			"click",
			".card",
			function() {
				var card1 = document.getElementById("shinhan").textContent;
				var card2 = document.getElementById("BC").textContent;
				var card3 = document.getElementById("hyundai").textContent;
				var card4 = document.getElementById("samsung").textContent;
				var card5 = document.getElementById("gookmin").textContent;
				var card6 = document.getElementById("hana").textContent;
				var card7 = document.getElementById("woori").textContent;
				var card8 = document.getElementById("citi").textContent;
				var card9 = document.getElementById("NH").textContent;
				var card10 = document.getElementById("why").textContent;
				var card11 = document.getElementById("kakao").textContent;
				var card12 = document.getElementById("shin").textContent;

				cards = [ card1, card2, card3, card4, card5, card6, card7,
						card8, card9, card10, card11, card12 ];
				var card = $(this).text();
				for (i = 0; i < cards.length; i++) {
					if (card == cards[i]) {
						card = cards[i];
					}
				}

				var date = $("#date").text();
				var time = $("#time").text();
				
				console.log(date, time);
				location.href = "pay_2.jsp?card=" + card + "&date=" +date+"&time="+time;

			})
</script>
<body onload="window.resizeTo(600,800)">
	<%
	String date = request.getParameter("date");
	String time = request.getParameter("select_time");
	System.out.print(date + "," + time);
	%>
	<div id="date" style="display: none"><%=date%></div>
	<div id="time" style="display: none"><%=time%></div>
	<fieldset align="center" id="fieldset">
		<legend id="legend">��������</legend>
		<table border="1" align="center">
			<div id="section1" class="label">
				<span align="center">üũ/�ſ�ī��</span>
			</div>
			<div id="section1b" class="elements">
				<ul align="center">
					<li><a class="card" class="card" aria-selected="false"
						role="tab"> <span><img src="images/bank_logo/����.jfif"
								alt="�̹��� �غ���.."></span> <br> <strong id="shinhan">����ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/��.jfif" alt="�̹��� �غ���.."></span> <br>
							<strong id="BC">��ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/139581_159954_1814.png" alt="�̹��� �غ���.."></span>
							<br> <strong id="hyundai">����ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/images.png" alt="�̹��� �غ���.."></span> <br>
							<strong id="samsung">�Ｚī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/art_15939965303701_448557.png"
								alt="�̹��� �غ���.."></span> <br> <strong id="gookmin">����ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/images (1).png" alt="�̹��� �غ���.."></span> <br>
							<strong id="hana">�ϳ�ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε�.png" alt="�̹��� �غ���.."></span> <br>
							<strong id="woori">�츮ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.."></span> <br>
							<strong id="citi">��Ƽī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε� (3).png" alt="�̹��� �غ���.."></span> <br>
							<strong id="NH">NHī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε�.jfif" alt="�̹��� �غ���.."></span> <br>
							<strong id="why">��ȯī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε� (4).jpg" alt="�̹��� �غ���.."></span> <br>
							<strong id="kakao">īī��ī��</strong>
					</a></li>
					<li><a class="card" aria-selected="false" role="tab"> <span><img
								src="images/bank_logo/�ٿ�ε� (5).png" alt="�̹��� �غ���.."></span> <br>
							<strong id="shin">����ī��</strong>
					</a></li>
				</ul>
		</table>
		</div>
		<!-- <div>
            <div id="section1" class="label">
                <span>������ü</span>
            </div>
            <div id="section1b" class="elements">
                <ul>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/toss-symbol.jpg" alt="�̹��� �غ���.." ></span>
                            <br><strong>�佺</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/NH.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>NH����</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/art_15939965303701_448557.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�츮.jpg" alt="�̹��� �غ���.." ></span>
                            <br><strong>�츮����</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/����.jfif" alt="�̹��� �غ���.." ></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�ϳ�����.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>�ϳ�����</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/IBK.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>�������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.." ></span>
                            <br><strong>��Ƽ����</strong>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div>
            <div id="section1" class="label">
                <span>�������Ա�</span>
            </div>
            <ul>
                <div id="section1b" class="elements">
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�츮.jpg" alt="�̹��� �غ���.." ></span>
                            <br><strong>�츮����</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/����.jfif" alt="�̹��� �غ���.." ></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�ϳ�����.png" alt="�̹��� �غ���.." ></span>
                            <br><fh5co-contactstrong>�ϳ�����</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/art_15939965303701_448557.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/��ü��.jfif" alt="�̹��� �غ���.." ></span>
                            <br><strong>��ü������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/IBK.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>�������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/NH.png" alt="�̹��� �غ���.." ></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a class="card" aria-selected="false" role="tab">
                            <span><img src="images/bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.." ></span>
                            <br><strong>��Ƽ����</strong>
                        </a>
                    </li>
                </div>
            </ul>
            </table> -->
		<%--
            
            RequestDispatcher rd = request.getRequestDispatcher("Ex12LoginSuccess.jsp?id="+card);
    		rd.forward(request, response);
            
            --%>
	</fieldset>
	<script type="text/javascript">
		var elements = document.getElementsByTagName("div");

		// ��� ���� ����
		for (var i = 0; i < elements.length; i++) {
			if (elements[i].className == "elements") {
				elements[i].style.display = "none";
			} else if (elements[i].className == "label") {
				elements[i].onclick = switchDisplay;
			}
		}

		// ���¿� ���� ���ų� ��ġ��
		function switchDisplay() {

			var parent = this.parentNode;
			var target = parent.getElementsByTagName("div")[1];

			if (target.style.display == "none") {
				target.style.display = "block";
			} else {
				target.style.display = "none";
			}
			return false;
		}
	</script>
</body>

</html>