<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<body>
	<%
	//request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");

	String data = request.getParameter("data");
	System.out.println("Test " + data);
	%>

	<form action="">
		<fieldset>
			<legend>�ֹ�/����</legend>
			<table border="1" align="center">
				<tr>
					<td>ī�����</td>
					<%--
					request.setCharacterEncoding("utf-8");
					response.setContentType("text/html; charset=utf-8");
					String card = request.getParameter("card");
					System.out.print(card);
					--%>
					<td><%=data%></td>
				</tr>
				<tr>
					<td>��������</td>
					<td>
						<table>
							<tr>
								<td>ī���ȣ</td>
								<td><input size="4px" maxlength="4" type="text"> <input
									size="4px" maxlength="4" type="text"> <input size="4px"
									maxlength="4" type="text"> <input size="4px"
									maxlength="4" type="text"></td>
							</tr>
							<tr>
								<td>��ȿ�Ⱓ</td>
								<td><input size="1px" maxlength="2" type="text">�� <input
									size="4px" maxlength="4" type="text">��</td>
							</tr>
							<tr>
								<td>��й�ȣ</td>
								<td><input size="4px" maxlength="2" type="text">XX
									(�� 2�ڸ�)</td>
							</tr>
							<tr>
								<td>�ֹε�Ϲ�ȣ</td>
								<td>XXXXXX - <input size="4px" maxlength="6" type="text"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>���� �ݾ�</td>
					<td>10,000��</td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox">���ڱ��� �̿��� <input
						type="checkbox">�����ĺ��������� �� �̿���</td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox">������������ �� �̿��� <input
						type="checkbox">������������ �� ��Ź�ȳ�</td>
				</tr>
				<tr align="center">
					<td colspan="2"><input id="input_btn" type="submit"
						value="�����ϱ�" onclick="do_alert()"></td>
				</tr>
			</table>
		</fieldset>
	</form>
	<script>
		const input_btn = document.getElementById("input_btn");

		function do_alert() {
			alert("������ �Ϸ�Ǿ����ϴ�.");

			opener.location.href = "reservation.jsp";
			self.close();
		}
	</script>
</body>

</html>