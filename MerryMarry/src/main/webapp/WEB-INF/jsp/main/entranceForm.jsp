<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="entranceMenu.title" /></title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js" integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous"></script>
    <script type="text/javascript">	
        $(document).ready(function(){
            // ȸ������ ��ư Ŭ����   
            var list = $(".a");
            var loglist = $(".log");
            for(i=0; i<list.length; i++){
            	$(list[i]).hide();
            }
            $("#addItemBtn").bind("click", function(){
            	for(i=0; i<list.length; i++){
            		$(list[i]).show();
            	}
            	for(i=0; i<loglist.length; i++) {
            		$(loglist[i]).hide();
            	}
            });
        $(function() {
        	$("#clickMe").click(
        	function(){
        	$("#dialog1").dialog({modal:true, 
        	open:function() {
        	// ����˾���ﶧ �Լ������� �� ����.
        		},
        			width:350
        		});
        	});
        });
        $(function() {
        	$("#clickMe2").click(
        	function(){
        	$("#dialog2").dialog({modal:true, 
        	open:function() {
        		},
        			width:350
        		});
        	}); 
        });
    });

    function mySubmit() {
       document.memForm.submit();
	}

    $.ajax({
    	  type: "POST",
    	  url: url,
    	  data: data,
    	  success: success,
    	  dataType: dataType
    	});
    $.post( "mainForm.marry" );
    </script>
    <style type="text/css">
    	#example {
    		z-index: -1;
    	}
    	#dialog1 {
    		z-index: 1;
    		background-color: rgb(222,222,222);
    	}
    	#dialog2 {
    		z-index : 1;
    		background-color: rgb(222,222,222);	
    	}
    	#findId {
    		font-size: smaller;
    	}
    </style>
