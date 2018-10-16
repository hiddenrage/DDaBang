<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script>
$(function(){
	$(':button:last').click(function(){
		alert('회원가입이 완료되었습니다.');		
	});
}); 
</script>
<!-- body는 아래에 -->
		<div class="container">
			<div class="page-header">
   				<h2 style="margin-left: 230px">회원가입</h2>
   			</div>
   			</br>	
			<table class="table table-bordered" style="width: 700px; margin-left: 230px;">
   				<tr>
   					<td colspan="2">개인정보 입력</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">본인 성명</td>
   					<td>
   						<div class="col-sm-7">
   							<input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요" >
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1);vertical-align: middle;">휴대폰 번호</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group">    							
  								<select class="form-control" style="margin-left: 15px" id="tel"> 
   									<option value="010">010</option> 
   									<option value="011">011</option> 
   									<option value="016">016</option> 
   									<option value="017">017</option> 
   									<option value="018">018</option> 
   									<option value="019">019</option> 
   								</select>
   								<label style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="tel2" style="width: 120px">
   								<label style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="tel3" style="width: 120px">
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">이메일 주소</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group">
    							<input type="email" class="form-control" id="id" placeholder="이메일을 입력하세요" style="margin-left: 15px">
    							<label for="email">@</label>
  							</div>
   							<div class="form-group">
   							<select class="form-control" style="margin-left: 10px" id="id2"> 
   								<option value="userinsert">직접입력</option> 
   								<option value="daum">daum.net</option> 
   								<option value=naver>naver.com</option> 
   								<option value="hanmail">hanmail.net</option> 
   								<option value="gmail">gmail.com</option> 
   								<option value="nate">nate.com</option> 
   								<option value="icloud">icloud.com</option> 
   								<option value="hotmail">hotmail.com</option> 
   								<option value="korea">korea.com</option> 
   								<option value="empal">empal.com</option> 
   								<option value="dreamwiz">dreamwiz.com</option> 
   								<option value="yahoo">yahoo.com</option> 
   								<option value="ymail">ymail.com</option> 
   								<option value="live">live.com</option> 
   								<option value="aol">aol.com</option> 
   								<option value="msn">msn.com</option> 
   								<option value="me">me.com</option> 
   								<option value="rocketmail">rocketmail.com</option> 
   								<option value="qq">qq.com</option> 
   								<option value="link">link.com</option> 
   							</select> 
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">비밀번호</td>
   					<td>
   						<div class="col-sm-7">
   							<input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해 주세요">
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">비밀번호 확인</td>
   					<td>
   						<div class="col-sm-7">
   							<input type="password" class="form-control" id="pwd2" placeholder="비밀번호를 다시 입력해 주세요">
   						</div>
   					</td>
   				</tr>
			</table>			
 			</br>
 			<div class="form-group text-center">
                <a href="<c:url value='/Member/MyPage.bbs'/>"><button i type="submit" class="btn btn-primary btn-lg" style="margin-left: 10px">가입하기<i class="fa fa-check spaceLeft"></i></button></a>       
            </div>		
   			</br></br>		
	    </div>