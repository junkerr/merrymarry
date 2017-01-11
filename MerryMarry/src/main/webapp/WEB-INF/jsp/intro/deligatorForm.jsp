<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회사 소개</title>
</head>
<body>
<form:form modelAttribute="Deligator" method="post" >
<table border="1" cellspacing="0" cellpadding="0" width="100%">
	<tr><td align="center">회사소개</td></tr>
	<tr><td>회사 이미지</td><td>
		<table width="100%" height="250">
			<tr><td>이미지</td></tr>
		</table>
	</td></tr>
</table>
</form:form>
</body>
</html>