<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
function changePw() {
	document.getElementById("newPW").style.display="inline-block";
}

function PwUpdate() {
	document.getElementById("newPW").style.display="none";
}
</script>
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
	<caption>���������� - �⺻���� ����</caption>
	<tr>
		<td>ID</td>
		<td align="center"><input type="text" name="" readonly></td>
	</tr>
	<tr>
		<td>���� PW</td>
		<td align="center"><input type="password" name=""><input type="button" value="PW����" onclick="changePw()"></td>
	</tr>
	<tr id="newPW" style="display: none" align="center">
		<td colspan="2" align="center">
		<table border="1" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td align="center">�� PW</td>
				<td align="center"><input type="text" name=""></td>
			</tr>
			<tr>
				<td align="center">�� PW Ȯ��</td>
				<td align="center"><input type="text" name=""></td>
			</tr>
			<tr><td align="center" colspan="2"><input type="button" value="Ȯ��" onclick="PwUpdate()"></td></tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td>����ó</td>
		<td align="center">
			<select name="">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="019">019</option>
				<option value="">02</option>
				<option value="031">031</option>
				<option value="032">032</option>
				<option value="042">042</option>
			</select>
			<input type="text" value="" name="">-<input type="text" value="" name="">
		</td>
	</tr>
	<tr>
		<td>�������</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td align="center"><input type="text" value="">@
			<select name="">
				<option value="">�����Է�</option>
				<option value="naver.com">naver.com</option>
				<option value="hanmial.net">hanmail.net</option>
				<option value="google.com">google.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td align="center">
			<input type="radio" name="gender" checked="checked">��
			<input type="radio" name="gender">��
		</td>
	</tr>
	<tr>
		<td>PW ����</td>
		<td align="center">
			<select name="">
				<option value="">�����ϼ���</option>
				<option value="">��°����?</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>PW ��</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="infoUpdate.marry">�����ϱ�</a>
			<a href="infoUpdateForm.marry">�ٽ��ۼ�</a>
		</td>
	</tr>
</table>
</body>
</html>