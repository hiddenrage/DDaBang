<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<style>
	.dropdown{
		display: inline-block;
	}
	h2{
		width: 100%;
		margin-top: 0px;
	}
	label {
		width: 60%;
	}
	label:hover {
		cursor: pointer;
	}
	.btn{
		margin-left:0;
		border: none;
		border-radius: 0;
		border-left: 1px solid gray;
		height: 30px;
		width: 80px;
	}
	.list{
		display:inline-block;
		float: right;
	}
	 @media all and (max-width: 768px) {
			.list{
				float:none;
			}
	 }
	 .last .row div{
	 	height:30px;
	 	line-height:30px;
	 	text-align: center;
	 	text-align: left;
	 }
	
}

</style>
<script>
	$(function() {
		
		$('#btnList').click(function() {
			$('#map').css('display','none');			
			$('#list').removeClass('col-sm-3').addClass('col-xs-12');	
			$('#listItem').removeClass('col-xs-12').addClass('col-sm-8 col-sm-offset-2');
			$('.gride').removeClass('col-xs-12').addClass('col-xs-4');
			$('.first').removeClass('col-xs-4').addClass('col-xs-12');
			$('.last').removeClass('col-xs-8').addClass('col-xs-12');	
			$('.first').css('height','200px');
			$('.last div div').css('text-align','').css('text-align','center');			
		});
		$('#btnMap').click(function() {
			$('#map').css('display','');
			$('#list').removeClass('col-xs-12').addClass('col-sm-3');
			$('#listItem').removeClass('col-sm-8 col-sm-offset-2').addClass('col-xs-12');
			$('.gride').removeClass('col-xs-4').addClass('col-xs-12');
			$('.first').removeClass('col-xs-12').addClass('col-xs-4');
			$('.last').removeClass('col-xs-12').addClass('col-xs-8');
			$('.first').css('height','120px');
			$('.last div div').css('height','30px').css('line-height','30px');	
			$('.last div div').css('text-align','left');
		});
		
		/* 드랍다운 내부를 클릭했을때 서브메뉴가 유지하는 코드 */
		$(function() {
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
		      });
		  });/* 드랍다운 내부를 클릭했을때 유지하는 코드 */
		
		$('#depositLgMenu h2').click(function() {
			$('#depositLg').val($(this).html());
			if($(this).html()=='무제한'){
				$('#depositLg').val(0);
			}
		});
		$('#depositGtMenu h2').click(function() {
			$('#depositGt').val($(this).html());
			if($(this).html()=='무제한'){
				$('#depositGt').val(0);
			}
		});
		
				
		
	});

</script>

<!-- body는 아래에 -->

<div id="head">
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown1">
	 		매물종류<span class="caret"></span>
	 	</button>	 	
	 	<ul id="menu1" class="dropdown-menu">
			<li id="all"><a href="#">월세+전세</a></li>
			<li id="monthly"><a href="#">월세</a></li>
			<li id="charter"><a href="#">전세</a></li>		
		</ul>
		
	</div>	<!-- 1 -->
	<div class="dropdown">
		<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown2">
	 		거래종류<span class="caret"></span>
	 	</div>	 	
	 	<ul id="menu2" class="dropdown-menu">
			<li id="all"><a href="#">전체</a></li>
			<li id="monthly"><a href="#">중개</a></li>
			<li id="charter"><a href="#">직거래</a></li>		
		</ul> 		
	</div><!-- 2 -->
	<div class="dropdown">
		<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown3">
	 		방종류<span class="caret"></span>
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
	 	<ul id="menu4" class="dropdown-menu" style="width: 280px;">
	 		<li class="dropdown-header">보증금 (ex. 10,000만원 = 1억원)</li>
	 		<li>
	 			<input value="0" type="text" id="depositLg" style="width: 120px;margin-left: 10px"/>
	 			~
	 			<input value="0" type="text" id="depositGt" style="width: 120px;"/>
	 		</li>
	 		<li class="divider"></li>			
			<li id="charter">
				<div id="depositLgMenu" style="width: 50%;float: left;">
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
				<div id="depositGtMenu" style="width: 50%;float: right;">
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
		<div class="btn btn-default dropdown-toggle"data-toggle="dropdown" id="dropdown5">
	 		월세<span class="caret"></span>
	 	</div>	 	
	 	<ul id="menu4" class="dropdown-menu" style="width: 280px;">
	 		<li class="dropdown-header">월세 (ex. 10,000만원 = 1억원)</li>
	 		<li>
	 			<input value="0" type="text" id="monthlyLg" style="width: 120px;margin-left: 10px"/>
	 			~
	 			<input value="0" type="text" id="monthlyGt" style="width: 120px;"/>
	 		</li>
	 		<li class="divider"></li>			
			<li id="charter">
				<div id="lgMenu" style="width: 50%;float: left;">
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
				<div id="gtMenu" style="width: 50%;float: right;">
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
	<div id="btnMap" class="btn btn-default list dropdown">지도</div>
	<div id="btnList" class="btn btn-default list dropdown">리스트</div>
	
		
</div><!-- head -->
<!-- content -->
<div class="row">
	<!-- map -->
	<div id="map" class="col col-sm-9" style="height: 800px;background-color: red;">
	
	</div>
	<!-- list -->
	<div id="list" class="col col-sm-3 bg-success" style="height: 800px;">
		<div class="col col-xs-12 bg-primary">
			<span style="font-size: 20px;">검색결과</span>
		</div>
		<div class="col col-xs-12 bg-success">
			<div class="row">
				<div class="col col-xs-12">
					<span style="background-color: gray;font-size: 15px;"></span>이 지역 주변 방
				</div>
				<div id="listItem" class="col col-xs-12">				
					<div class="row" style="margin: 3px;">
					<!-- 반복할코드 -->
						<div class="col-xs-12 gride">
							<div class="row">
								<div class="col col-xs-4 first" style="display:inline-block ;background-color: red;height: 120px;">
									<!-- 이미지 넣기 -->
								</div>
								<div class="col col-xs-8 last" style="background-color:gray;display: inline-block;height: 120px;">
									<div class="row">
										<div class="col-xs-12">1</div>
										<div class="col-xs-12">2</div>
										<div class="col-xs-12">2</div>
										<div class="col-xs-12">3</div>
									</div>
								</div>
							</div>
						</div>
					   <!-- 반복할코드 -->	
					</div>		
				</div>
			</div>
		</div>
	</div>
</div><!-- row -->


