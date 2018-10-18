<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>List.jsp</title>	
    <link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet"> 
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">  
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
$(function(){
	$("#list1").click(function(){
		alert("리스트1 선택.");			
	});
	$("#list2").click(function(){
		alert("리스트2 선택.");			
	});
});
</script>
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
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
   <script>
    	$(function(){
    		$('.carousel').carousel({
    			  interval: 2000
    			})
    		
    	});
    </script>
<!-- body는 아래에 -->
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">지금까지 본방</a></li>
    <li><a href="#tabs-2">내가 찜한방</a></li>
  </ul>
  <div id="tabs-1">
    <div class="row">
	<!-- View  -->
	<div id="map" class="col col-sm-9" style="height: 800px;">
		<!-- View(image)  -->
		<div style="background-color: yellow; width: 540px; height: 400px; margin-top: 15px; float:left">
		<div id="carousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel" data-slide-to="0" class="active"></li>
				<li data-target="#carousel" data-slide-to="1"></li>
				<li data-target="#carousel" data-slide-to="2"></li>
			</ol>
		<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="./2.jpg" style="width:540px;height:400px; background-color: lime;">
				</div>
				<div class="item">
					<img src="./3.jpg" style="width:540px;height:400px; background-color: aqua;">
				</div>
				<div class="item">
					<img src="./4.jpg" style="width:540px;height:400px; background-color: green;">
				</div>
				
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a> 
			<a class="right carousel-control" href="#carousel" data-slide="next"> 
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>			
			</a>
		</div>
		
		</div>
		<!-- Info Table -->
		<div style="width: 540px; height: 400px; margin-top: 15px; margin-left:16px; float:right">
		<h2 style="margin-top: 15px; margin-left:20px;">공인중개사 정보</h2>
		<table class="table table-bordered" style="width: 480px; height: 330px; margin-top: 15px; margin-left:18px;">
   				<tr>
   					<td class="col-sm-4" style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사무소명</td>
   					<td style="padding-top: 15px">
   						<div class="col-sm-10" style="vertical-align: middle;">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 대표자명</td>
   					<td>
   						<div class="col-sm-10" style="vertical-align: middle;">
 							   					
  						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사무소 주소</td>
   					<td>
 						<div class="col-sm-10" style="vertical-align: middle;">
 							  					
  						</div>	
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 전화번호</td>
   					<td>
   						<div class="col-sm-10" style="vertical-align: middle;">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 이메일</td>
   					<td>
   						<div class="col-sm-10">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">사업자 등록번호</td>
   					<td>
   						<div class="col-sm-10">
   							
   						</div>
   					</td>
   				</tr>
			</table>
		<!-- Info Table -->
		</div>
		<!-- Item Info -->
		<div style="width: 1099px; height: 350px; margin-top: 15px; float:right">
		<h2 style="margin-top: 20px">매물 정보</h2>
			<table class="table" style="margin-top: 15px">
          <tr>
             <td>보증금/월세</td>
             <td></td>
             <td>방 종류</td>
             <td>${roomlist}</td>
          </tr>
          <tr>
             <td>해당 층/건물 층</td>
             <td>${selectfloor}층/${housefloor}층</td>
             <td>전용 / 공급면적</td>
             <td>${Exclusivearea}/${Supplyarea}</td>
          </tr>
          <tr>
             <td>관리비</td>
             <td>
             <c:forEach var="money" items="${paramValues.money }">
              ${money}
              </c:forEach>
             </td>
             <td>관리비포함항목</td>
             <td>
             <c:forEach var="managemoney" items="${paramValues.managemoney }">
              ${managemoney}
              </c:forEach>
              </td>
          </tr>
          <tr>
             <td>난방종류</td>
             <td>개별난방</td>
             <td>입주가능일</td>
             <td>날짜협의</td>
          </tr>
          <tr>
             <td>주차</td>
             <td>
             <c:forEach var="parking" items="${paramValues.parking}">
             ${parking}
             </c:forEach></td>
             <td>반려동물</td>
             <td>
             <c:forEach var="animal" items="${paramValues.animal}">
             ${animal}
             </c:forEach>
             </td>
          </tr>
          <tr>
             <td>엘리베이터</td>
             <td><c:forEach var="elevator" items="${paramValues.elevator}">
             ${elevator}
             </c:forEach></td>
             <td></td>
             <td></td>
          </tr>
       </table>
        <div class="text-center">
   			<button type="submit" class="btn btn-danger btn-lg" style="text-align: center;">찜하기</button>
   		</div>
   		</br>
		</div>
		<!-- Item Info -->
		
	</div>
	
	<!-- list -->
	<div id="list" class="col col-sm-3 bg-success" style="height: 750px; overflow:scroll;">
		<div class="col col-xs-12 bg-primary">
			<span style="font-size: 20px;">검색결과</span>
		</div>
		<div class="col col-xs-12 bg-success">
			<div class="row">
				<div class="col col-xs-12" style="margin-top: 5px">
					<span style="font-size: 14px;">내가 확인한 방</span>
				</div>
				<div id="listItem" class="col col-xs-12">				
					<!-- 반복할코드 -->
						<div style="background-color: white; height: 120px; width: 285px; float: left; margin-top: 10px;" id="list1">
							<!-- Image -->
							<div class="inline img" style="background-color: red; height: 110px; width: 100px; margin-top:5px;margin-left:5px; float: left; background-image: url('./1.jpg');"></div>
							<!-- List -->
							<div style="background-color: white; height: 120px; width: 170px;float: right;">
								<table style="height: 110px; width: 200px; margin-left: 5px; margin-top:5px">
									<tr>
										<td style="font-size: 1.2em">월세 <span style="color: orange;font-size: 1.2em">3000/50</span></td>
									</tr>
									<tr>
										<td>원룸 | 3층 | 복층</td>
									</tr>
									<tr>
										<td>#주차 | #반려견</td>
									</tr>
									<tr>
										<td>이집 개쩜</td>
									</tr>
								</table>							
							</div>							
						</div>							
					   <!-- 반복할코드 -->		
				</div>
			</div>
		</div>
	</div>
	
