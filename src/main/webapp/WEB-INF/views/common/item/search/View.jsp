<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.table tr td:nth-child(odd) {
	width: 23%;
}

.table tr td:nth-child(even) {
	font-weight: bold;
	text-align: right;
}

.table tr td:nth-child(2) {
	width: 20%
}

.footer {
	display: none;
}

.content {
	height: 2000px;
}

.head {
	position: relative;
}

#image {
	height: 500px;
}
img{
	height:500px;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
#carousel,#carousel div{
	height: 500px;
}

.rightDIV {
	background-color: white;
	position: absolute;
	right: 0;
	border: 0.5px solid gray;
}

#one {
	background-color: white;
	border-bottom: 0.1px solid gray;
}

#two {
	margin-top: 20px;
}

#two span:last-child {
	text-align: center;
	margin-top: 20px;
}

.right_head {
	font-size: 1.6em;
	color: black;
	font-weight: bold;
}

.right_second {
	font-size: 1.2em;
	color: gray;
}

#map {
	height: 800px;
	background-color: red;
	overflow: hidden;
	position: relative;
}

#facilities {
	position: absolute;
	bottom: -80px;
	padding: 10px 18px;
	border-radius: 4px;
	background-color: #585858;
	font-weight: bold;
	color: #fff;
	text-align: center;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}
</style>

<script type="text/javascript">
	$(function() {
		var currentPosition = parseInt($(".rightDIV").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			console.log(position);
			if (position < 790) {
				$(".rightDIV").stop().animate({
					"top" : position + currentPosition + "px"
				}, 500);
			}
		});
		var data = JSON.parse('${dto}');
		//기본 지도 뛰우기
		var mapElement = document.getElementById('map');
		mapOption = {
			center : new daum.maps.LatLng(data.y, data.x), // 지도의 중심좌표
			level : 2
		// 지도의 확대 레벨
		};
		var map = new daum.maps.Map(mapElement, mapOption);

		// 지도에 표시할 원을 생성합니다
		var circle = new daum.maps.Circle({
			center : new daum.maps.LatLng(data.y, data.x), // 원의 중심좌표 입니다 
			radius : 50, // 미터 단위의 원의 반지름입니다 
			strokeWeight : 1.75, // 선의 두께입니다 
			strokeColor : '#0958a6', // 선의 색깔입니다
			strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다		   
			fillColor : '#368de0', // 채우기 색깔입니다
			fillOpacity : 0.7
		// 채우기 불투명도 입니다   
		});

		// 지도에 원을 표시합니다 
		circle.setMap(map);

		// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
		var placeOverlay = new daum.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places(map);

		// 지도에 idle 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'idle', searchPlaces);

		// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		contentNode.className = 'placeinfo_wrap';

		// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
		addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

		// 커스텀 오버레이 컨텐츠를 설정합니다
		placeOverlay.setContent(contentNode);

		// 각 카테고리에 클릭 이벤트를 등록합니다
		addCategoryClickEvent();

		// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
		function addEventHandle(target, type, callback) {
			if (target.addEventListener) {
				target.addEventListener(type, callback);
			} else {
				target.attachEvent('on' + type, callback);
			}
		}

		// 카테고리 검색을 요청하는 함수입니다
		function searchPlaces() {
			if (!currCategory) {
				return;
			}

			// 커스텀 오버레이를 숨깁니다 
			placeOverlay.setMap(null);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			ps.categorySearch(currCategory, placesSearchCB, {
				useMapBounds : true
			});
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
				displayPlaces(data);
			} else if (status === daum.maps.services.Status.ZERO_RESULT) {
				// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

			} else if (status === daum.maps.services.Status.ERROR) {
				// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

			}
		}

		// 지도에 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			var order = document.getElementById(currCategory).getAttribute(
					'data-order');

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = addMarker(new daum.maps.LatLng(places[i].y,
						places[i].x), order);

				// 마커와 검색결과 항목을 클릭 했을 때
				// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
				(function(marker, place) {
					daum.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, places[i]);
			}
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, order) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new daum.maps.Size(27, 28), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
				spriteOrigin : new daum.maps.Point(46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new daum.maps.Point(11, 28)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new daum.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
		function displayPlaceInfo(place) {
			var content = '<div class="placeinfo">'
					+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
					+ place.place_name + '</a>';

			if (place.road_address_name) {
				content += '    <span title="' + place.road_address_name + '">'
						+ place.road_address_name
						+ '</span>'
						+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
						+ place.address_name + ')</span>';
			} else {
				content += '    <span title="' + place.address_name + '">'
						+ place.address_name + '</span>';
			}

			content += '    <span class="tel">' + place.phone + '</span>'
					+ '</div>' + '<div class="after"></div>';

			contentNode.innerHTML = content;
			placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
			placeOverlay.setMap(map);
		}

		// 각 카테고리에 클릭 이벤트를 등록합니다
		function addCategoryClickEvent() {
			var category = document.getElementById('category'), children = category.children;

			for (var i = 0; i < children.length; i++) {
				children[i].onclick = onClickCategory;
			}
		}

		// 카테고리를 클릭했을 때 호출되는 함수입니다
		function onClickCategory() {
			var id = this.id, className = this.className;

			placeOverlay.setMap(null);

			if (className === 'on') {
				currCategory = '';
				changeCategoryClass();
				removeMarker();
			} else {
				currCategory = id;
				changeCategoryClass(this);
				searchPlaces();
			}
		}

		// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
		function changeCategoryClass(el) {
			var category = document.getElementById('category'), children = category.children, i;

			for (i = 0; i < children.length; i++) {
				children[i].className = '';
			}

			if (el) {
				el.className = 'on';
			}
		}
	});
