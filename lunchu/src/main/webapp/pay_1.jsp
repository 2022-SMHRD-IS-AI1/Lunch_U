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
		<legend id="legend">��������</legend>
		<table border="1" align="center">
			<div id="section1" class="label">
				<span align="center">üũ/�ſ�ī��</span>
			</div>
			<div id="section1b" class="elements">
				<ul>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/����.jfif" alt="�̹��� �غ���.."></span> <br> <strong>����ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/��.jfif" alt="�̹��� �غ���.."></span> <br> <strong>��ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/139581_159954_1814.png" alt="�̹��� �غ���.."></span>
							<br> <strong>����ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/images.png" alt="�̹��� �غ���.."></span> <br> <strong>�Ｚī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/art_15939965303701_448557.png" alt="�̹��� �غ���.."></span>
							<br> <strong>����ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/images (1).png" alt="�̹��� �غ���.."></span> <br>
							<strong>�ϳ�ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε�.png" alt="�̹��� �غ���.."></span> <br> <strong>�츮ī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.."></span> <br>
							<strong>��Ƽī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε� (3).png" alt="�̹��� �غ���.."></span> <br>
							<strong>NHī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε�.jfif" alt="�̹��� �غ���.."></span> <br> <strong>��ȯī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε� (4).jpg" alt="�̹��� �غ���.."></span> <br>
							<strong>īī��</strong>
					</a></li>
					<li><a aria-selected="false" role="tab" href="pay_2.jsp"> <span><img
								src="../bank_logo/�ٿ�ε� (5).png" alt="�̹��� �غ���.."></span> <br>
							<strong>����ī��</strong>
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
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/toss-symbol.jpg" alt="�̹��� �غ���.."></span>
                            <br><strong>�佺</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/NH.png" alt="�̹��� �غ���.."></span>
                            <br><strong>NH����</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/art_15939965303701_448557.png" alt="�̹��� �غ���.."></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�츮.jpg" alt="�̹��� �غ���.."></span>
                            <br><strong>�츮����</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/����.jfif" alt="�̹��� �غ���.."></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�ϳ�����.png" alt="�̹��� �غ���.."></span>
                            <br><strong>�ϳ�����</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/IBK.png" alt="�̹��� �غ���.."></span>
                            <br><strong>�������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.."></span>
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
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�츮.jpg" alt="�̹��� �غ���.."></span>
                            <br><strong>�츮����</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/����.jfif" alt="�̹��� �غ���.."></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�ϳ�����.png" alt="�̹��� �غ���.."></span>
                            <br><fh5co-contactstrong>�ϳ�����</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/art_15939965303701_448557.png" alt="�̹��� �غ���.."></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/��ü��.jfif" alt="�̹��� �غ���.."></span>
                            <br><strong>��ü������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/IBK.png" alt="�̹��� �غ���.."></span>
                            <br><strong>�������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/NH.png" alt="�̹��� �غ���.."></span>
                            <br><strong>��������</strong>
                        </a>
                    </li>
                    <li>
                        <a aria-selected="false" role="tab" href="pay_2.jsp">
                            <span><img src="../bank_logo/�ٿ�ε� (2).png" alt="�̹��� �غ���.."></span>
                            <br><strong>��Ƽ����</strong>
                        </a>
                    </li>
                </div>
            </ul>
            </table> -->
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