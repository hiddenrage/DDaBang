<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	.footer{
		display: none;
	}
	#map_head{
		width: 100%;
		border-bottom: 1px solid gray;
	}
	.btn{
		margin-left:0;
		border: none;
		border-radius: 0;
		border-left: 1px solid gray;
		height: 30px;
		width: 80px;
	}
	.dropdown{
		display: inline-block;
	}
	#menu4{
		width: 280px;
	}
	#menu4 input{
		width: 120px;
	}
	#menu4 h2{
		width: 100%;
	}
	#menu4 li input:first-child{
		margin-left: 10px;
	}
	
	#depositGTMenu{
		width: 50%;
		float: left;
	}
	#depositGTMenu .btn{
		border-left: none;
	}
	#depositLTMenu{
		width: 50%;
		float: right;
	}
	#monthlyGTMenu{
		width: 50%;
		float: left;
	}
	#monthlyGTMenu .btn{
		border-left: none;
	}
	#monthlyLTMenu{
		width: 50%;
		float: right;
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
	/*드랍다운 내부를 클릭했을때 서브메뉴가 유지하는 코드 */
	$('.dropdown').on({
	    "click": function(event) {
	      if ($(event.target).closest('.dropdown-toggle').length) {
	        $(this).data('closable', true);
	      } else {
	        $(this).data('closable', false);
	      }
	    },
	    "hide.bs.dropdown": function(event) {
	      hide = $(this).data('closable');
	      $(this).data('closable', true);
	      return hide;
	    }
	});/* 드랍다운 내부를 클릭했을때 유지하는 코드 */
	
	//최초실행했을때 실행코드
	if(window.innerWidth <= 768){
		$("#list").css('width','100%');//창이 xs 크기 일때 전체 창 찾이하기
 		$("#map").css('width','100%');//창이 xs 크기 일때 전체 창 찾이하기
 		
 		$("#list_head").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
		$("#list_content").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
		$(".list_content_content").removeClass("col-xs-4").addClass("col-xs-12");
		
		$(".list_content_image").css("height","120");
		$(".list_content_image").removeClass("col-xs-5").addClass("col-xs-4");
		$(".list_content_item .row div").css("height","30");
		$(".list_content_item").removeClass("col-xs-7").addClass("col-xs-8");
	}
	
	//실시간으로 width가져오기
	window.onresize = resize;
	
	function resize(){

	 	if(window.innerWidth <= 768){
	 		$("#list").css('width','100%');
	 		$("#map").css('width','100%');
	 		$("#searchDIV").css('text-align','center');
	 		
	 		$("#list_head").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$("#list_content").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$(".list_content_content").removeClass("col-xs-4").addClass("col-xs-12");
			
			$(".list_content_image").css("height","120");
			$(".list_content_image").removeClass("col-xs-5").addClass("col-xs-4");
			$(".list_content_item .row div").css("height","30");
			$(".list_content_item").removeClass("col-xs-7").addClass("col-xs-8");
	 	}else{
	 		$("#list").css('width','25%');
	 		$("#map").css('width','75%');
	 		$("#searchDIV").css('text-align','');
	 	
	 		$("#list").css('display','');
	 		$("#map").css('display','');
	 		
	 		$("#list_head").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$("#list_content").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$(".list_content_content").removeClass("col-xs-4").addClass("col-xs-12");
	 	}
	}
	//list버튼 클릭 했을때 발생하는 이벤트
	$("#btnList").click(function() {
		$("#map").css('display','none');
		$("#searchDIV").css('text-align','center');
		if(window.innerWidth <= 768){
			$("#list").css('width','100%');
			$("#list").css('display','');
		}else{
			$("#list").css('width','100%');
		}
		if(window.innerWidth > 768){
			$("#list_head").removeClass("col-xs-12").addClass("col-sm-8 col-sm-offset-2");
			$("#list_content").removeClass("col-xs-12").addClass("col-sm-8 col-sm-offset-2");
			$(".list_content_content").removeClass("col-xs-12").addClass("col-xs-4");
			
			$(".list_content_image").css("height","200");
			$(".list_content_image").removeClass("col-xs-4").addClass("col-xs-5");
			$(".list_content_item .row div").css("height","50");
			$(".list_content_item").removeClass("col-xs-8").addClass("col-xs-7");
			
		}
	});
	//map버튼 클릭 했을때 발생하는 이벤트
	$("#btnMap").click(function() {
		$("#map").css('display','');
		$("#searchDIV").css('text-align','');
		if(window.innerWidth <= 768){
			$("#list").css('display','none');
		}else{
			$("#list").css('width','25%');
		}
		if(window.innerWidth > 768){
			$("#list_head").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$("#list_content").removeClass("col-sm-8 col-sm-offset-2").addClass("col-xs-12");
			$(".list_content_content").removeClass("col-xs-4").addClass("col-xs-12");
			
			$(".list_content_image").css("height","120");
			$(".list_content_image").removeClass("col-xs-5").addClass("col-xs-4");
			$(".list_content_item .row div").css("height","30");
			$(".list_content_item").removeClass("col-xs-7").addClass("col-xs-8");
		}	
	});
	
	
	//기본 지도 뛰두기
	var mapElement = document.getElementById('map');
	mapOption = { 
        center: new daum.maps.LatLng(37.566, 126.9784), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };
	var map = new daum.maps.Map(mapElement, mapOption); 
	
	//주소를 좌표로 만들어줄 객체
	var geocoder = new daum.maps.services.Geocoder();
	
	//데이타를 담아줄 변수
	var mapData;
	
	//온로드 되였을때 data값 저장하기 		
	$.ajax({
		url : '<c:url value="/Search/MapList.bbs"/>',
		type : 'POST',
		dataType : 'json',
		async : false,
		success : function(result){
			mapData = result;	
		},
		error : function(request,err){
			console.log('상태코드',request.status);
			console.log('서버로받은 데이타',request.responseText);
			console.log('에러',err);
		}
	});	
		
	// 마커 클러스터헤즐 객체를 생성합니다 
  	var clusterer = new daum.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 6, // 클러스터 할 최소 지도 레벨 
        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
    });
	
	//지도 마크 클러스터화 해주기 위한 마크를 담을 배열
	var markers=[];
	//list에 출력할 변수 선언
	var list="";
	//자동검색을 위한 배열
	var availableTags =[];
	//검색해온 count수
	var count=0;
	//반복문 돌면서 data의 주소로 마크 찍고 클러스터화해주기		
	$.each(mapData,function(index,value){
		count++;			
		// 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
        var marker = new daum.maps.Marker({
                position : new daum.maps.LatLng(value.y, value.x)
            });
		//지도 마크 클러스터화 해주기 위한 객체에 마크를 담기
        markers.push(marker);		  			
		//자동검색을 위한 배열
		availableTags.push(value.address);			
	});
		
	// 클러스터러에 마커들을 추가합니다
    clusterer.addMarkers(markers);
	
	//온로드 되였을때 list 뿌려주는 전체데이타 불러오기
	var url = '<c:url value="/Search/MapList.bbs"/>';
	
	function onLoadList(url){
		console.log("클릭");
		$.ajax({
			url : url,
			type : 'GET',
			dataType : 'json',
			async : false,
			success : function(result){
				successList(result);	
			},
			error : function(request,err){
				console.log('상태코드',request.status);
				console.log('서버로받은 데이타',request.responseText);
				console.log('에러',err);
			}
		});	
	}
	onLoadList(url);
	//onLoadList함수 ajax성공 했을때 실행하는 함수
	function successList(data){
		list="";
		if(data.length>0){			
			$.each(data,function(index,value){
				if(index < data.length-1){
					setList(value);
				}else{
					$("#pagingString").html(value.pagingString);
				}
			});
		}else{
			list+="<div style='text-align:center;width:100%;'><h2>데이타가 없습니다<h2></div>";
		}
		$("#list_content .row").html(list);
	}
	//페이징 클릭이벤트
	$(document).on("click",".pagingClick",function(){
		var url = $(this).prop('title');		
		var tagUrl = "<c:url value='"+url+"'/>"
		onLoadList(tagUrl);
    });
		
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
		
	//list해더에 개수 알려주기
	$("#count").html(count);
	
	//담은 list를 그려주기
	$("#list_content .row").html(list);
	
	//자동 검색을 위한 autocomplete
	$( "#searchAddress" ).autocomplete({
      source: availableTags
    });
	
	//list아이템을 클릭했을때 상세페이지로 이동
	$(document).on("click",".list_content_content",function(){		
		var no = $(this).attr('title');		
		location.href = "<c:url value='/Search/View.bbs?no="+no+"'/>";	
	});
	
	//gps작용해주는 변수
	var gpsMarker;
	//list아이템을 마우스 hover했을때 이벤트발생
	$(".list_content_content").hover(function() {
		var x = $(this).children("div").children("div").children("div").children("input:eq(0)").val();
		var y = $(this).children("div").children("div").children("div").children("input:eq(1)").val();
		
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
	},function(){
		gpsMarker.setMap(null);
	});
		
		
 	// 마커 클러스터러에 클릭이벤트를 등록합니다
    // 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
    // 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
    daum.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
        // 현재 지도 레벨에서 1레벨 확대한 레벨
        var level = map.getLevel()-2;
        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
        if(level >= 6){
        	map.setLevel(level, {anchor: cluster.getCenter()});
        	// 좌표를 주소로 바꿔서 이벤트 발생
        	var latlnt = new daum.maps.LatLng(cluster.getCenter().jb, cluster.getCenter().ib);
        	searchDetailAddrFromCoords(latlnt, function(result, status){
        		if (status === daum.maps.services.Status.OK) {
        			var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
                    detailAddr += result[0].address.address_name;
                    
                    console.log(detailAddr);
                  //받아온 주소로 이벤트 처리 
                  
                  
                }
        	});    	
        }
    });
 	// 좌표로 주소 정보를 요청합니다
    function searchDetailAddrFromCoords(coords, callback) {
 		console.log(coords.getLng(), coords.getLat());
        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);         
    }
 	
 	//검색 버튼을 눌렀을때 발생하는 이벤트
 	$("#searchBtn").click(function() {
		if($("#searchAddress").val()==""){
			alert("주소가 비여있습니다");
		}else{
			addressSearch($("#searchAddress").val());
		}
	});
 	//검색창에서 앤터키 눌었을때
 	$("#searchAddress").on("keydown",function(e) {
 		var keyCode = e.which;
        if (keyCode === 13) { 
        	
			if($("#searchAddress").val()==""){
				alert("주소가 비여있습니다");
			}else{
				addressSearch($("#searchAddress").val());
			}
        }        
	});
 	
 	// 주소로 검색합니다	
	function addressSearch(address) {
		geocoder.addressSearch(address, function(result, status) {
		    // 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {

		        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        if(address.length <=3){
		        	map.setLevel(10);
		        }else if(address.length >3 && address.length <=8){
		        	map.setLevel(8);
		        }else{
		        	map.setLevel(6);
		        }
		        map.setCenter(coords);
	
		    } else{
		    	alert("없는 주소 입니다");
		    }
		}); 
		$("#searchAddress").val('');
	}
	
	
});
</script>
<!-- body내용 -->
<div id="map_head">
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown1">
	 		<span>매물종류</span><span class="caret"></span>
	 	</button>	 	
	 	<ul id="menu1" class="dropdown-menu">
			<li id="all"><a href="#">월세+전세</a></li>
			<li id="monthly"><a href="#">월세</a></li>
			<li id="charter"><a href="#">전세</a></li>		
		</ul>			
	</div>	<!-- 1 -->

