<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){          
	$('#btn-upload').click(function(e){
		e.preventDefault();             
		$("#file").click();               
		var ext = $("#file").val().split(".").pop().toLowerCase();
		if(ext.length > 0){
			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
				return false;  
			}                  
		}
		$("#file").val().toLowerCase();
	}); 
});

$(function(){          
	$('#btn-upload2').click(function(e){
		e.preventDefault();             
		$(":input:file:last").click();               
		var ext2 = $("#file2").val().split(".").pop().toLowerCase();
		if(ext.length > 0){
			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
				return false;  
			}                  
		}
		$("#file2").val().toLowerCase();
	}); 
});
    
    $(function(){
        var postcode;//우편번호 변수 설정
        //주소 API
        $('.orgBtn').on("click",function(){
            new daum.Postcode({
                    oncomplete: function(data) {
                        var value;
                        var jusoSangsae="";
                        var str = data.jibunAddress;   
                        str = str.split(" ");          
                     if(data.userSelectedType == "J"){  
                            for(var i =0;i<str.length;i++){
                                if(str[i]==data.bname){     
                                    value=i;               
                                }
                            }
                        }else{
                            str = data.roadAddress;        
                            str = str.split(" ");         
                            for(var i=0;i<str.length;i++){
                                if(str[i]==data.roadname){
                                    value=i;               
                                }
                            }
                        }
                     for(var i=value;i<str.length;i++){  
                            jusoSangsae = jusoSangsae+str[i];
                        }
                     addr = data.sido+" "+data.sigungu+" "+jusoSangsae;
                        postcode = data.postcode;
                        $("#address").val(postcode);
                         $("#address").val(addr);
                         $('#addressError').html("");   
                         $('#addressError').html("");   
                  },
                shorthand : false
                }).open();
        });
        
        $(':input:last').click(function(){
    		alert('가입 신청이 완료되었습니다.\r\n로그인 후 이용해주세요!');		
    	});
        
     });
    </script>
