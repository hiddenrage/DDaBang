<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
<!-- script는 이쪽 아래에 -->
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
			<a class="left carousel-control" href="#carousel" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a> 
			<a class="right carousel-control" href="#carousel" data-slide="next"> 
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>			
			</a>
		</div>
		
		</div>
		<!-- Info Table -->
		<div style="background-color: blue; width: 540px; height: 400px; margin-top: 15px; float:right">
		</div>
		<div style="background-color: yellow; width: 1099px; height: 350px; margin-top: 15px; float:right">
		</div>
	</div>
	<!-- list -->
	<div id="list" class="col col-sm-3 bg-success" style="height: 800px;">
		<div class="col col-xs-12 bg-primary">
			<span style="font-size: 20px;">검색결과</span>
		</div>
		<div class="col col-xs-12 bg-success">
			<div class="row">
				<div class="col col-xs-12">
					<span style="background-color: gray;font-size: 15px;"></span>내가 확인한 방
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
		<div style="background-color: red; width: 540px; height: 400px; margin-top: 15px; float:right">
		</div>
		<div style="background-color: yellow; width: 1099px; height: 350px; margin-top: 15px; float:right">
		</div>
	</div>
	<!-- list -->
	<div id="list" class="col col-sm-3 bg-success" style="height: 800px;">
		<div class="col col-xs-12 bg-primary">
			<span style="font-size: 20px;">검색결과</span>
		</div>
		<div class="col col-xs-12 bg-success">
			<div class="row">
				<div class="col col-xs-12">
					<span style="background-color: gray;font-size: 15px;"></span>내가 찜한 방
				</div>
				<div id="listItem" class="col col-xs-12">				
					<div class="row" style="margin: 3px;">
					<!-- 반복할코드 -->
						<div class="col-xs-12 gride">
							<div class="row">
								<div class="col col-xs-4 first" style="display:inline-block ;background-color: blue;height: 120px;">
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
  </div>
</div><!-- head -->