<div class="dropdown">
	<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown2">
 		<span>거래종류</span><span class="caret"></span>
 	</div>	 	
 	<ul id="menu2" class="dropdown-menu">
		<li id="all"><a href="#">전체</a></li>
		<li id="monthly"><a href="#">중개</a></li>
		<li id="charter"><a href="#">직거래</a></li>		
	</ul> 		
</div><!-- 2 -->

<div class="dropdown">
	<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown3">
 		<span>방종류</span><span class="caret"></span>
 	</div>	 	
 	<ul id="menu3" class="dropdown-menu">
		<li id="all"><a href="#">전체</a></li>
		<li id="monthly"><a href="#">원룸</a></li>
		<li id="charter"><a href="#">투룸</a></li>
		<li id="charter"><a href="#">오피스텔</a></li>
		<li id="charter"><a href="#">아파트</a></li>		
	</ul> 		
</div><!-- 3 -->

<div class="dropdown">
	<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown3">
 		보증금<span class="caret"></span>
 	</div>	 	
 	<ul id="menu4" class="dropdown-menu">
 		<li class="dropdown-header">보증금 (ex. 10,000만원 = 1억원)</li>
 		<li>
 			<input value="0" type="text" id="depositGT"/>
 			~
 			<input value="0" type="text" id="depositLT"/>
 		</li>
 		<li class="divider"></li>			
		<li>
			<div id="depositGTMenu">
				<h2 class="btn btn-default">10</h2><br/>
				<h2 class="btn btn-default">20</h2><br/>
				<h2 class="btn btn-default">30</h2><br/>
				<h2 class="btn btn-default">40</h2><br/>
				<h2 class="btn btn-default">50</h2><br/>
				<h2 class="btn btn-default">60</h2><br/>
				<h2 class="btn btn-default">70</h2><br/>
				<h2 class="btn btn-default">80</h2><br/>
				<h2 class="btn btn-default">90</h2><br/>
				<h2 class="btn btn-default">무제한</h2><br/>
			</div> 
			<div id="depositLTMenu">
				<h2 class="btn btn-default">10</h2><br/>
				<h2 class="btn btn-default">20</h2><br/>
				<h2 class="btn btn-default">30</h2><br/>
				<h2 class="btn btn-default">40</h2><br/>
				<h2 class="btn btn-default">50</h2><br/>
				<h2 class="btn btn-default">60</h2><br/>
				<h2 class="btn btn-default">70</h2><br/>
				<h2 class="btn btn-default">80</h2><br/>
				<h2 class="btn btn-default">90</h2><br/>
				<h2 class="btn btn-default">무제한</h2><br/>
			</div>
		</li>	
	</ul> 		
