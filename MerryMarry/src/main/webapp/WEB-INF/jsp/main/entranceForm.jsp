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
            // 회원가입 버튼 클릭시   
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
        	// 모달팝업띄울때 함수지정할 수 있음.
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
				<input type="submit" value="로그인">
				<input type="button" id="addItemBtn" value="회원가입">
				<input type="button" id="clickMe" value="ID 찾기" />
				<input type="button" id="clickMe2" value="PW 찾기"></td>
			</tr>
			
			<%-- <!-- 회원가입 시작 -->
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
	           <td>PW 확인</td>
				<td><form:password path="repassword" />
				<font color="red"><form:errors path="repassword" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>이름</td>
				<td><form:input path="name" />
				<font color="red"><form:errors path="name" /></font></td>
        	</tr>
        	<tr class="a">
	           	<td>연락처</td>
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
	           <td>생년월일</td>
				<td><form:input path="birth" />
				<font color="red"><form:errors path="birth" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>E-mail</td>
				<td><form:input path="email" />
				<font color="red"><form:errors path="email" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>성별</td>
				<td><form:radiobutton path="gender" value="1" label="남자"/>
				<form:radiobutton path="gender" value="2" label="여자"/>
				<font color="red"><form:errors path="gender" /></font></td>
        	</tr>
        	<tr class="a">
	           <td>PW 질문</td>
				<td><form:select path="p_1">
				<form:option value="q1">당신의 보물 1호는?</form:option>
				<form:option value="q2">당신이 가본 곳 중 기억에 남는 장소는?</form:option>
				<form:option value="q3">당신 어머니의 이름은?</form:option>
				<form:option value="q4">당신 아버지의 이름은?</form:option>
				</form:select></td>
        	</tr>
        	<tr class="a">
	           <td>PW 답</td>
				<td><form:input path="p_2" />
				<font color="red"><form:errors path="p_2" /></font></td>
        	</tr>
        	<tr class="a">
        		<td colspan="2">
        		<input type="button" value="회원가입" onclick="mySubmit()">
        		<input type="reset" value="다시 작성">
        		<input type="button" value="메인으로 이동" onclick="location.href='entranceForm.marry'"></td>
        	</tr>
        	<!-- 회원가입끝 --> --%>
			
		</table>
		<table>
			<tr>
				<td>
					<div id="dialog1" style="display:none; text-align:center; border:2px solid black;">
					<table id="findId">
					<tr>
						<td colspan="3">ID 찾기</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><form:input path="find_birth" />
						<font color="red"><form:errors path="find_birth" /></font></td>
					</tr>
					<tr>
						<td>E-mail</td>
						<td><form:input path="find_email" />
					<font color="red"><form:errors path="find_email" /></font></td>
					</tr>
					<tr>
						<td>PW 질문</td>
						<td><form:select path="find_p_1">
						<form:option value="find_q1">당신의 보물 1호는?</form:option>
						<form:option value="find_q2">당신이 가본 곳 중 기억에 남는 장소는?</form:option>
						<form:option value="find_q3">당신 어머니의 이름은?</form:option>
						<form:option value="find_q4">당신 아버지의 이름은?</form:option>
						</form:select></td>
					</tr>
					<tr>
						<td>PW 답</td>
						<td><form:input path="find_p_2" />
						<font color="red"><form:errors path="find_p_2" /></font></td>
					</tr>
					<tr>
						<td>E-mail 인증</td>
						<td><form:input path="find2_email" />
						<font color="red"><form:errors path="find2_email" /></font><input type="button" id="confirm" value="전송"></td>
					</tr>
					<tr>
						<td colspan="3">
						<input type="button" id="" value="ID 찾기">
						<input type="reset" value="다시 작성">
						<input type="button" id="" value="PW 찾기"></td>
					</tr>
					</table>
					</div>
					<div id="dialog2" style="display:none; text-align:center; border:2px solid black;">
					<table id="findId">
					<tr>
						<td colspan="3">PW 찾기</td>
					</tr>
					<tr>
						<td>ID</td>
						<td><form:input path="find_userid" />
						<font color="red"><form:errors path="find_userid" /></font></td>
					</tr>
					<tr>
						<td>PW 질문</td>
						<td><form:select path="find2_p_1">
						<form:option value="find2_q1">당신의 보물 1호는?</form:option>
						<form:option value="find2_q2">당신이 가본 곳 중 기억에 남는 장소는?</form:option>
						<form:option value="find2_q3">당신 어머니의 이름은?</form:option>
						<form:option value="find2_q4">당신 아버지의 이름은?</form:option>
						</form:select></td>
					</tr>
					<tr>
						<td>PW 답</td>
						<td><form:input path="find2_p_2" />
					<font color="red"><form:errors path="find2_p_2" /></font></td>
					</tr>
					<tr>
						<td>E-mail 인증</td>
						<td><form:input path="find3_email" />
						<font color="red"><form:errors path="find3_email" /></font><input type="button" id="confirm2" value="전송"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" id="" value="PW 찾기">
						<input type="reset" value="다시 작성"></td>
					</tr>
					</table>
					</div>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>