<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<style>
	span {
		font-size:2em;
		color:red;
	}
</style>
<!-- body는 아래에 -->
<div class="row">
	<div>
		<h3>다방에서 방 정보 얻어오기</h3>
		<div>
			<c:if test="${requstScope.totalAdded gt -1}">
				<span>방이 ${requestScope.totalAdded}개 추가되었습니다.</span>
			</c:if>
		</div>
		<form action="<c:url value='/Admin/ItemCollecting.bbs'/>">
			<input type="submit" class="btn btn-success" value="정보 수집"/>
		</form>
	</div> 
</div>