<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style>
	#map{
		height: 100%;
	}
</style>

<script>
	$(function() {
		$("#datepicker").datepicker({minDate : 0});
		$("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");

		var mapElement = document.getElementById('map');
		mapOption = {
			center : new daum.maps.LatLng(37.566, 126.9784), // 지도의 중심좌표
			level : 10 // 지도의 확대 레벨
		};
		var map = new daum.maps.Map(mapElement, mapOption);
		var geocoder = new daum.maps.services.Geocoder();
		var postcode;//우편번호 변수 설정

		//주소 API

		/*  $('#uploadroom').click(function(){
			location.href="<c:url value='/Deal/View.bbs'/>";
		}); */

		$('.orgBtn').on("click", function() {
			new daum.Postcode({
				oncomplete : function(data) {
					var value;
					var jusoSangsae = "";
					var str = data.jibunAddress;
					str = str.split(" ");
					if (data.userSelectedType == "J") {
						for (var i = 0; i < str.length; i++) {
							if (str[i] == data.bname) {
								value = i;
							}
						}
					} else {
						str = data.roadAddress;
						str = str.split(" ");
						for (var i = 0; i < str.length; i++) {
							if (str[i] == data.roadname) {
								value = i;
							}
						}
					}
					for (var i = value; i < str.length; i++) {
						jusoSangsae = jusoSangsae + str[i];
					}
					addr = data.sido + " " + data.sigungu + " " + jusoSangsae;
					postcode = data.postcode;
					$("#address").val(addr);
					addressSearch(data.address);
				},
				shorthand : false
			}).open();
		});

		function searchDetailAddrFromCoords(coords, callback) {
			console.log(coords.getLng(), coords.getLat());
			geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 주소로 검색합니다	
		function addressSearch(address) {
			geocoder.addressSearch(address,function(result, status) {
						console.log(status);
						// 정상적으로 검색이 완료됐으면 
						if (status === daum.maps.services.Status.OK) {
							var coords = new daum.maps.LatLng(result[0].y,result[0].x);
							$("#x").val(coords.getLng());
							$("#y").val(coords.getLat());
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							if (address.length <= 3) {
								map.setLevel(10);
							} else if (address.length > 3
									&& address.length <= 8) {
								map.setLevel(8);
							} else {
								map.setLevel(6);
							}
							map.setCenter(coords);

						} else {
							alert("없는 주소 입니다");
						}
					});
		}
	});
</script>


<div class="container">
	<div class="container">
		<h1>방 등록하기</h1>
		<p style="background-color: gray;">
			- 등록한 방 정보는 직거래 매물로 등록되며, 최대 30일까지 노출 후 거래완료 상태로 전환됩니다. </br>- 방 등록이 완료된
			매물은 방 정보와 회원정보(연락처, 메일 등)와 함께 노출됩니다. </br>- 거래완료된 매물을 완료처리하지 않은 경우 허위매물
			등록으로 이용이 제한될 수 있습니다 </br>- 매물 관리규정에 위배 되거나 신고된 매물은 비공개 또는 삭제처리되며 경고 및
			제재조치를 받을 수 있습니다. </br>- 부동산 중개사는 직거래 매물을 등록할 수 없으며, 공인중개사회원 가입 후 이용하시기
			바랍니다.
		</p>
	</div>
	<h1>위치정보</h1>
	<!-- 위치정보 테이블 시작 -->
	<form method="post" class="form-inline" action="<c:url value='/Deal/Write.bbs'/>">
		<input type="hidden" id="x" name="x"/>
		<input type="hidden" id="y" name="y"/>
		<div class="container-fluid">
			<table style="margin-top: 10px; border-top: 2px solid black; margin-bottom: 30px; border-bottom: 2px solid black; ">
				<tr>
					<td rowspan="4"
						style="text-align: center; background-color: gray; width: 100px;">주소</td>
					<td style="width: 600px;" class="form-inline">
						<p style="margin-left: 10px; color: gray;">도로명,건물명,지번에 대해 통합검색이 가능합니다.</p> 
						<input type="text" style="margin-top: 10px; margin-left: 10px; width: 300px;"
						placeholder="예)금천구 가산동" class="form-control"> 
						<!-- 조회하기 -->
						<button type="button" value="button타입" class="orgBtn btn btn-primary" id="lookup">조회하기</button> 
						<!--주소명검색 시작 -->
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px; margin-top: 10px" name="address" id="address">
							</div>
						</div> <!-- 주소명검색  끝-->
					</td>
					<!-- 주소 검색시 지도 뿌려주는곳 -->
					<td rowspan="4" style="width: 480px;height: 192px">
						<div id="map"></div>
					</td>
				<tr>
					<!-- 상세주소(동,호수) -->
					<td>
						<input style="margin-top: 10px; width: 300px; margin-left: 10px;"
							type="text" placeholder="상세주소를 입력하세요(동,호수)" name="address_detail"
							id="address_detail">
					</td>
				</tr>
				<tr>
					<td><p style="color: red; cursor: pointer; text-decoration: underline; margin-left: 10px;">
							주소가 검색되지 않으세요?</p></td>
				</tr>
			</table>
		</div>
		<!-- 위치정보 테이블 끝 -->
		<!-- 기본정보 테이블 시작 -->
		<h1>기본정보</h1>
		<div class="container-fluid">
			<table class="table table-bordered"
				style="margin-top: 10px; margin-bottom: 30px; border-top: 2px solid black; border-bottom: 2px solid black; border-collapse: separate;">
				<tr>
					<th
						style="background-color: gray; text-align: center; line-height: 30px; height: 30px;">방
						종류</th>
					<td colspan="3" style="padding-left: 10px; position: relative;">
						<select style="width: 150px" class="form-control" id="kind"
						name="kind">
							<option>방 종류선택</option>
							<option>원룸</option>
							<option>1.5룸</option>
							<option>투룸</option>
							<option>쓰리룸</option>
					</select>
					</td>
				</tr>

				<tr>
					<th style="background-color: gray; text-align: center; line-height: 100px; height: 100px;"1" >거래종류</th>
					<td colspan="3">
						<div style="margin-bottom: 15px;">
							<span class="tag">전세</span> <input type="text"
								class="form-control" style="width: 100px; margin-left: 15px;"
								value="전세">&nbsp;&nbsp; <span>만원</span>
						</div>
						<div>
							<span class="tag">월세</span> <input type="text"
								class="form-control" style="width: 100px; margin-left: 15px;"
								value="월세" placeholder="ex)500/30">&nbsp;&nbsp;<span>만원</span>
						</div>
						<div style="color: #ef4351;">
							<span style="font-size: 0.7em">(예치금이 있는 경우 보증금 입력란에 필히
								예치금을 입력 하세요. - 미 입력시 허위 매물로 적발됩니다.)</span>
						</div>
					</td>
				</tr>
				<tr style="border-bottom: 2px solid black">
					<th
						style="background-color: gray; text-align: center; line-height: 100px; height: 100px;"
						rowspan="2">건물 층수</th>
					<td>
						<div>
							<span style="margin-right: 10px;">건물층수</span> <select
								style="width: 150px" class="form-control" id="house_floor"
								name="house_floor">
								<option value="">건물 층수 선택</option>
								<option value="1">1층</option>
								<option value="2">2층</option>
								<option value="3">3층</option>
								<option value="4">4층</option>
								<option value="5">5층</option>
								<option value="6">6층</option>
								<option value="7">7층</option>
								<option value="8">8층</option>
								<option value="9">9층</option>
								<option value="10">10층</option>
								<option value="11">11층</option>
								<option value="12">12층</option>
								<option value="13">13층</option>
								<option value="14">14층</option>
								<option value="15">15층</option>
								<option value="16">16층</option>
								<option value="17">17층</option>
								<option value="18">18층</option>
								<option value="19">19층</option>
								<option value="20">20층</option>
								<option value="21">21층</option>
								<option value="22">22층</option>
								<option value="23">23층</option>
								<option value="24">24층</option>
								<option value="25">25층</option>
								<option value="26">26층</option>
								<option value="27">27층</option>
								<option value="28">28층</option>
								<option value="29">29층</option>
								<option value="30">30층</option>
							</select>
						</div>
						<hr />
						<div>
							<span style="margin-right: 10px;">해당층수</span> <select
								style="width: 150px" class="form-control" id="select_floor"
								name="select_floor">
								<option value="">해당 층수 선택</option>
								<option value="반지">반지층</option>
								<option value="옥탑">옥탑</option>
								<option value="1">1층</option>
								<option value="2">2층</option>
								<option value="3">3층</option>
								<option value="4">4층</option>
								<option value="5">5층</option>
								<option value="6">6층</option>
								<option value="7">7층</option>
								<option value="8">8층</option>
								<option value="9">9층</option>
								<option value="10">10층</option>
								<option value="11">11층</option>
								<option value="12">12층</option>
								<option value="13">13층</option>
								<option value="14">14층</option>
								<option value="15">15층</option>
								<option value="16">16층</option>
								<option value="17">17층</option>
								<option value="18">18층</option>
								<option value="19">19층</option>
								<option value="20">20층</option>
								<option value="21">21층</option>
								<option value="22">22층</option>
								<option value="23">23층</option>
								<option value="24">24층</option>
								<option value="25">25층</option>
								<option value="26">26층</option>
								<option value="27">27층</option>
								<option value="28">28층</option>
								<option value="29">29층</option>
								<option value="30">30층</option>
							</select>
						</div>
					</td>
					<th style="text-align: center; line-height: 50px;"><span>건물크기
							</br> (1P=3.3058㎡)
					</span></th>
					<td style="width: 350px">
						<div class="form-group" style="padding-top: 15px">
							<table>
								<tr>
									<td><span>공급 면적</span></td>
									<td><input type="text" class="form-control"
										id="supply_area" name="supply_area"></td>
									<td><span>평(㎡)</span></td>
								</tr>
							</table>
						</div>
						<hr />
						<div>
							<table>
								<tr>
									<td><span>전용 면적</span></td>
									<td><input type="text" class="form-control" id="use_area"
										name="use_area"></td>
									<td><span>평(㎡)</span></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<h1>추가정보</h1>
		<div class="container-fluid">
			<div class="form-group">
				<table class="table table-bordered table_align"
					style="margin-bottom: 30px;">
					<tr>
						<th rowspan="2" style="text-align: center; height: 70px; line-height: 70px; width: 100px;">관리비</th>
						<td colspan="3">
							<input type="checkbox" style="margin-left: 15px" id="moneyok" name="manage" value="있음" />&nbsp;&nbsp;있음 
							<input type="text" class="form-control" style="width: 100px; margin-left: 15px;" value="만원" name="manage_money">&nbsp;&nbsp;만원
							<input type="checkbox" style="margin-left: 15px" id="moneyno" name="manage" value="없음" />&nbsp;&nbsp;없음
						</td>
					</tr>
					<tr>
						<td style="font-size: 0.8em" colspan="3"><span>관리비포함
								항목 선택:</span> <input type="checkbox" style="margin-left: 5px"
							id="internet" name="manage_detail" value="인터넷" />&nbsp;&nbsp;인터넷
							<input type="checkbox" style="margin-left: 15px" id="tv"
							name="manage_detail" value="유선TV" />&nbsp;&nbsp;유선TV <input
							type="checkbox" style="margin-left: 15px" id="clean"
							name="manage_detail" value="청소비" />&nbsp;&nbsp;청소비 <input
							type="checkbox" style="margin-left: 15px" id="water"
							name="manage_detail" value="수도세" />&nbsp;&nbsp;수도세 <input
							type="checkbox" style="margin-left: 15px" id="gas"
							name="manage_detail" value="도시가스" />&nbsp;&nbsp;도시가스 <input
							type="checkbox" style="margin-left: 15px" id="electric"
							name="manage_detail" value="전기세" />&nbsp;&nbsp;전기세</td>
					</tr>
					<tr>
						<th style="text-align: center; height: 10px; line-height: 10px;">주차
							여부</th>
						<td><input type="checkbox" style="margin-left: 15px" id="pakingok" name="parking" value="가능">&nbsp;&nbsp;가능 
							<input type="text" class="form-control" style="width: 100px; margin-left: 15px;" name="parking_pay">&nbsp;&nbsp;만원 
							<input type="checkbox" style="margin-left: 15px" id="parkingno" name="parking" value="불가능">&nbsp;&nbsp;불가능
							</td>
						<th>난방 종류</th>
						<td><select style="width: 150px" class="form-control"
							id="heating" name="heating">
								<option value="난방종류선택">난방종류선택</option>
								<option value="중앙 난방">중앙 난방</option>
								<option value="개별 난방">개별 난방</option>
								<option value="지역 난방">지역 난방</option>
						</select></td>
					</tr>
					<tr>
						<th>엘레베이터</th>
						<td><input type="checkbox" style="margin-left: 15px"
							id="elevatorok" name="elevator" value="있음">&nbsp;&nbsp;있음
							<input type="checkbox" style="margin-left: 15px" id="elevatorno"
							name="elevator" value="없음">&nbsp;&nbsp;없음</td>
						<th>반려동물</th>
						<td><input type="checkbox" style="margin-left: 15px"
							id="animalok" name="animal" value="가능">&nbsp;&nbsp;가능 <input
							type="checkbox" style="margin-left: 15px" id="animalno"
							name="animal" value="불가능">&nbsp;&nbsp;불가능</td>
					</tr>
					<tr>
						<th>입주가능일</th>
						<td colspan="3">
							<input type="text" id="datepicker"> 
							<input type="checkbox" style="margin-left: 15px" id="moveinok" name="movein" value="즉시 입주">&nbsp;&nbsp;즉시 입주 
							<input type="checkbox" style="margin-left: 15px" id="moveinno" name="movein" value="날짜 협의">&nbsp;&nbsp;날짜 협의
							</td>
					</tr>
					<tr>
						<th>옵션항목</th>
						<td colspan="3">
							<input type="checkbox" style="margin-left: 15px" id="aircon" name="selected_option" value="에어컨">&nbsp;&nbsp;에어컨
							<input type="checkbox" style="margin-left: 15px" id="washer" name="selected_option" value="세탁기">&nbsp;&nbsp;세탁기 
							<input type="checkbox" style="margin-left: 15px" id="bed" name="selected_option" value="침대">&nbsp;&nbsp;침대 
							<input type="checkbox" style="margin-left: 15px" id="desk" name="selected_option" value="책상">&nbsp;&nbsp;책상
							<input type="checkbox" style="margin-left: 15px" id="dressroom" name="selected_option" value="옷장">&nbsp;&nbsp;옷장 
							<input type="checkbox" style="margin-left: 15px" id="tv" name="selected_option" value="TV">&nbsp;&nbsp;TV 
							<input type="checkbox" style="margin-left: 15px" id="shoesroom" name="selected_option" value="신발장">&nbsp;&nbsp;신발장 
							<input type="checkbox" style="margin-left: 15px" id="Refrigerator" name="selected_option" value="냉장고">&nbsp;&nbsp;냉장고 
							<input type="checkbox" style="margin-left: 15px" id="gasrange" name="selected_option" value="가스레인지">&nbsp;&nbsp;가스레인지 
							<input type="checkbox" style="margin-left: 15px" id="induction" name="selected_option" value="인덕션">&nbsp;&nbsp;인덕션 
							<input type="checkbox" style="margin-left: 15px" id="microwave" name="selected_option" value="전자레인지">&nbsp;&nbsp;전자레인지 
							<input type="checkbox" style="margin-left: 15px" id="doorlock" name="selected_option" value="전자도어락">&nbsp;&nbsp;전자도어락 
							<input type="checkbox" style="margin-left: 15px" id="bidet" name="selected_option" value="비데">&nbsp;&nbsp;비데
						</td>
					</tr>
				</table>
			</div>
			<h1>상세 설명</h1>
			<table class="table table-bordered table_align"
				style="margin-bottom: 30px;">
				<tr>
					<th>방 제목</th>
					<td><input style="width: 820px" type="text" id="title"
						name="title" placeholder="예) 홍대역 도보5분거리, 혼자살기 좋은방 입니다."></td>
				</tr>
				<tr>
					<th>상세 설명</th>
					<td><textarea id="content" name="content" rows="3" cols="120"
							placeholder="방에대한 추가 설명을 적어주세요 
	                  	홈페이지,블로그,SNS,메신져ID,전화번호 등. 방정보에 관련된 내용 이외에는 넣을수 없습니다</br>
	                  	중개수수료 언급을 할 수 없습니다.(중개수수료,공짜,무료,반값 등)"></textarea>
					</td>
				</tr>
				<tr>
					<th>비 공개 메모</th>
					<td><textarea rows="10" cols="120"></textarea></td>
				</tr>
			</table>
			<h1 style="border-bottom-style: solid;">사진업로드</h1>
			<div class="container">
				<p style="border: red 1px solid; padding: 10px 10px 10px 10px">
					- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800픽셀)</br> - 사진 용량은 사진 1장당 10MB까지
					등록이 가능합니다.</br> - 사진은 최소 3장 이상 등록해야하며, 최대 15장까지 권장합니다. 그 이상 등록할 경우 업로드
					시간이 다소 지연될 수 있습니다.
				</p>
			</div>
			<textarea rows="10" cols="170"></textarea>

			<div style="text-align: center;">
				<button type="button" class="btn btn-danger"
					style="width: 200px; height: 50px;" id="cancle" name="cancle">취소</button>
				<input type="submit" class="btn btn-primary"
					style="width: 200px; height: 50px;" id="uploadroom"
					name="uploadroom" value="방 올리기" />
			</div>
		</div>
	</form>
</div>
