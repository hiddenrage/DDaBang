<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script>
	$(function(){
		$(':input[type=button]').click(function(){
			location.href='<c:url value="/Market/Write.bbs"/>';
		});
	});
</script>
<!-- body는 아래에 -->
<div class="row">
	<div style="float:left">
		<h2>경매 메인</h2>
	</div>
	<div style="float:right;margin-top: 15px;margin-right: 10px">
		<input type="button" class="btn btn-success" value="경매 신청">
	</div>
	<div>
		<table class="table table-bordered">
			<tr>
				<td>
					<div>
						아 하기싷ㅎ다
					</div>
				
				</td>
			</tr>
			<tr>
				<td>에헤헤
				
				</td>
			</tr>
			<tr>
				<td>에헤헤
				
				</td>
			</tr>
			<tr>
				<td>에헤헤
				
				</td>
			</tr>
		</table>
	</div>
</div>