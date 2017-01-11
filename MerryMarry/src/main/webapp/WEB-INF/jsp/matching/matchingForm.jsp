<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
-->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>��Ī ��</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

#searchcondition {
	width: 100%;
	height: 100%;
	vertical-align: top;
}

label {
	font-size: 1.2em;
}

select {
	font-size: 0.9em;
	text-align-last:center;
	margin-right:30px;
}

fieldset{
	text-align:center;
	border:2px solid gray;
}
#legend1 {
	background-color:#efcf00;
	border-radius:10px;
}

#legend2 {
	background-color:#efcf00;
	border-radius:10px;
}

hr{
	border:3px solid gray;
}
td{
	margin:3px;
	border-bottom: 1px solid #e8e7d3;
}

.hide{
	display:none;
}
.show{
	display:table-row;
}

</style>

<!-- �׻� jquery�� �ֽ� ������ �ҷ���. -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//�ʱ�ȭ ��ư�� Ŭ����
	$("#init").on("click", function(){
		//select �±׸� list������ �迭���·� �����.
		var list = $("select"); 
		
		//select �±׸� ��Ƶ� �迭�� �����Ͽ�
		for(i=0; i<list.length; i++){
			//select �±� ������ option �±��߿� ù��°�� �����Ͽ� selected �Ӽ��� true�� �Ͽ���.
			$(list[i]).find("option:eq(0)").prop("selected",true); 
		}
	});
	

	//�˻� ��ưŬ���� 
	$("#search").on("click",function(){
		var list=$("select");
		//����  select���� ��� �� '�������'�� Ŭ���ϸ� Ŭ���� �ϰ� �ؾ���.
		var cnt = 0;
		
		//��δ�   select ���� ��������� üũ�Ǿ��ִٸ�
		for(i=0; i<list.length; i++){
			if( $(list[i]).find("option:selected").val() == '�������'){
				++cnt;
			}
		}
		
		//6������ ��δ�  '�������'���� �����ߴٸ�.
		if(cnt==6){
			console.log(cnt);
			alert("������ �������ּ���.");
			return;
		}
		
		
		
		
		var absoluteUrl = '${pageContext.request.scheme}' + '://' + '${pageContext.request.serverName}' + ':' + '${pageContext.request.serverPort}' + '${pageContext.request.contextPath}' +'/matching/matchinglist.marry';

		//ajax��� ��û�ϱ�
		$.ajax({
			url:absoluteUrl,
			type:"POST",
			data: decodeURIComponent($("#searchform").serialize()),
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			
			cache:false,
			async:false,
			success:function(data){
				if(data.length >0){ //data�� �ִٸ�
					var length = data.length;
					$("#listtable .a").remove();
					$("#listtable .hide").remove();
					for(i=0; i<data.length; i++){
						// ����Ʈ�� �ٷ� ���� �� ����� ����� �ڵ�
						$("#listtable > tbody:last").append("<tr class='a'><td class='more'>"+(length--)+"</td><td class='more'>"+"�ش����"+"</td><td class='more'>"+data[i].selfintro+"</td>");
						// ���� ������(���ڵ��)
						$("#listtable > tbody:last").append("<tr class='hide' style='text-align:left'><td colspan='3' style='border-bottom:5px dotted #e8e7d3'>"
					    + "<div style='text-align:center;'><strong>*�߰�����</strong></div><br/>"
						+ getdata(data[i])
						+"</td></tr>")
					}
				}else{ //data�� ���ٸ�..
					$("#listtable .a").remove();
					$("#listtable > tbody:last").append("<tr class='a'><td colspan='3'><strong>���ǿ� ��ġ�ϴ� ����� �����ϴ�.</strong></td></tr>");
				}
				
				
				
			},
			error:function(request,status,error){
				alert("["+error+"] �߻�!! �����ڿ��� �����ϼ���.");
			}
			
		}); //ajax ��
	
		
	}); //�˻� ��ưŬ���Լ� ��
	
	//2�� �������� �Լ�
	function getdata(data){
		return data.name
	}
	
	//Ŭ�� �� 
	 $(function(){ 
		$("#listtable").on("click",".a",function(e){
			//e.stopPropagation();
			console.log($(this));
			
			var x = $(this).next();
			if($(x).hasClass("hide")){
				$(x).removeClass("hide").addClass("show");
			}else{
				$(x).removeClass("show").addClass("hide");
			}
		});
	 }); 
});//document.ready ��
	