</div><!-- 4 -->

<div class="dropdown">
	<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown3">
 		월세<span class="caret"></span>
 	</div>	 	
 	<ul id="menu4" class="dropdown-menu">
 		<li class="dropdown-header">월세 (ex. 10,000만원 = 1억원)</li>
 		<li>
 			<input value="0" type="text" id="depositGT"/>
 			~
 			<input value="0" type="text" id="depositLT"/>
 		</li>
 		<li class="divider"></li>			
		<li>
			<div id="monthlyGTMenu">
				<h2 class="btn btn-default">10</h2><br/>
				<h2 class="btn btn-default">20</h2><br/>
				<h2 class="btn btn-default">30</h2><br/>
				<h2 class="btn btn-default">40</h2><br/>
				<h2 class="btn btn-default">50</h2><br/>
				<h2 class="btn btn-default">60</h2><br/>
				<h2 class="btn btn-default">70</h2><br/>
				<h2 class="btn btn-default">80</h2><br/>
				<h2 class="btn btn-default">90</h2><br/>
				<h2 class="btn btn-default">무제한</h2><br/>
			</div> 
			<div id="monthlyLTMenu">
				<h2 class="btn btn-default">10</h2><br/>
				<h2 class="btn btn-default">20</h2><br/>
				<h2 class="btn btn-default">30</h2><br/>
				<h2 class="btn btn-default">40</h2><br/>
				<h2 class="btn btn-default">50</h2><br/>
				<h2 class="btn btn-default">60</h2><br/>
				<h2 class="btn btn-default">70</h2><br/>
				<h2 class="btn btn-default">80</h2><br/>
				<h2 class="btn btn-default">90</h2><br/>
				<h2 class="btn btn-default">무제한</h2><br/>
			</div>
		</li>	
	</ul> 		
