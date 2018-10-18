<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script>
$(function(){
	$(':button:last').click(function(){
		if(confirm("정말로 삭제하시겠습니까?"))
 			location.replace("<c:url value='/Member/MemberDelete.bbs'/>")	
	});
});
$(function(){
	$('#change').click(function(){
		if(confirm("비밀번호를 변경하시겠습니까?"))
 			location.replace("<c:url value='/Member/PwdUpdate.bbs'/>")	
	});
});
</script>
<!-- body는 아래에 -->
<div class="container">
			<div class="page-header">
   				<h2 >나의 계정정보</h2>
   			</div>
   			</br>
   			<c:if test="${kind eq 2}">
			<table class="table table-bordered" style="margin-bottom: 80px">
   				<tr>
   					<td colspan="2">공인중개사 정보</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사무소명</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control" id="office_name" name="office_name" value="${dto.office_name}" readonly>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개등록번호</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control col-sm-6" id="broker_number" name="broker_number" value="${dto.broker_number}" readonly>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">사업자 등록번호</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group" style="margin-left: 15px">    							
  								<input type="text" class="form-control" id="licenseenum" style="width: 415px; " name="business_number" value="${dto.business_number}" readonly>
   							</div> 							
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사무소 주소</td>
   					<td>
						<div class="form-inline">
 							<div class="form-group" style="margin-left: 15px">
 								<input type="text" class="form-control" style="width: 415px" name="address" id="address" value="${dto.address}" readonly>    							
  							</div>	
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사 대표자명</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control" id="manager_name" name="manager_name" value="${dto.manager_name}" readonly>
   						</div>
   					</td>
   				</tr>
			</table>
			</c:if>
			<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<table class="table table-bordered" style="margin-bottom: 80px">
   				<tr>
   					<td colspan="2">개인정보</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">본인 성명</td>
   					<td>
   						<div class="form-inline">
   							<div class="form-group col-sm-3">
   								<input type="text" class="form-control" id="username"  name="name" value="${record.name}" readonly>
   							</div>
   							<c:if test="${kind eq 2}">
   							<div>
   								<label style="margin-left:15px ;margin-right: 10px">직급/직책</label>
   								<input type="text" class="form-control" id="position"  name="position" value="${dto.position}" readonly>
   								<input type="text" class="form-control" id="authority"  name="authority" value="${dto.authority}" style="margin-left: 50px" readonly>
   							</div>
   							</div>
   							</c:if>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">휴대폰 번호</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control" id="manager_name" name="manager_name" value="${record.tel}">
   						</div>
   					</td>
   				</tr>
   				<c:if test="${kind eq 2}">
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">대표 전화번호</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control" id="manager_tel" name="manager_tel" value="${dto.manager_tel}">
   						</div>
   					</td>
   				</tr>
   				</c:if>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">이메일 주소</td>
   					<td>
   						<div div class="col-sm-6">
    						<input type="text" class="form-control" id="email" name="id" value="${record.id}" readonly>
   						</div>
   					</td>
   				</tr>
			</table>
			<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<c:if test="${kind != 1 }">
			<form action="<c:url value='/Member/PwdUpdate.bbs'/>">
				<table class="table table-bordered" style="margin-bottom: 50px">
					<tr>
   						<td colspan="2">비밀번호 변경 </td>
   					</tr>
   					<tr>
   						<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">변경할 비밀번호</td>
   						<td>
   							<div class="col-sm-6">
   								<input type="password" class="form-control" id="pwd2" placeholder="새로운 비밀번호를  입력해 주세요" name="newpwd">
   							</div>
   						</td>
   					</tr>
   					<tr>
   						<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">비밀번호 확인</td>
   						<td>
   							<div class="col-sm-6">
   								<input type="password" class="form-control " id="pwd2" placeholder="비밀번호를 다시 입력해 주세요">
   							</div>
   							<div class="col-sm-6">
   								<input id='change' class="button white selected btn btn-primary" type="submit" value="변경">
   							</div>
   						</td>
   					</tr>
				</table>
			</form>
			</c:if>		
				<p style="margin-bottom: 1px">※회원정보 및 비밀번호 변경을 원할시 -<small style="color: orange;"> 현재 페이지에서 수정/변경이 가능합니다.</small></p>
				<p style="margin-bottom: 1px">※하위계정 추가 및 수정/삭제 -<small style="color: orange;"> 하위계정관리에서 추가/수정/삭제가 가능합니다.</small></p>
			</br>
 			<div class="form-group text-center">       
                <a href="<c:url value='/Member/MoveMain.bbs'/>"><button type="submit" class="btn btn-primary btn-lg" style="margin-left: 10px">확인</button></a>   
                <button type="submit" class="btn btn-danger btn-lg" style="margin-left: 10px">회원탈퇴</button>       
            </div>		
   			</br></br>		
	    </div>