<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	.footer{
		display: none;
	}
	
	 .listNmap{	 	
	 	display: inline-block;
	 	float: right;	 	
	 }
	@media all and (max-width: 768px) {
		.listNmap{
			float:none;
		}
	 }
	 #map{	 	
	 	height: 900px;
	 	background-color: red;
	 	width: 75%;
	 }
	 #map_content{
	 	height: 100%;
	 	position: relative;	 	
	 }
	 #list{	 
	 	width:25%;	
	 	height: 900px;
	 	position: absolute;
	 	top: 0;
	 	right: 0;
	 	background-color: white;
	 	overflow:scroll;
	 }
	 #list .row{
	 	position: relative;
	 	height: 100%;
	 }
	 #pagingString{
	 	position: absolute;
	 	bottom: 0;
	 }
	 
	#list_head{
	 	border: 0.5px solid gray;
	 	border-bottom: 0;
	 }	 
	 #list_head span{
	 	font-size: 2em;
	 }
	 .list_content{
	 	height: 100%;
	 }	 
	 .list_content_content{
	 	cursor: pointer;
	 }
	 .list_content_image{
	 	height: 120px;
	 	background-size: 100% 100%;
	 	background-repeat: no-repeat;
	 }
	 .list_content_item .row div{
	 	height: 30px;
	 	line-height: 30px;	 	
	 	text-align: center;
	 	text-align: left;
	 }
	 .list_content_item .row div:first-child{
	 	font-size: 1.6em;
	 }
	 #searchDIV{
	 	width: 100%;
	 	height:40px;
	 }

	 #searchDIV button{
	 	width: 50px;
	 	height:40px;
	 	display: inline-block;
	 }
	 #searchDIV input{
	 	width: 250px;
	 	height:41px;
	 	display: inline-block;
	 }

</style>
	

<script>

$(function() {
	
	$("#write").click(function(){
		location.href="<c:url value='/Deal/Write.bbs'/>";
	});	
	
	//기본 지도 뛰두기
	var mapElement = document.getElementById('map');
	mapOption = { 
        center: new daum.maps.LatLng(37.566, 126.9784), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };
	var map = new daum.maps.Map(mapElement, mapOption); 
	//데이타 	
	var data = JSON.parse('${data}');	
	var list="";
	var count=0;

	$.each(data,function(index,value){
		count++;
		var marker = new daum.maps.Marker({
            position : new daum.maps.LatLng(value.y, value.x),
            map:map
        });
		var content = '<div class="wrap">' + 
        			 	'<div class="info">' + 
        					'<div style="color:black;font-size:1.4em;">주소</div>' + 
        					'<div style="width:200px">' +          				
        						'<div style="width:100%;color:blue">'+value.address+'</div>' +          
        					'</div>' + 
        				'</div>' +    
        			  '</div>';
		
		// 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new daum.maps.InfoWindow({
	        content: content // 인포윈도우에 표시할 내용
	    });
		
	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		
	    setList(value);	    	   	    
	});
	//담은 list를 그려주기
	$("#list_content .row").html(list);
	 //리스트 뷰 그려주는 함수	
	function setList(value) {
		list+='<div title="'+value.no+'" class="col col-xs-12 list_content_content">';        
	   		list+='<div class="row">';
	   			list+='<div class="col col-xs-4 list_content_image"';
	   			list+=' style="background-image: url(\'<c:url value="/resources/images/main/cat.jpg"/>\');"></div>';				
	   		  		list+='<div class="col col-xs-8 list_content_item">';
	   		 			list+='<div class="row">';
	   		 			list+='<div class="col-xs-12">'+value.kind+'</div>';
	   		 			list+='<div class="col-xs-12">'+value.manage_money+'</div>';
	   		 			list+='<div class="col-xs-12">'+value.parking+'</div>';
	   		 			list+='<div class="col-xs-12">'+value.content+'</div>';
	   		 			list+='<input type="hidden" value="'+value.x+'"/>';
	   		 			list+='<input type="hidden" value="'+value.y+'"/>';	   		 
				list+='</div>';
			  list+='</div>';
			 list+='</div>';
		 list+='</div>';	
	}
	//list아이템을 클릭했을때 상세페이지로 이동
	$(document).on("click",".list_content_content",function(){		
		var no = $(this).attr('title');		
		location.href = "<c:url value='/Search/View.bbs?no="+no+"'/>";	
	});
	
	//list해더에 개수 알려주기
	$("#count").html(count);
	
	//gps작용해주는 변수
	var gpsMarker;
	//list아이템을 마우스 hover했을때 이벤트발생
	$(".list_content_content").hover(function() {	
		var x = $(this).children("div").children("div").children("div").children("input:eq(0)").val();
		var y = $(this).children("div").children("div").children("div").children("input:eq(1)").val();
		var coords = new daum.maps.LatLng(y,x);
		
		var imageSrc = '<c:url value="/resources/images/main/gps.gif" />', // 마커이미지의 주소입니다    
	   		imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
	    	imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
	   	 	markerPosition = new daum.maps.LatLng(y, x); // 마커가 표시될 위치입니다

		// 마커를 생성합니다
			gpsMarker = new daum.maps.Marker({
		    position: markerPosition, 
		    image: markerImage // 마커이미지 설정 
		});
	
		// 마커가 지도 위에 표시되도록 설정합니다
		gpsMarker.setMap(map);
		map.setCenter(coords);
	},function(){
		gpsMarker.setMap(null);
	});
	 
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}

	
	
	
});
</script>
<!-- body내용 -->
<div id="write" class="btn btn-success btn-bg">방등록</div>
<div id="map_content">
	<div id="map"></div>
	
	<div id="list" class="col col-xs-12">
		<div class="row">
			<div id="list_head" class="col col-xs-12 bg-primary">
				<span>검색결과</span><span id="count"></span>
			</div>
			<div id="list_content" class="col col-xs-12">
				<div class="row">
				<!-- 반복할코드 -->
						
		   		<!-- 반복할코드 -->		   			   
				</div>
			</div>
			<div id="pagingString" class="col col-xs-12"></div>
		</div>
	</div>
</div>
<!-- body내용 -->