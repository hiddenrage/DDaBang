<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<!-- 로그인 페이지 입니다 -->

<!-- script는 이쪽에 -->
<script>
	onresize = function() {
		if(window.innerWidth < 800){
			$("#naverLogin").css('margin-left','').css('width','100%');
		}else{
			$("#naverLogin").css('margin-left','8px').css('width','98%');
		}		
	};
</script>

<!-- body는 아래에 -->
	<div class="container" style="margin-bottom: 300px">
		<div style="text-align: center;margin-top: 100px;">
			<h1>로그인</h1>
		</div>
		
		<div class="row" style="margin-top: 50px;">
			<form class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input style="height: 60px" type="email" class="form-control" id="id" name="id" placeholder="이메일 ">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input style="height: 60px" type="password" class="form-control" id="pass" name="pass" placeholder="비밀번호">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<button style="height: 60px;" type="submit" class="btn btn-success btn-lg col-xs-12 form-control">로그인</button>	
					</div>			
				</div>
			</form>	
								
			<div class="col-xs-12 col-sm-6 col-sm-offset-3">
				<div class="row">
					<a href="${url }"><img id="naverLogin" style="width:98%;height:60px;margin-left: 8px;" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a>
				</div>	
			</div>
							
			<div class="col-xs-12 col-sm-3 col-sm-offset-2" style="text-align: center;margin-top: 10px">
				<span id="searchPass" style="cursor: pointer;">비밀번호 찾기</span>
			</div>
			<div class="col-xs-12 col-sm-3 col-sm-offset-2" style="text-align: center;margin-top: 10px">
				<a href="#" data-toggle="modal" data-target="#exampleModal"><span id="signup" style="cursor: pointer;margin-left: 30px;">회원가입</span></a>
			</div>		
		</div><!-- row -->	
						
	</div><!-- container -->
	<!-- 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h2 class="modal-title" id="exampleModalLabel" style="margin-left: 10px">회원가입</h2>
				<small style="margin-left: 10px">※이용하실 회원 구분을 선택하세요</small>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="false">&times;</span>
				</button>
				</br>
			</div>
			</br>
			<div class="modal-body text-center">
				<div class="">
					<a href="<c:url value='/Member/LreasignupTerms.bbs'/>"><button
							type="button" class="btn btn-primary btn-lg"
							style="margin-bottom: 30px; margin-right: 20px; height: 130px; width: 200px; font-size: 2em">공인중개사</button></a>
					<a href="<c:url value='/Member/GeneralSignUp.bbs'/>"><button
							type="button" class="btn btn-default btn-lg"
							style="margin-bottom: 30px; margin-left: 20px; height: 130px; width: 200px; font-size: 2em">일반회원</button></a>
				</div>
				<p style="margin-left: 25px; text-align: left; margin-bottom: 1px">※회원정보
					변경을 원할시</p>
				<p style="margin-left: 25px; text-align: left; font-size: 0.8em">-
					가입된 회원정보 변경은 사이트 메인 > 계정관리 에서 수정/변경이 가능합니다.</p>
				<p style="margin-left: 25px; text-align: left; margin-bottom: 1px">※하위계정
					추가 및 수정/삭제</p>
				<p style="margin-left: 25px; text-align: left; font-size: 0.8em">-
					계정관리 > 하위계정관리에서 추가/수정/삭제가 가능합니다.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 모달창 -->
	