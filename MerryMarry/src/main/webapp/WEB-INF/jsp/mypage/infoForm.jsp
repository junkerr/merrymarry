<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>InfoForm</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
	<caption>����������</caption>
	<tr>
		<td>ID</td>
		<td align="center"><input type="text" value="" readonly></td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td align="center"><input type="text" value="" readonly></td>
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
			<input type="text" value="" readonly>-<input type="text" value="" readonly>
		</td>
	</tr>
	<tr>
		<td>�������</td>
		<td align="center"><input type="text" value="" readonly></td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td align="center"><input type="text" value="" readonly>@
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
			<input type="radio" name="gender" checked="checked" disabled="disabled">��
			<input type="radio" name="gender" disabled="disabled">��
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="infoUpdateForm.marry">����</a>
			<a href="deleteMemForm.marry">Ż��</a>
		</td>
	</tr>
</table>
</body>
</html>