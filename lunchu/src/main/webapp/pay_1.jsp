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

<body onload="window.resizeTo(600,800)">
	<fieldset id="fieldset">
		<legend id="legend">결제수단</legend>
		<table border="1" align="center">
			<div id="section1" class="label">
				<span align="center">체크/신용카드</span>
			</div>
			<div id="section1b" class="elements">
				<ul>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/신한.jfif" alt="이미지 준비중.."></span> <br> <strong>신한카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/비씨.jfif" alt="이미지 준비중.."></span> <br> <strong>비씨카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/139581_159954_1814.png" alt="이미지 준비중.."></span>
							<br> <strong>현대카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/images.png" alt="이미지 준비중.."></span> <br> <strong>삼성카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/art_15939965303701_448557.png" alt="이미지 준비중.."></span>
							<br> <strong>국민카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/images (1).png" alt="이미지 준비중.."></span> <br>
							<strong>하나카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드.png" alt="이미지 준비중.."></span> <br> <strong>우리카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드 (2).png" alt="이미지 준비중.."></span> <br>
							<strong>씨티카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드 (3).png" alt="이미지 준비중.."></span> <br>
							<strong>NH카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드.jfif" alt="이미지 준비중.."></span> <br> <strong>외환카드</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드 (4).jpg" alt="이미지 준비중.."></span> <br>
							<strong>카카오</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/다운로드 (5).png" alt="이미지 준비중.."></span> <br>
							<strong>신협카드</strong>
					</a></li>
				</ul>
		</table>
		</div>
		<!-- <div>
            <div id="section1" class="label">
                <span>계좌이체</span>
            </div>
            <div id="section1b" class="elements">
                <ul>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/toss-symbol.jpg" alt="이미지 준비중.."></span>
                            <br><strong>토스</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/NH.png" alt="이미지 준비중.."></span>
                            <br><strong>NH은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/art_15939965303701_448557.png" alt="이미지 준비중.."></span>
                            <br><strong>국민은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/우리.jpg" alt="이미지 준비중.."></span>
                            <br><strong>우리은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/신한.jfif" alt="이미지 준비중.."></span>
                            <br><strong>신한은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/하나은행.png" alt="이미지 준비중.."></span>
                            <br><strong>하나은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/IBK.png" alt="이미지 준비중.."></span>
                            <br><strong>기업은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/다운로드 (2).png" alt="이미지 준비중.."></span>
                            <br><strong>씨티은행</strong>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div>
            <div id="section1" class="label">
                <span>무통장입금</span>
            </div>
            <ul>
                <div id="section1b" class="elements">
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/우리.jpg" alt="이미지 준비중.."></span>
                            <br><strong>우리은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/신한.jfif" alt="이미지 준비중.."></span>
                            <br><strong>신한은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/하나은행.png" alt="이미지 준비중.."></span>
                            <br><fh5co-contactstrong>하나은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/art_15939965303701_448557.png" alt="이미지 준비중.."></span>
                            <br><strong>국민은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/우체국.jfif" alt="이미지 준비중.."></span>
                            <br><strong>우체국은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/IBK.png" alt="이미지 준비중.."></span>
                            <br><strong>기업은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/NH.png" alt="이미지 준비중.."></span>
                            <br><strong>농협은행</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/다운로드 (2).png" alt="이미지 준비중.."></span>
                            <br><strong>씨티은행</strong>
                        </a>
                    </li>
                </div>
            </ul>
            </table> -->
	</fieldset>
	<script type="text/javascript">
		var elements = document.getElementsByTagName("div");

		// 모든 영역 접기
		for (var i = 0; i < elements.length; i++) {
			if (elements[i].className == "elements") {
				elements[i].style.display = "none";
			} else if (elements[i].className == "label") {
				elements[i].onclick = switchDisplay;
			}
		}

		// 상태에 따라 접거나 펼치기
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