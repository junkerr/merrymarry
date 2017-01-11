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
<title>메칭 폼</title>
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

<!-- 항상 jquery의 최신 버전을 불러옴. -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//초기화 버튼을 클릭시
	$("#init").on("click", function(){
		//select 태그를 list변수에 배열형태로 저장됨.
		var list = $("select"); 
		
		//select 태그를 모아둔 배열에 접근하여
		for(i=0; i<list.length; i++){
			//select 태그 하위에 option 태그중에 첫번째에 접근하여 selected 속성을 true로 하여라.
			$(list[i]).find("option:eq(0)").prop("selected",true); 
		}
	});
	

	//검색 버튼클릭시 
	$("#search").on("click",function(){
		var list=$("select");
		//만약  select문을 모두 다 '상관없음'을 클릭하면 클릭을 하게 해야함.
		var cnt = 0;
		
		//모두다   select 문이 상관없음에 체크되어있다면
		for(i=0; i<list.length; i++){
			if( $(list[i]).find("option:selected").val() == '상관없음'){
				++cnt;
			}
		}
		
		//6조건을 모두다  '상관없음'으로 선택했다면.
		if(cnt==6){
			console.log(cnt);
			alert("조건을 선택해주세요.");
			return;
		}
		
		
		
		
		var absoluteUrl = '${pageContext.request.scheme}' + '://' + '${pageContext.request.serverName}' + ':' + '${pageContext.request.serverPort}' + '${pageContext.request.contextPath}' +'/matching/matchinglist.marry';

		//ajax통신 요청하기
		$.ajax({
			url:absoluteUrl,
			type:"POST",
			data: decodeURIComponent($("#searchform").serialize()),
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			
			cache:false,
			async:false,
			success:function(data){
				if(data.length >0){ //data가 있다면
					var length = data.length;
					$("#listtable .a").remove();
					$("#listtable .hide").remove();
					for(i=0; i<data.length; i++){
						// 리스트에 바로 보여 줄 목록을 만드는 코드
						$("#listtable > tbody:last").append("<tr class='a'><td class='more'>"+(length--)+"</td><td class='more'>"+"해당사진"+"</td><td class='more'>"+data[i].selfintro+"</td>");
						// 정보 더보기(아코디언)
						$("#listtable > tbody:last").append("<tr class='hide' style='text-align:left'><td colspan='3' style='border-bottom:5px dotted #e8e7d3'>"
					    + "<div style='text-align:center;'><strong>*추가정보</strong></div><br/>"
						+ getdata(data[i])
						+"</td></tr>")
					}
				}else{ //data가 없다면..
					$("#listtable .a").remove();
					$("#listtable > tbody:last").append("<tr class='a'><td colspan='3'><strong>조건에 일치하는 사람이 없습니다.</strong></td></tr>");
				}
				
				
				
			},
			error:function(request,status,error){
				alert("["+error+"] 발생!! 관리자에게 문의하세요.");
			}
			
		}); //ajax 끝
	
		
	}); //검색 버튼클릭함수 끝
	
	//2차 정보가공 함수
	function getdata(data){
		return data.name
	}
	
	//클릭 시 
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
});//document.ready 끝
	
</script>
</head>
<body>
	<form id="searchform" method="post">
		<fieldset>
			<legend id="legend1">My Matching</legend>
			<fieldset>
				<legend id="legend2">검색조건</legend>
				<div id="searchcondition">
					<!-- 지역 -->
					<label>지역</label> 
    				<select id="district" name="district">
    					<option value="0">상관없음</option>
						<option value="서울시">서울시</option>
						<option value="경기도">경기도</option>
						<option value="강원도">강원도</option>
						<option value="충청북도">충청북도</option>
						<option value="충청남도">충청남도</option>
						<option value="전라북도">전라북도</option>
						<option value="전라남도">전라남도</option>
						<option value="제주도">제주도</option>
					</select>
					
					<!-- 직업 -->
					<label>직업</label>
					<select id="job" name="job">
						<option value="0">상관없음</option>
						<option value="경영,회계,사무">경영⊙회계⊙사무</option>
						<option value="금융,보험">금융⊙보험</option>
						<option value="교육,자연과학,사회과학">교육⊙자연과학⊙사회과학</option>
						<option value="법률,소방,경찰,교도">법률⊙소방⊙경찰⊙교도</option>
						<option value="보건,의료">보건⊙의료</option>
						<option value="사회복지,종교">사회복지⊙종교</option>
						<option value="문화,예술,디자인,방송">문화⊙예술⊙디자인⊙방송</option>
						<option value="운전,운송">운전⊙운송</option>
						<option value="영업,판매">영업⊙판매</option>
						<option value="정비,청소">정비⊙청소</option>
						<option value="미용,숙박,여행,오락">미용⊙숙박⊙여행⊙오락</option>
						<option value="관리직">관리직</option>
						<option value="음식서비스">음식서비스</option>
						<option value="건설">건설</option>
						<option value="기계">기계</option>
						<option value="전지 및 전자">전지 및 전자</option>
						<option value="정보통신">정보통신</option>
						<option value="식품 가공">식품 가공</option>
						<option value="군인">군인</option>
					</select>
					
					<!-- 연봉 -->
					<label>연봉<sub>(만원)</sub></label>
					<select id="salary" name="salary">
						<option value="0">상관없음</option>
						<option value="1">3000미만</option>
						<option value="2">3000~6000</option>
						<option value="3">6000~10000</option>
						<option value="4">10000~</option>
					</select>
					
					
					<!-- 신장 -->
					<label>키<sub>(cm)</sub></label>
					<select id="height" name="height">
						<option value="0">상관없음</option>
						<option value="1">~166</option>
						<option value="2">166~171</option>
						<option value="3">171~175</option>
						<option value="4">175~178</option>
						<option value="5">178~182</option>
						<option value="6">182~</option>
					</select>
					
					<label>몸무게<sub>(kg)</sub></label>
					<select id="weight" name="weight">
						<option value="0">상관없음</option>
						<option value="1">~60</option>
						<option value="2">60~70</option>
						<option value="3">70~80</option>
						<option value="4">80~90</option>
						<option value="5">90~100</option>
						<option value="6">100~</option>
					</select>
					
					<label>종교</label>
					<select id="religion" name="religion">
						<option value="0">상관없음</option>
						<option value="기독교">기독교</option>
						<option value="천주교">천주교</option>
						<option value="불교">불교</option>
						<option value="이슬람교">이슬람교</option>
						
					</select>
					<br/><br/>
					
					
					<input type="button" value="검색하기" id="search"/>
					<input type="button" value="초기화" id="init"/>
					
				</div>
			</fieldset> <!-- 조건 fieldset 끝 -->
			<br/><br/>
			<hr/>
			
			<!-- 결과 보여주는 곳-->
			<h2>&lt;매칭 결과&gt;</h2>
			<div>
				<table  cellspacing="6" cellpadding="0" width="80%" style="margin: 0 auto;" id="listtable">
					<tr style="background-color:#e8e7d3">
						<th style="width: 5%;">No.</td>
						<th style="width: 15%;">메인 사진</td>
						<th style="width: 80%;">자기소개</td>
						
					</tr>
					<tr class="a">
						<td colspan="3"><strong>조건을 검색해주세요.</strong></td>
					</tr>
				</table>
			</div>
		</fieldset>
		
	</form>
	
	
</body>
</html>