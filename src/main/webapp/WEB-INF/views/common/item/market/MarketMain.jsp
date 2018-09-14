<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script>
	$(function(){
		$('button').click(function(){
			location.href='View.bbs';
		});
	});
</script>
<!-- body는 아래에 -->
<div>
	<h2>경매 메인</h2>
<%-- 	<a href="<c:url value='/Market/Write.bbs'/>">경매 신청</a> --%>
	<button class="btn btn-success">경매 신청</button>
</div>