<!-- body는 아래에 -->
		<div class="container">
			<div class="page-header">
   				<h2>공인중개사 회원가입</h2>
   				<small> 필요한 서류를 미리 준비해 두시면 빠르게 가입 하실 수 있습니다.</small>
   				<h5 style="color:orange">고객센터 010-5349-1601 / 팩스번호 <a href="#">010-5349-1601</a></h5>
   			</div>
   			
   			<form action="<c:url value='/Member/expertsignup.bbs'/>" method="post">
   			<table class="table table-bordered" style="margin-bottom: 100px">
   				<tr>
   					<td colspan="2">공인중개사 정보 입력</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사무소명</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control" id="office_name" placeholder="사무소명을 입력해 주세요" name="office_name">
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개등록번호</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="text" class="form-control col-sm-6" id="broker_number" placeholder="'-'가 있는경우 포함하여 입력해 주세요" name="broker_number" >
   						</div>
   						<div>
   							<input type='file' id='file' name='broker_photo' class="hidden"/>
							<button id='btn-upload' class="button1 white selected btn btn-primary" onfocus="this.blur();" style="margin-right: 10px">중개등록증 첨부</button>
						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">사업자 등록번호</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group" style="margin-left: 15px">    							
  								<input type="text" class="form-control" id="licenseenum" style="width: 120px; " name="business_number">
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="licenseenum2" style="width: 120px" name="business_number2">
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="licenseenum3" style="width: 120px" name="business_number3">
   								<button class="button1 white selected btn btn-primary" onfocus="this.blur();" style="margin-left: 10px">인증</button>
   								<input type='file' id='file2' name='business_photo' class="hidden"/>
   								<button id='btn-upload2' class="button1 white selected btn btn-primary" onfocus="this.blur();" style="margin-left: 10px">사업자 등록증 첨부</button>
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사무소 주소</td>
   					<td>
   						<p style=" margin-left:10px; color:gray;">도로명,건물명,지번에 대해 통합검색이 가능합니다.</p> 
						<div class="form-inline">
 							<div class="form-group" style="margin-left: 15px">
 								<input type="text" class="form-control" style="width: 250px" placeholder="예)금천구 가산동" name="address" id="address">    							
  								<button type="button" value="button타입" class="orgBtn btn btn-primary" id="lookup" style="margin-left: 15px">조회하기</button>
  								</br>
  							</div>	
   							<div class="form-grou">
   								<input type="text" class="form-control" style="width: 250px; margin-top: 10px; margin-left: 15px; margin-bottom: 10px" placeholder="상세주소를 입력해주세요" id="address2" name="address2">
   							</div>
   							<p style="color: red; cursor: pointer; text-decoration: underline;  margin-left:10px;">주소가 검색되지 않으세요?</p>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">중개사 대표자명</td>
   					<td>
   						<div class="col-sm-5">
   							<input type="text" class="form-control" id="manager_name" placeholder="대표자명을 입력해 주세요" name="manager_name">
   						</div>
   					</td>
   				</tr>
			</table>
			<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			
			<table class="table table-bordered">
   				<tr>
   					<td colspan="2">개인정보 입력</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">본인 성명</td>
   					<td>
   						<div class="form-inline">
   							<div class="form-group col-sm-3">
   								<input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요" name="name">
   							</div>
   							<div>
   								<label style="margin-left:15px ;margin-right: 10px">직급/직책</label>
   								<input type="text" class="form-control" id="position" placeholder="직급/직책을 입력해 주세요" name="position">
   								<select class="form-control" style="margin-left: 40px" name="authority" id="authority"> 
   									<option>권한/자격</option> 
   									<option value="대표공인중개사">대표공인중개사</option> 
   									<option value="소속공인중개사">소속공인중개사</option> 
   									<option value="중개보조원">중개보조원</option> 
   									<option value="중개인">중개인</option> 
   								</select>
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">휴대폰 번호</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group">    							
  								<select class="form-control" style="margin-left: 15px" id="tel" name="tel"> 
   									<option value="010">010</option> 
   									<option value="011">011</option> 
   									<option value="016">016</option> 
   									<option value="017">017</option> 
   									<option value="018">018</option> 
   									<option value="019">019</option> 
   								</select>
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="tel2" style="width: 120px" name="tel2">
   								<label style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="tel3" style="width: 120px" name="tel3">
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">대표 전화번호</td>
   					<td>
   						<div class="form-inline">
   							<div class="form-group"> 
   								<select class="form-control" style="margin-left: 15px" id="representtel" name="manager_tel"> 
   									<option value="02">02</option> 
   									<option value="031">031</option> 
   									<option value="032">032</option> 
   									<option value="033">033</option> 
   									<option value="041">041</option> 
   									<option value="042">042</option> 
   									<option value="043">043</option> 
   									<option value="044">044</option> 
   									<option value="051">051</option> 
   									<option value="052">052</option> 
   									<option value="053">053</option> 
   									<option value="054">054</option> 
   									<option value="055">055</option> 
   									<option value="061">061</option> 
   									<option value="062">062</option> 
   									<option value="063">063</option> 
   									<option value="064">064</option> 
   									<option value="070">070</option> 
   									<option value="010">010</option> 
   								</select> 
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="representtel2" style="width: 120px" name="manager_tel2">
   								<label style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="representtel3" style="width: 120px" name="manager_tel3">
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">이메일 주소</td>
   					<td>
   						<div class="form-inline">
 							<div class="form-group">
    							<input type="text" class="form-control" id="email" placeholder="이메일을 입력하세요" style="margin-left: 15px" name="id">
    							<label for="email">@</label>
  							</div>
   							<div class="form-group">
   							<select class="form-control" style="margin-left: 10px" id="email2" name="id2"> 
   								<option value="@daum.net">daum.net</option>
								<option value="@naver.com">naver.com</option>
								<option value="@hanmail.net">hanmail.net</option>
								<option value="@gmail.com">gmail.com</option>
								<option value="@nate.com">nate.com</option>
								<option value="@icloud.com">icloud.com</option>
								<option value="@hotmail.com">hotmail.com</option>
								<option value="@korea.com">korea.com</option>
								<option value="@empal.com">empal.com</option>
								<option value="@dreamwiz.com">dreamwiz.com</option>
								<option value="@yahoo.com">yahoo.com</option>
								<option value="@ymail.com">ymail.com</option>
								<option value="@live.com">live.com</option>
								<option value="@aol.com">aol.com</option>
								<option value="@msn.com">msn.com</option>
								<option value="@me.com">me.com</option>
								<option value="@rocketmail.com">rocketmail.com</option>
								<option value="@qq.com">qq.com</option>
								<option value="@link.com">link.com</option>
   							</select> 
   							</div>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">비밀번호</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해 주세요" name="pwd">
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="background-color: rgba(80,80,80,0.1); vertical-align: middle;">비밀번호 확인</td>
   					<td>
   						<div class="col-sm-6">
   							<input type="password" class="form-control" id="pwd2" placeholder="비밀번호를 다시 입력해 주세요">
   						</div>
   					</td>
   				</tr>
			</table>
			
			<small style="color: red;"> 
				*공인중개사법 제18조 2의 취지에 적합한 표시의무(상호명, 등록관청에 신고된 전화번호, 소재지, 성명)를 기입하시기 바랍니다.</br>
 				 이에 발생한 문제는 KOSMO 에서 책임을 지지 않습니다.										 
 			</small>
 			</br></br></br>
 			<div class="form-group text-center">
                <input type="submit" class="btn btn-primary btn-lg" style="margin-left: 10px" value="가입신청 하기"/>      
            </div>	
            </form>	
   			</br></br>		
	    </div>