</head>
<body>
	<form:form modelAttribute="member3" name="memForm" method="post" action="mainForm.marry">
		<spring:hasBindErrors name="member3">
			<font color="red">
				<c:forEach items="${errors.globalErrors}" var="error">
					<spring:message code="${error.code}" />
				</c:forEach>
			</font>
		</spring:hasBindErrors>
		<table id="example" border="0px" cellspacing="20" align="center">
			<tr class="log">
				<td>ID</td>
				<td><form:input path="login_userid"/>
				<font color="red"><form:errors path="login_userid" /></font></td>
			</tr>
			<tr class="log">
				<td>PW</td>
				<td><form:password path="login_password" />
				<font color="red"><form:errors path="login_password"/></font></td>
			</tr>
			<tr class="log">
				<td colspan="3" align="center">
				<input type="submit" value="�α���">
				<input type="button" id="addItemBtn" value="ȸ������">
				<input type="button" id="clickMe" value="ID ã��" />
				<input type="button" id="clickMe2" value="PW ã��"></td>
			</tr>
			
			<%-- <!-- ȸ������ ���� -->
        	<tr class="a">
	           <td>ID</td>
				<td><form:input path="userid" />
				<font color="red"><form:errors path="userid" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>PW</td>
				<td><form:password path="password" />
				<font color="red"><form:errors path="password" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>PW Ȯ��</td>
				<td><form:password path="repassword" />
				<font color="red"><form:errors path="repassword" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>�̸�</td>
				<td><form:input path="name" />
				<font color="red"><form:errors path="name" /></font></td>
        	</tr>
        	<tr class="a">
	           	<td>����ó</td>
				<td colspan="3"><form:select path="f_phone">
				<form:option value="010">010</form:option>
				<form:option value="011">011</form:option>
				<form:option value="016">016</form:option>
				<form:option value="017">017</form:option>
				<form:option value="018">018</form:option>
				<form:option value="019">019</form:option>
				</form:select>
				- <form:input path="m_phone" /> -
				<font color="red"><form:errors path="m_phone" /></font>
				<form:input path="l_phone" />
				<font color="red"><form:errors path="l_phone" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>�������</td>
				<td><form:input path="birth" />
				<font color="red"><form:errors path="birth" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>E-mail</td>
				<td><form:input path="email" />
				<font color="red"><form:errors path="email" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>����</td>
				<td><form:radiobutton path="gender" value="1" label="����"/>
				<form:radiobutton path="gender" value="2" label="����"/>
				<font color="red"><form:errors path="gender" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>PW ����</td>
				<td><form:select path="p_1">
				<form:option value="q1">����� ���� 1ȣ��?</form:option>
				<form:option value="q2">����� ���� �� �� ��￡ ���� ��Ҵ�?</form:option>
				<form:option value="q3">��� ��Ӵ��� �̸���?</form:option>
				<form:option value="q4">��� �ƹ����� �̸���?</form:option>
				</form:select></td>
        	</tr>
        	<tr class="a">
	           <td>PW ��</td>
				<td><form:input path="p_2" />
				<font color="red"><form:errors path="p_2" /></font></td>
        	</tr>
        	<tr class="a">
        		<td colspan="2">
        		<input type="button" value="ȸ������" onclick="mySubmit()">
        		<input type="reset" value="�ٽ� �ۼ�">
        		<input type="button" value="�������� �̵�" onclick="location.href='entranceForm.marry'"></td>
        	</tr>
        	<!-- ȸ�����Գ� --> --%>
			
		</table>
		<table>
			<tr>
				<td>
					<div id="dialog1" style="display:none; text-align:center; border:2px solid black;">
					<table id="findId">
					<tr>
						<td colspan="3">ID ã��</td>
					</tr>
					<tr>
						<td>�������</td>
						<td><form:input path="find_birth" />
						<font color="red"><form:errors path="find_birth" /></font></td>
					</tr>
					<tr>
						<td>E-mail</td>
						<td><form:input path="find_email" />
					<font color="red"><form:errors path="find_email" /></font></td>
					</tr>
					<tr>
						<td>PW ����</td>
						<td><form:select path="find_p_1">
						<form:option value="find_q1">����� ���� 1ȣ��?</form:option>
						<form:option value="find_q2">����� ���� �� �� ��￡ ���� ��Ҵ�?</form:option>
						<form:option value="find_q3">��� ��Ӵ��� �̸���?</form:option>
						<form:option value="find_q4">��� �ƹ����� �̸���?</form:option>
						</form:select></td>
					</tr>
					<tr>
						<td>PW ��</td>
						<td><form:input path="find_p_2" />
						<font color="red"><form:errors path="find_p_2" /></font></td>
					</tr>
					<tr>
						<td>E-mail ����</td>
						<td><form:input path="find2_email" />
						<font color="red"><form:errors path="find2_email" /></font><input type="button" id="confirm" value="����"></td>
					</tr>
					<tr>
						<td colspan="3">
						<input type="button" id="" value="ID ã��">
						<input type="reset" value="�ٽ� �ۼ�">
						<input type="button" id="" value="PW ã��"></td>
					</tr>
					</table>
					</div>
					<div id="dialog2" style="display:none; text-align:center; border:2px solid black;">
					<table id="findId">
					<tr>
						<td colspan="3">PW ã��</td>
					</tr>
					<tr>
						<td>ID</td>
						<td><form:input path="find_userid" />
						<font color="red"><form:errors path="find_userid" /></font></td>
					</tr>
					<tr>
						<td>PW ����</td>
						<td><form:select path="find2_p_1">
						<form:option value="find2_q1">����� ���� 1ȣ��?</form:option>
						<form:option value="find2_q2">����� ���� �� �� ��￡ ���� ��Ҵ�?</form:option>
						<form:option value="find2_q3">��� ��Ӵ��� �̸���?</form:option>
						<form:option value="find2_q4">��� �ƹ����� �̸���?</form:option>
						</form:select></td>
					</tr>
					<tr>
						<td>PW ��</td>
						<td><form:input path="find2_p_2" />
					<font color="red"><form:errors path="find2_p_2" /></font></td>
					</tr>
					<tr>
						<td>E-mail ����</td>
						<td><form:input path="find3_email" />
						<font color="red"><form:errors path="find3_email" /></font><input type="button" id="confirm2" value="����"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" id="" value="PW ã��">
						<input type="reset" value="�ٽ� �ۼ�"></td>
					</tr>
					</table>
					</div>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>