<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="user" method="post" action="userEntry.shop">
	<spring:hasBindErrors name="user">
		<font color="red">
			<c:forEach items="${errors.globalErrors}" var="error">			
				<spring:message code="${error.code}"/>
			</c:forEach>
		</font>
	</spring:hasBindErrors>
	<table>
		<tr>
			<td>생년월일</td>
			<td><form:input path="birthDay"/>
			<font color="red"><form:errors path="birthDay"/></font></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><form:input path="email"/>
			<font color="red"><form:errors path="email"/></font></td>
			
			<td>@</td>
			<select id="email" name="emailId">
    <option id="email" value="e1">직접입력</option>
    <option id="email" value="e2">naver.com</option>
    <option id="email" value="e3">hanmail.net</option>
    <option id="email" value="e4">google.com</option>
    <option id="email" value="e5">goodee.co.kr</option>
		</select>
		</tr>
		
	</table>
</form:form>
</body>
</html>