<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
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
			<td>���̵�</td>
			<td><form:input path="userId"/>
			<font color="red"><form:errors path="userId"/></font></td>
		</tr>
		
		<tr>
			<td>��й�ȣ</td>
			<td><form:password path="password"/>
			<font color="red"><form:errors path="password"/></font></td>
		</tr>
		
		<tr>
			<td>�̸�</td>
			<td><form:input path="userName"/>
			<font color="red"><form:errors path="userName"/></font></td>
		</tr>
		
		<tr>
			<td>����ó</td>
			<td><form:input path="phoneNo"/>
			<font color="red"><form:errors path="phoneNo"/></font></td>
		</tr>
		
		<tr>
			<td>�������</td>
			<td><form:input path="birthDay"/>
			<font color="red"><form:errors path="birthDay"/></font></td>
		</tr>
		
		<tr>
			<td>�̸���</td>
			<td><form:input path="email"/>
			<font color="red"><form:errors path="email"/></font></td>
		</tr>
		
		<tr>
			<td align="center">����</td>
			<td>
			<input type="radio" name="gender" value="1" checked>��
			<input type="radio" name="gender" value="2" checked>��			
			</td>
		</tr>
		
	<tr>
		<td> PW ����  
		<select name="p_1">
			<option value="">�����ϼ���</option>
			<option value="">���� ��￡ ���� ��Ҵ�?</option>
			<option value="">�ƹ��� ������?</option>
			<option value="">�� ������� ����</option>
		</select>
		</td>
	</tr>
	
	<tr>
			<td>PW ��</td>
			<td><form:input path="p_2"/>
			<font color="red"><form:errors path="p_2"/></font></td>
		</tr>

		
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="�����ϱ�">
			<input type="reset" value="�ٽ��ۼ�"></td>
		</tr>
	</table>
</form:form>
</body>
</html>