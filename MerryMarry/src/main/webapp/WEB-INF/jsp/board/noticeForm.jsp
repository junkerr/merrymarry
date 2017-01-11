<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>공지 사항</title>
</head>
<body>
<form:form modelAttribute="Notice" method="post" >
<table border="1" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td colspan="4" align="center">공지 사항</td>
			<td>글개수:${listcount}</td>
		</tr>
		<tr align="center" valign="middle" >
			<td width="8%">번호</td>
			<td width="60%">제목</td>
			<td width="15%">작성자</td>
			<td width="17%">작성날짜</td>
		</tr>
		
</table>
</form:form>
</body>
</html>