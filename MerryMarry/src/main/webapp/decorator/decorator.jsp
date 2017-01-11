<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><decorator:title /></title>
<decorator:head />
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3" align="center">
		<c:choose>
			<%-- �α��� �� ��� --%>
			<c:when test="${not empty USER}">
				<%-- ������ �α��� --%>
				<c:if test="${USER.userId == 'admin'}">
					<a href="${path}/user/admin.shop">������</a>
				</c:if>
				<%-- �Ϲ� ����� �α��� --%>
				<c:if test="${USER.userId != 'admin'}">
					ȯ���մϴ�. ${USER.userName}��
					<a href="${path}/user/mypage.shop?id=${USER.userId}">����������</a>
				</c:if>
				<a href="${path}/user/logout.shop">�α׾ƿ�</a>
			</c:when>
			<%-- �α��� �ȵ� ��� --%>
			<c:otherwise>
				<a href="${path}/user/loginForm.shop">�α���</a>
			</c:otherwise>
		</c:choose></td>
	</tr>
	<tr>
		<td width="15%" align="center" valign="top"><br>
		<a href="${path}/mypage/mainForm.marry">����������</a><br>
		<td colspan="2"><decorator:body /></td>
	</tr>
	<tr>
		<td colspan="3" align="center">������ ���� shop-4 2016</td>
	</tr>
</table>
</body>
</html>