</script>
</head>
<body>
	<form id="searchform" method="post">
		<fieldset>
			<legend id="legend1">My Matching</legend>
			<fieldset>
				<legend id="legend2">�˻�����</legend>
				<div id="searchcondition">
					<!-- ���� -->
					<label>����</label> 
    				<select id="district" name="district">
    					<option value="0">�������</option>
						<option value="�����">�����</option>
						<option value="��⵵">��⵵</option>
						<option value="������">������</option>
						<option value="��û�ϵ�">��û�ϵ�</option>
						<option value="��û����">��û����</option>
						<option value="����ϵ�">����ϵ�</option>
						<option value="���󳲵�">���󳲵�</option>
						<option value="���ֵ�">���ֵ�</option>
					</select>
					
					<!-- ���� -->
					<label>����</label>
					<select id="job" name="job">
						<option value="0">�������</option>
						<option value="�濵,ȸ��,�繫">�濵��ȸ����繫</option>
						<option value="����,����">����������</option>
						<option value="����,�ڿ�����,��ȸ����">�������ڿ����Т���ȸ����</option>
						<option value="����,�ҹ�,����,����">�������ҹ������������</option>
						<option value="����,�Ƿ�">���Ǣ��Ƿ�</option>
						<option value="��ȸ����,����">��ȸ����������</option>
						<option value="��ȭ,����,������,���">��ȭ�������������΢����</option>
						<option value="����,���">���������</option>
						<option value="����,�Ǹ�">�������Ǹ�</option>
						<option value="����,û��">�����û��</option>
						<option value="�̿�,����,����,����">�̿�����ڢ����������</option>
						<option value="������">������</option>
						<option value="���ļ���">���ļ���</option>
						<option value="�Ǽ�">�Ǽ�</option>
						<option value="���">���</option>
						<option value="���� �� ����">���� �� ����</option>
						<option value="�������">�������</option>
						<option value="��ǰ ����">��ǰ ����</option>
						<option value="����">����</option>
					</select>
					
					<!-- ���� -->
					<label>����<sub>(����)</sub></label>
					<select id="salary" name="salary">
						<option value="0">�������</option>
						<option value="1">3000�̸�</option>
						<option value="2">3000~6000</option>
						<option value="3">6000~10000</option>
						<option value="4">10000~</option>
					</select>
					
					
					<!-- ���� -->
					<label>Ű<sub>(cm)</sub></label>
					<select id="height" name="height">
						<option value="0">�������</option>
						<option value="1">~166</option>
						<option value="2">166~171</option>
						<option value="3">171~175</option>
						<option value="4">175~178</option>
						<option value="5">178~182</option>
						<option value="6">182~</option>
					</select>
					
					<label>������<sub>(kg)</sub></label>
					<select id="weight" name="weight">
						<option value="0">�������</option>
						<option value="1">~60</option>
						<option value="2">60~70</option>
						<option value="3">70~80</option>
						<option value="4">80~90</option>
						<option value="5">90~100</option>
						<option value="6">100~</option>
					</select>
					
					<label>����</label>
					<select id="religion" name="religion">
						<option value="0">�������</option>
						<option value="�⵶��">�⵶��</option>
						<option value="õ�ֱ�">õ�ֱ�</option>
						<option value="�ұ�">�ұ�</option>
						<option value="�̽�����">�̽�����</option>
						
					</select>
					<br/><br/>
					
					
					<input type="button" value="�˻��ϱ�" id="search"/>
					<input type="button" value="�ʱ�ȭ" id="init"/>
					
				</div>
			</fieldset> <!-- ���� fieldset �� -->
			<br/><br/>
			<hr/>
			
			<!-- ��� �����ִ� ��-->
			<h2>&lt;��Ī ���&gt;</h2>
			<div>
				<table  cellspacing="6" cellpadding="0" width="80%" style="margin: 0 auto;" id="listtable">
					<tr style="background-color:#e8e7d3">
						<th style="width: 5%;">No.</td>
						<th style="width: 15%;">���� ����</td>
						<th style="width: 80%;">�ڱ�Ұ�</td>
						
					</tr>
					<tr class="a">
						<td colspan="3"><strong>������ �˻����ּ���.</strong></td>
					</tr>
				</table>
			</div>
		</fieldset>
		
	</form>
	
	
</body>
</html>