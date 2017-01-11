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
	<caption>마이페이지 - 기본정보 수정</caption>
	<tr>
		<td>ID</td>
		<td align="center"><input type="text" name="" readonly></td>
	</tr>
	<tr>
		<td>기존 PW</td>
		<td align="center"><input type="password" name=""><input type="button" value="PW변경" onclick="changePw()"></td>
	</tr>
	<tr id="newPW" style="display: none" align="center">
		<td colspan="2" align="center">
		<table border="1" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td align="center">새 PW</td>
				<td align="center"><input type="text" name=""></td>
			</tr>
			<tr>
				<td align="center">새 PW 확인</td>
				<td align="center"><input type="text" name=""></td>
			</tr>
			<tr><td align="center" colspan="2"><input type="button" value="확인" onclick="PwUpdate()"></td></tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>이름</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td>연락처</td>
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
		<td>생년월일</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td align="center"><input type="text" value="">@
			<select name="">
				<option value="">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="hanmial.net">hanmail.net</option>
				<option value="google.com">google.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>성별</td>
		<td align="center">
			<input type="radio" name="gender" checked="checked">남
			<input type="radio" name="gender">여
		</td>
	</tr>
	<tr>
		<td>PW 질문</td>
		<td align="center">
			<select name="">
				<option value="">선택하세요</option>
				<option value="">사는곳어디?</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>PW 답</td>
		<td align="center"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="infoUpdate.marry">수정하기</a>
			<a href="infoUpdateForm.marry">다시작성</a>
		</td>
	</tr>
</table>
</body>
</html>