<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>
<form:form modelAttribute="user" method="post" action="userEntry.marry">
	<spring:hasBindErrors name="user">
		<font color="red">
			<c:forEach items="${errors.globalErrors}" var="error">			
				<spring:message code="${error.code}"/>
			</c:forEach>
		</font>
	</spring:hasBindErrors>
	<table>
	
		<tr>
			<td>아이디</td>
			<td><form:input path="userId"/>
			<font color="red"><form:errors path="userId"/></font></td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><form:password path="password"/>
			<font color="red"><form:errors path="password"/></font></td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><form:input path="userName"/>
			<font color="red"><form:errors path="userName"/></font></td>
		</tr>
		
		<tr>
			<td>연락처</td>
			<td><form:input path="phoneNo"/>
			<font color="red"><form:errors path="phoneNo"/></font></td>
		</tr>
		
		<tr>
			<td>생년월일</td>
			<td><form:input path="birthDay"/>
			<font color="red"><form:errors path="birthDay"/></font></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><form:input path="email"/>
			<font color="red"><form:errors path="email"/></font></td>
		</tr>
		
		<tr>
			<td align="center">성별</td>
			<td>
			<input type="radio" name="gender" value="1" checked>남
			<input type="radio" name="gender" value="2" checked>여			
			</td>
		</tr>
		
	<tr>
		<td> PW 질문  
		<select name="p_1">
			<option value="">선택하세요</option>
			<option value="">가장 기억에 남는 장소는?</option>
			<option value="">아버지 성함은?</option>
			<option value="">내 어렸을적 별명</option>
		</select>
		</td>
	</tr>
	
	<tr>
			<td>PW 답</td>
			<td><form:input path="p_2"/>
			<font color="red"><form:errors path="p_2"/></font></td>
		</tr>

		
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입하기">
			<input type="reset" value="다시작성"></td>
		</tr>
	</table>
</form:form>
</body>
</html>