</div><!-- row -->
  </div>
  <div id="tabs-2">
     <div class="row">
	<!-- View -->
	 	<div id="map" class="col col-sm-9" style="height: 800px;">
		<!-- View(image)  -->
		<div style="background-color: yellow; width: 540px; height: 400px; margin-top: 15px; float:left">
			<div id="carousel2" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel" data-slide-to="0" class="active"></li>
				<li data-target="#carousel" data-slide-to="1"></li>
				<li data-target="#carousel" data-slide-to="2"></li>
			</ol>
		<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="#" style="width:540px;height:400px; background-color: lime;">
				</div>
				<div class="item">
					<img src="#" style="width:540px;height:400px; background-color: aqua;">
				</div>
				<div class="item">
					<img src="#" style="width:540px;height:400px; background-color: green;">
				</div>
				
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel2" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a> 
			<a class="right carousel-control" href="#carousel2" data-slide="next"> 
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>			
			</a>
		</div>
		</div>
		<!-- Info Table -->
		<div style="width: 540px; height: 400px; margin-top: 15px; margin-left:16px; float:right">
		<h2 style="margin-top: 15px; margin-left:20px;">공인중개사 정보</h2>
		<table class="table table-bordered" style="width: 480px; height: 330px; margin-top: 15px; margin-left:18px;">
   				<tr>
   					<td class="col-sm-4" style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사무소명</td>
   					<td style="padding-top: 15px">
   						<div class="col-sm-10" style="vertical-align: middle;">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 대표자명</td>
   					<td>
   						<div class="col-sm-10" style="vertical-align: middle;">
 							   					
  						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사무소 주소</td>
   					<td>
 						<div class="col-sm-10" style="vertical-align: middle;">
 							  					
  						</div>	
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 전화번호</td>
   					<td>
   						<div class="col-sm-10" style="vertical-align: middle;">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">중개사 이메일</td>
   					<td>
   						<div class="col-sm-10">
   							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">사업자 등록번호</td>
   					<td>
   						<div class="col-sm-10">
   							
   						</div>
   					</td>
   				</tr>
			</table>
		<!-- Info Table -->
		</div>
		<!-- Item Info -->
		<div style="width: 1099px; height: 350px; margin-top: 15px; float:right">
		<h2 style="margin-top: 20px">매물 정보</h2>
			<table class="table" style="margin-top: 15px">
          <tr>
             <td>보증금/월세</td>
             <td></td>
             <td>방 종류</td>
             <td>${roomlist}</td>
          </tr>
          <tr>
             <td>해당 층/건물 층</td>
             <td>${selectfloor}층/${housefloor}층</td>
             <td>전용 / 공급면적</td>
             <td>${Exclusivearea}/${Supplyarea}</td>
          </tr>
          <tr>
             <td>관리비</td>
             <td>
             <c:forEach var="money" items="${paramValues.money }">
              ${money}
              </c:forEach>
             </td>
             <td>관리비포함항목</td>
             <td>
             <c:forEach var="managemoney" items="${paramValues.managemoney }">
              ${managemoney}
              </c:forEach>
              </td>
          </tr>
          <tr>
             <td>난방종류</td>
             <td>개별난방</td>
             <td>입주가능일</td>
             <td>날짜협의</td>
          </tr>
          <tr>
             <td>주차</td>
             <td>
             <c:forEach var="parking" items="${paramValues.parking}">
             ${parking}
             </c:forEach></td>
             <td>반려동물</td>
             <td>
             <c:forEach var="animal" items="${paramValues.animal}">
             ${animal}
             </c:forEach>
             </td>
          </tr>
          <tr>
             <td>엘리베이터</td>
             <td><c:forEach var="elevator" items="${paramValues.elevator}">
             ${elevator}
             </c:forEach></td>
             <td></td>
             <td></td>
          </tr>
       </table>
		</div>
		<!-- Item Info -->
	<!-- list -->
	</div>
	<div id="list" class="col col-sm-3 bg-success" style="height: 750px; overflow:scroll;">
		<div class="col col-xs-12 bg-primary">
			<span style="font-size: 20px;">검색결과</span>
		</div>
		<div class="col col-xs-12 bg-success">
			<div class="row">
				<div class="col col-xs-12" style="margin-top: 5px">
					<span style="font-size: 14px;">내가 찜한방</span>
				</div>
				<div id="listItem" class="col col-xs-12">				
					<!-- 반복할코드 -->
					<div style="background-color: white; height: 120px; width: 285px; float: left; margin-top: 10px;" id="list2">
							<!-- Image -->
							<div class="inline img" style="background-color: red; height: 110px; width: 100px; margin-top:5px;margin-left:5px; float: left; background-image: url('./1.jpg');"></div>
							<!-- List -->
							<div style="background-color: white; height: 120px; width: 170px;float: right;">
								<table style="height: 110px; width: 200px; margin-left: 5px; margin-top:5px">
									<tr>
										<td style="font-size: 1.2em">월세 <span style="color: orange;font-size: 1.2em">3000/50</span></td>
									</tr>
									<tr>
										<td>원룸 | 3층 | 복층</td>
									</tr>
									<tr>
										<td>#주차 | #반려견</td>
									</tr>
									<tr>
										<td>이집 개쩜</td>
									</tr>
								</table>							
							</div>							
						</div>
						<!-- 반복할코드 -->		
				</div>
			</div>
		</div>
	</div>
</div><!-- row -->
  </div>
</div>