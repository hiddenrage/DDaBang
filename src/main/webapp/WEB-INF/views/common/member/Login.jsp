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
			<form class="form-horizontal" method="post" action="<c:url value='/Member/GenenalLogin.bbs'/>">
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
				<span id="signup" style="cursor: pointer;margin-left: 30px;">회원가입</span>
			</div>		
		</div><!-- row -->	
						
	</div><!-- container -->
	