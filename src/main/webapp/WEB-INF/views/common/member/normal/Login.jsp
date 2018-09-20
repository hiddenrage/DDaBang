<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!-- 내용 시작 -->
		<div class="container">
			<h1 style="text-align:center; margin-bottom: 30px">로그인</h1>
			<c:if test="${not empty loginError }">
				<div class="row">
					<div class="alert alert-warning" role="alert">${loginError}</div>
				</div>
			</c:if>
			<div class="row">
				<c:if test="${! empty sessionScope.id }" var="isLogin">
					<div class="alert alert-success" role="alert">${sessionScope.id}님
						즐감하세요</div>
				</c:if>
				<c:if test="${not isLogin }">
					<div class="col-md-12">
						<form class="form-horizontal" method="post" action="<c:url value="/ReplyBBS/Member/MyloginProcess.bbs"/>">
							<div class="form-group">
								<label for="id" class="col-sm-5  control-label">아이디</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label for="pwd" class="col-sm-5  control-label">비밀번호</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요">
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-info" style="width: 270px">로그인</button>
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-default btn-sm" style="border: none">비밀번호 찾기</button>
								<button type="button" class="btn btn-default btn-sm" style="border: none">일반 회원가입</button>
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-warning" style="margin-bottom: 10px; margin-right: 10px">카카오톡 로그인</button>
								<button type="button" class="btn btn-primary" style="margin-bottom: 10px">페이스북 	로그인</button>
							</div>
						</form>
					</div>
					
			</div>
			</c:if>
		</div>
		<hr>
		<div class="text-center">
			<button type="submit" class="btn btn-default"
				style="margin-bottom: 25px; border: none">공인중개사 회원가입</button>
		</div>
	</div>
	<!-- 내용 끝 -->