</script>

<hr />
<div class="content col col-xs-12 col-sm-6 col-sm-offset-3">
	<div class="row">
		<!-- 해더 -->
		<div class="head col col-xs-12">
			<div class="row">
				<!-- left -->
				<div class="leftDIV col-xs-12 col-sm-8">
					<div id="image" class="col col-xs-12">
						<div class="row">
							<div id="carousel" class="carousel slide col col-xs-12" data-ride="carousel">
								<div class="row">
									<div class="carousel-inner col col-xs-12">
										<div class="row">
											<!-- 반복할코드  -->
											<div class="item active col col-xs-12">
												<div class="row">
													<img class="col col-xs-12" src='<c:url value="/resources/images/main/cat.jpg"/>'/>
												</div>
											</div>
											<!-- 반복할코드  -->
										</div>			
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a class="right carousel-control" href="#carousel"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- table -->
					<div class="col-xs-12">
						<table class="table">
							<tr>
								<td>보증금/월세</td>
								<td>500/30</td>
								<td>방종류</td>
								<td>투룸</td>
							</tr>
							<tr>
								<td>관리비</td>
								<td>5만</td>
								<td>관리비포함항목</td>
								<td>기타</td>
							</tr>
							<tr>
								<td>난방종류</td>
								<td>5만</td>
								<td>입주가능일</td>
								<td>협의</td>
							</tr>
							<tr>
								<td>주차</td>
								<td>5만</td>
								<td>반려동물</td>
								<td>가능</td>
							</tr>
							<tr>
								<td>엘레베이트</td>
								<td>있음</td>
							</tr>
						</table>
					</div>
					<!-- table -->
					<h2 style="margin-top: 800px;">옵션</h2>
					<div class="col col-xs-12"
						style="border: 0.5px solid gray; margin-top: 50px"></div>
					<h2 style="margin-top: 120px">상세설명</h2>
					<div>
						<p>이렇구 저렇구 이렇구 저렇구 이렇구 저렇구</p>
					</div>

					<div id="scrollControl" class="col col-xs-12"
						style="border: 0.5px solid gray; margin-top: 50px"></div>
				</div>
				<!-- left -->
				<!-- right -->
				<div class="rightDIV col-xs-12 col-sm-4">
					<div id="one">
						<span class="right_head">월세</span><br /> <span>단기</span><br /> <span
							class="right_second">${item.address }</span><br /> <span>주차가능</span>
						<hr />
						<span class="btn btn-default col-xs-6">찜</span> <span
							class="btn btn-default col-xs-6">신고</span>
					</div>
					<div id="two">
						<hr />
						<span class="right_head">월세</span><br /> <span
							class="right_second">대표</span><br /> <span class="right_second">중개
							등록번호</span><br /> <span class="btn btn-success col-xs-12">연락처 보기</span>
					</div>
				</div>
				<!-- right -->

			</div>
			<!-- row -->
		</div>
		<!-- 해더 -->
		<!-- map -->
		<div class="col col-xs-12">
			<h2 style="margin-top: 50px;">위치 및 주변 편의시설</h2>
		</div>
		<div class="map_wrap">
			<div id="map" class="col col-xs-12">
				<ul id="category">
					<li id="BK9" data-order="0"><span class="category_bg bank"></span>
						은행</li>
					<li id="MT1" data-order="1"><span class="category_bg mart"></span>
						마트</li>
					<li id="PM9" data-order="2"><span class="category_bg pharmacy"></span>
						약국</li>
					<li id="OL7" data-order="3"><span class="category_bg oil"></span>
						주유소</li>
					<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
						카페</li>
					<li id="CS2" data-order="5"><span class="category_bg store"></span>
						편의점</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- row -->
</div>

