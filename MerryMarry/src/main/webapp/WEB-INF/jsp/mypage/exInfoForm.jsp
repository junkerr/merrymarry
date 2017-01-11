<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
	.pic{
		width: 100pt;
		height: 100pt;
		background-color: blue;
	}
	
</style>
<title>exinfo</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="0">
	<caption>마이페이지-추가정보</caption>
	<tr>
		<td align="center">
			<a href="">
				<div class="pic"></div>
			</a>
			<input type="radio" name="pic">
		</td>
		<td align="center">
			<a href="">
				<div class="pic"></div>
			</a>
			<input type="radio" name="pic">
		</td>
		<td align="center">
			<a href="">
				<div class="pic"></div>
			</a>
			<input type="radio" name="pic">
		</td>
		<td align="center">
			<a href="">
				<div class="pic"></div>
			</a>
			<input type="radio" name="pic">
		</td>
		<td align="center">
			<a href="">
				<div class="pic"></div>
			</a>
			<input type="radio" name="pic">
		</td>
	</tr>
	<tr><td colspan="5"><br><h4>개인정보</h4></td></tr>
	<tr>
		<td colspan="2">최종학력</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">장애여부</td>
		<td colspan="3">
			<input type="radio" name="disabled" value="1">예
			<input type="radio" name="disabled" value="2">아니오
		</td>
	</tr>
	<tr>
		<td colspan="2">군복무</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">취미</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">가족관계</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">종교</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">키</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">몸무게</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">주소</td>
		<td colspan="3"><input type="text" name=""><input type="button" name="" value="주소찾기"></td>
	</tr>
	<tr>
		<td colspan="2">재혼여부</td>
		<td colspan="3">
			<input type="radio" name="remarry" value="1">예
			<input type="radio" name="remarry" value="2">아니오
		</td>
	</tr>
	<tr>
		<td colspan="2">자녀여부</td>
		<td colspan="3">
			<input type="radio" name="childnum" value="1">예
			<input type="radio" name="childnum" value="2">아니오
			자녀수<input type="text" name="">
		</td>
	</tr>
	
	<tr><td colspan="5"><br><h4>직장</h4></td></tr>
	<tr>
		<td colspan="5" align="center">
			대분류
			<select>
				<option value="">대분류</option>
				<option value="">IT</option>
				<option value="">금융</option>
				<option value="">예술</option>
				<option value="">노가다</option>
			</select>
			중분류
			<select>
				<option value="">중분류</option>
				<option value="">중분류</option>
				<option value="">중분류</option>
				<option value="">중분류</option>
				<option value="">중분류</option>
				<option value="">중분류</option>
			</select>
			소분류
			<input type="text" value="직접입력">
		</td>
	</tr>
	<tr>
		<td colspan="2">직장명</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	
	<tr><td colspan="5"><br><h4>재산</h4></td></tr>
	<tr>
		<td colspan="2">차종</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="2">연봉</td>
		<td colspan="3"><input type="text" name=""></td>
	</tr>
	<tr>
		<td colspan="5" align="center">
			주거형태
			<select>
				<option value="">주거형태</option>
				<option value="">자택</option>
				<option value="">전세</option>
				<option value="">월세</option>
				<option value="">기타</option>
			</select>
			평수
			<input type="text" value="직접입력">
		</td>
	</tr>

	<tr><td colspan="5"><br><h4>자기소개</h4></td></tr>
	<tr>
		<td colspan="5">
			<textarea rows="15" cols="100" name=""></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="5" align="center">
			<a href="exInfoUpdate.marry">등록하기</a>
			<a href="exInfoForm.marry">다시작성</a>
		</td>
	</tr>
</table>
</body>
</html>