</div><!-- 5 -->

<div class="dropdown">
	<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown6">
 		추가옵션<span class="caret"></span>
 	</div>	 	
 	<ul id="menu6" class="dropdown-menu">
 		<li class="dropdown-header">추가옵션</li>
 		<li class="divider"></li>
		<li>
			<div style="margin-left: 30px">
				<input type="checkbox" id="a" value="주차가능" name="inter"/>&nbsp;&nbsp;&nbsp;<label for="a">주차가능</label><br/>
				<input type="checkbox" id="b" value="주차가능" name="inter"/>&nbsp;&nbsp;&nbsp;<label for="b">반려동물</label><br/>
				<input type="checkbox" id="c" value="주차가능" name="inter"/>&nbsp;&nbsp;&nbsp;<label for="c">대기임대</label><br/>
				<input type="checkbox" id="d" value="주차가능" name="inter"/>&nbsp;&nbsp;&nbsp;<label for="d">360매물</label><br/>
			</div>
		</li>			
	</ul> 		
</div><!-- 6 -->

	<div id="btnMap" class="btn btn-default dropdown listNmap">지도</div>
	<div id="btnList" class="btn btn-default dropdown listNmap">리스트</div>		
</div><!-- map_head -->

<!-- search -->

<div id="searchDIV">
<div>		
	<input id="searchAddress" type="text" placeholder="관심지역 또는 매물 번호를 검색해보세요" class="form-control" />
	<button id="searchBtn" type="button" class="btn btn-primary btn-xs">방검색</button>	
</div>	
</div>

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