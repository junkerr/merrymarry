<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /src/main/webapp/WEB-INF/jsp/mypage/mainForm.jsp --%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Mypage</title>
</head>
<body>

<table border="0" cellpadding="0" cellspacing="0" align="center">
	<caption>마이페이지</caption>
	<tr>
		<td align="center">	
			<a href="infoForm.marry">회원정보</a>
		</td>
		<td align="center">
			<a href="exInfoForm.marry">추가정보</a>
		</td>
	</tr>
	<tr>
		<td align="center">
			<a href="couponForm.marry">내 쿠폰관리</a>
		</td>
		<td align="center">
			<a href="pointForm.marry">결제</a>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="deleteMemForm.marry">회원탈퇴</a>
		</td>
	</tr>
</table>
</body>
</html>