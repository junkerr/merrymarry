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
			<%-- 로그인 된 경우 --%>
			<c:when test="${not empty USER}">
				<%-- 관리자 로그인 --%>
				<c:if test="${USER.userId == 'admin'}">
					<a href="${path}/user/admin.shop">관리자</a>
				</c:if>
				<%-- 일반 사용자 로그인 --%>
				<c:if test="${USER.userId != 'admin'}">
					환영합니다. ${USER.userName}님
					<a href="${path}/user/mypage.shop?id=${USER.userId}">마이페이지</a>
				</c:if>
				<a href="${path}/user/logout.shop">로그아웃</a>
			</c:when>
			<%-- 로그인 안된 경우 --%>
			<c:otherwise>
				<a href="${path}/user/loginForm.shop">로그인</a>
			</c:otherwise>
		</c:choose></td>
	</tr>
	<tr>
		<td width="15%" align="center" valign="top"><br>
		<a href="${path}/mypage/mainForm.marry">마이페이지</a><br>
		<td colspan="2"><decorator:body /></td>
	</tr>
	<tr>
		<td colspan="3" align="center">스프링 연습 shop-4 2016</td>
	</tr>
</table>
</body>
</html>