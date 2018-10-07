<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<style type="text/css">
    body{font-family:'Nanum Gothic','Malgun Gothic','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif; background-color: transparent;}
    b {font-family: 'Nanum Gothic Bold';font-weight: bold;}
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 16.0px; color: #212121; -webkit-text-stroke: #212121}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #000000; -webkit-text-stroke: #000000; min-height: 17.0px}
    p.p3 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    p.p4 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 13.0px; color: #212121; -webkit-text-stroke: #212121}
    p.p5 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #000000; -webkit-text-stroke: #000000}
    p.p6 {margin: 0.0px 0.0px 0.0px 0.0px; text-align: justify; font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    p.p7 {margin: 0.0px 0.0px 0.0px 0.0px; text-align: justify; font-size: 15.0px; color: #000000; -webkit-text-stroke: #000000; min-height: 17.0px}
    p.p8 {margin: 0.0px 0.0px 0.0px 0.0px; text-align: justify; font-size: 16.0px; color: #212121; -webkit-text-stroke: #212121}
    p.p9 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 16.0px; color: #000000; -webkit-text-stroke: #000000}
    span.s1 {
      font-kerning: none;
      color: #ff2600;
    }
    li.li1 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    li.li1:before {content:'- ';}
    li.li2 {margin: 0.0px 0.0px 0.0px 0.0px;font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    li.li2:before {content:'';margin-left:8px;}
    li.li3 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    li.li5 {margin: 0.0px 0.0px 0.0px 0.0px; font-size: 15.0px; color: #212121; -webkit-text-stroke: #212121}
    ul.ul1 {list-style: dot;margin:0;text-align: left;}
    ul.ul2 {list-style: none;margin:0;padding-left:20px;}
    table.t1 {width: 100%; border: 1px solid #000; border-collapse: collapse;}
    td.td1 {border: 1px solid #000; padding: 5px; text-align: center; line-height: 18px;}
    @media screen and (min-width: 440px){
      p.p1 {font-size: 14px;}
      p.p2, p.p3, p.p5, p.p6, p.p7, p.p8, p.p9, p.p10, p.p11, p.p12, p.p13 {font-size: 13px;}
      li.li1, li.li2, li.li3, li.li5 {font-size: 13px;}
    }
  </style>
<!-- body는 아래에 -->
<h2>개인정보 처리방침</h2>
<p class="p1"><b>1. 총칙</b></p>
<p class="p3">주식회사 스테이션3[이하 “회사”라 한다]는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법을 비롯한 모든 개인정보보호 관련 규정을 준수함에 따라 개인정보 처리방침 수립∙공개하고 있습니다. 회사는 이를 인터넷 홈페이지 및 모바일 애플리케이션에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하여 소비자 권익보호에 최선을 다하고 있습니다.</p>
<p class="p3"><br></p>
<p class="p1"><b>2. 개인정보의 수집∙이용 목적</b></p>
<p class="p3">(1) 회사는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</p>
<p class="p4"><br></p>
<table cellspacing="0" cellpadding="0" class="t1">
  <thead>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5"><b>구분</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>수집∙이용 목적</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>수집∙이용하는 개인정보 항목</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>수집방법</b></p>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">따방 회원가입 및 관리</p>
      </td>
      <td valign="middle" class="td1" rowspan="2">
        <ul class="ul1">
          <li class="li3">회원제 서비스 제공에 따른 본인 식별∙인증</li>
          <li class="li3">회원자격 유지∙관리</li>
          <li class="li3">서비스 부정이용 방지</li>
          <li class="li3">각종 고지∙통지</li>
          <li class="li3">분쟁 조정을 위한 기록 보존</li>
        </ul>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">성명, 휴대전화번호, 이메일주소(서비스 ID), 비밀번호</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">프로필 사진</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">따방</p>
        <p class="p5">회원가입</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">공인중개사 회원가입 및 관리</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">성명, 휴대전화번호, 이메일주소(서비스 ID), 비밀번호, 직책/직급, 권한/자격,</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">프로필 사진, 회원가입 경로,</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">따방Pro</p>
        <p class="p5">회원가입</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">민원사무 처리</p>
      </td>
      <td valign="middle" class="td1">
        <ul class="ul1">
          <li class="li3">민원인의 신원 확인</li>
          <li class="li3">민원사항 확인</li>
          <li class="li3">사실조사를 위한 연락∙통지</li>
          <li class="li3">처리결과 통보</li>
        </ul>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">성명, 전화번호</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">해당 사항 없음</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">고객센터</p>
        <p class="p5">(유선전화)</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">따방Pro 서비스 제공</p>
      </td>
      <td valign="middle" class="td1">
        <ul class="ul1">
          <li class="li3">서비스의 원활한 제공 및 운영</li>
        </ul>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">은행명, 계좌번호</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">해당사항 없음</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">따방Pro</p>
        <p class="p5">매물 등록</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">매물정보 등록</p>
      </td>
      <td valign="middle" class="td1">
        <ul class="ul1">
          <li class="li3">매물정보 등록 시 중개거래 정보 제공</li>
        </ul>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">이름, 휴대전화번호</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">해당사항 없음</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">제휴업체</p>
        <p class="p5">시스템 연계</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">마케팅 또는</p>
        <p class="p5">이벤트 활용</p>
      </td>
      <td valign="middle" class="td1">
        <ul class="ul1">
          <li class="li3">이벤트/광고 정보 및 참여기회 제공</li>
        </ul>
      </td>
      <td valign="middle" class="td1">
        <p class="p6">[필수항목]</p>
        <p class="p6">성명, 휴대전화번호</p>
        <p class="p6">[선택항목]</p>
        <p class="p6">상품배송지주소</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">따방 이벤트 응모</p>
      </td>
    </tr>
  </tbody>
</table>
<p class="p4"><br></p>
<p class="p3">(2) ‘선택항목’을 입력하지 않을 경우에도 서비스 이용제한이 없습니다.</p>
<p class="p3">(3) 회사는 만 14세 미만 아동의 개인정보 보호를 위하여 만 14세 이상의 이용자에 한하여 따방 서비스(회원가입 등)를 제공하고 있습니다.</p>
<p class="p3">(4) 회사는 민감정보 및 주민등록번호를 포함한 고유식별정보를 수집∙이용하고 있지 않습니다.</p>
<p class="p4"><br></p>
<p class="p1"><b>3. 개인정보의 보유 및 이용기간</b></p>
<p class="p3">(1) 회사는 법령과 회사 방침에 따른 개인정보 보유∙이용기간 또는 정보주체로부터 개인정보를 수집 시 동의 받은 개인정보 보유∙이용기간 내에서 개인정보를 처리∙보유합니다.</p>
<ul class="ul2">
  <li class="li3">각각의 개인정보 처리∙보유기간은 다음과 같습니다.</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">- 따방 회원가입 및 관리</li>
  <li class="li3">① 보유근거: 이용자의 동의</li>
  <li class="li3">② 관련법령: 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제22조</li>
  <li class="li3">③ 보유기간: 회원 탈퇴 시까지</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">- 공인중개사 회원가입 및 관리</li>
  <li class="li3">① 보유근거: 이용자의 동의</li>
  <li class="li3">② 관련법령: 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제22조</li>
  <li class="li3">③ 보유기간: 회원 탈퇴 시까지</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">- 민원사무 처리</li>
  <li class="li3">① 보유근거: 이용자의 동의</li>
  <li class="li3">② 관련법령: 전자상거래 등에서의 소비자보호에 관한 법률</li>
  <li class="li3">③ 보유기간: 3년</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">- 따방Pro서비스 제공</li>
  <li class="li3">① 보유근거: 대금결제 및 재화 등의 공급에 관한 기록 보관</li>
  <li class="li3">② 관련법령: 전자상거래 등에서의 소비자보호에 관한 법률</li>
  <li class="li3">③ 보유기간: 5년</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">- 마케팅 및 이벤트 활용</li>
  <li class="li3">① 보유근거: 이용자의 동의</li>
  <li class="li3">② 관련법령: 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제22조</li>
  <li class="li3">③ 보유기간: 마케팅 또는 이벤트 종료 시까지</li>
</ul>
<p class="p3">(2) 회원이 1년간 서비스 이용기록이 없는 경우, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제29조에 따라 회원에게 사전 통지하고 <span class="s1">즉시 파기하거나 별도의 데이터베이스(DB) 이전 또는 보관장소를 달리하여 보존합니다.</span></p>
<p class="p3">(3) 회사는 다음의 정보에 대해서는 아래 명시한 기간 동안 보유합니다.</p>
<ul class="ul2">
  <li class="li3">- 표시 및 광고에 관한 기록 : 6개월</li>
  <li class="li3">- 계약 또는 청약철회 등에 관한 기록: 3년</li>
  <li class="li3">- 부동산 매물 등록에 관한 기록: 5년</li>
  <li class="li3">- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년</li>
  <li class="li3">- 부정이용 등에 관한 기록: 3년</li>
</ul>
<p class="p4"><br></p>
<p class="p1"><b>4. 개인정보의 파기</b></p>
<p class="p3">(1) 회사는 개인정보 보유기간 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.</p>
<p class="p3">(2) 이용자로부터 동의 받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.</p>
<p class="p3">(3) 개인정보 파기의 절차 및 방법은 다음과 같습니다.<br>
</p><ul class="ul2">
  <li class="li3">1. 파기절차</li>
  <li class="li3">회사는 파기 사유가 발생한 개인정보를 식별하고, 회사의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.</li>
  <li class="li3"><p class="p4"><br></p></li>
  <li class="li3">2. 파기방법</li>
  <li class="li3">회사는 전자적 파일 형태로 기록∙저장된 개인정보는 기록을 재생할 수 없도록 로우레벨 포맷(Low Level Format) 등의 방법을 이용하여 파기하며, 종이 문서에 기록∙저장된 개인정보는 분쇄하거나 소각하여 파기합니다.</li>
</ul>
<p class="p4"><br></p>
<p class="p1"><b>5. 개인정보의 제3자 제공</b></p>
<p class="p3">(1) 회사는 이용자의 개인정보를 ‘2. 개인정보의 수집∙이용 목적’에서 고지한 범위 내에서 사용하며, 동의 범위를 초과하여 이용하거나 원칙적으로 제3자에게 제공하지 않습니다.</p>
<ul class="ul2">
  <li class="li1">다음은 예외로 합니다</li>
  <li class="li2">서비스 제공에 따른 요금정산을 위하여 필요한 경우</li>
  <li class="li1">회사가 제공하는 서비스를 통하여 거래가 성사된 경우, 거래 당사자간의 원활한 의사소통을 위하여 관련된 정보를 필요한 범위 내에서 거래당사자에게 제공하는 경우</li>
  <li class="li1">통계작성, 학술연구나 시장조사를 위해 특정 개인을 식별할 수 없는 형태로 가공하여 제공하는 경우</li>
  <li class="li1">이용자들이 사전에 동의한 경우</li>
  <li class="li1">법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
</ul>
<p class="p3">(2) 제휴관계나 위탁처리 시 합당한 절차를 통하여 필요한 회원의 개인정보를 제공 또는 이용할 수 있습니다.</p>
<p class="p3">(3) 현재 개인정보를 제공하는 업체는 다음과 같습니다.</p>
<p class="p4"><br></p>
<table cellspacing="0" cellpadding="0" class="t1">
  <tbody>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5"><b>제공받는 자</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>제공받는 항목</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>이용목적</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>보유 및 이용기간</b></p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">다모여컴퍼니</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">성명, 연락처, 주소</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">이사 견적, 이사 서비스 제공</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">이사 업무 종료 시 또는 업무 제휴 종료 시까지</p>
      </td>
    </tr>
  </tbody>
</table>
<p class="p4"><br></p>
<p class="p1"><b>6. 개인정보처리의 위탁</b></p>
<p class="p3">(1) 회사는 더 나은 서비스를 제공하기 위하여 이용자의 개인정보 처리를 외부전문기관에 위탁할 수 있으며, 위탁하는 업무의 내용과 수탁자를 언제든지 쉽게 확인할 수 있도록 회사의 인터넷 홈페이지에 지속적으로 게재하여 공개합니다.</p>
<p class="p3">(2) 회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.</p>
<p class="p4"><br></p>
<table cellspacing="0" cellpadding="0" class="t1">
  <tbody>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5"><b>수탁업체</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>위탁내용</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>위탁기간</b></p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">㈜티아이모바일</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">안내 메시지 및 경품 발송</p>
      </td>
      <td valign="middle" class="td1" rowspan="9">
        <p class="p5">각 위탁업무 종료 시 또는</p>
        <p class="p5">위탁계약 종료/해지 시</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">(주)아이피디(IPD)</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">홍보물, 경품 발송</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">LG 유플러스</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">상품 결제</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">온피아</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">인터넷 콜센터 시스템 유지보수</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">SK텔링크</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">평생안심번호 제공</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">Amazon Web Services Inc.</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">클라우드 서비스 이용</p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">퍼스트데이터코리아(주)</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">전자금융거래 업무</p>
      </td>
    </tr>
  </tbody>
</table>
<p class="p4"><br></p>
<p class="p3">(3) 회사는 위탁계약 체결 시 위탁업무 수행목적 외 개인정보 처리금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는 지를 감독하고 있습니다.</p>
<p class="p4"><br></p>
<p class="p1"><b>7. 이용자 및 법정대리인의 권리와 그 행사방법</b></p>
<p class="p3">(1) 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 또는 대리자의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를 요청할 수도 있습니다.</p>
<p class="p3">(2) 이용자 혹은 대리인의 개인정보 조회, 수정을 위해서는 ‘내 계정’을, 가입 해지(동의철회)를 위해서는 고객센터를 통해 본인확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴 요청이 가능합니다.</p>
<p class="p3">(3) 개인정보 보호책임자에게 서면, 전화 또는 e-mail로 연락하여 개인정보의 조회, 수정 및 가입 해지 요청이 가능합니다.</p>
<p class="p3">(4) 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.</p>
<p class="p3">(5) 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 ‘3. 개인정보의 보유 및 이용기간’에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없습니다.</p>
<p class="p3">(6) 이용자는 개인정보가 유출되지 않도록 조심하시고 타인의 개인정보를 훼손하지 않도록 주의하셔야 합니다. 이를 위반할 경우, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등에 의해 처벌받으실 수 있습니다.</p>
<p class="p4"><br></p>
<p class="p1"><b>8. 개인정보의 기술적∙관리적 보호대책</b></p>
<p class="p3">- 회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적∙관리적 조치를 취하고 있습니다.</p>
<p class="p4"><br></p>
<p class="p3">(1) 기술적 대책</p>
<ul class="ul2">
  <li class="li3">- 개인정보에 대한 접근 제한</li>
  <li class="li3">침입차단시스템을 이용하여 외부로부터의 무단접근을 통제하고 있습니다. 또한 개인정보처리시스템에 대한 접근권한 관리를 통하여 개인정보에 대한 접근을 통제하며, 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 <span class="s1">최소 5년간 </span>보관하고 있습니다.</li>
  <li class="li3">- 비밀번호 암호화</li>
  <li class="li3">회원 아이디(ID)의 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</li>
  <li class="li3">- 접속기록의 보관 및 위∙변조 방지</li>
  <li class="li3">개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위∙변조 및 도난, 분실되지 않도록 관리하고 있습니다.</li>
  <li class="li3">- 해킹 등에 대비한 대책</li>
  <li class="li3">회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다. 개인정보의 훼손에 대비하여 자료를 수시로 백업하고 있고, 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.</li>
</ul>
<p class="p4"><br></p>
<p class="p3">(2) 관리적 대책</p>
<ul class="ul2">
  <li class="li3">- 내부관리계획의 수립∙시행</li>
  <li class="li3">'개인정보의 안전성 확보조치 기준' 및 '개인정보의 기술적∙관리적 보호조치 기준'에 따라 내부관리계획을 수립 및 시행합니다.</li>
  <li class="li3">- 개인정보취급자 지정의 최소화 및 교육</li>
  <li class="li3">회사의 개인정보 관련 취급 직원은 담당자에 한정시키고, 담당자에 대한 수시 교육을 통하여 따방의 개인정보처리방침 준수를 항상 강조하고 있습니다.</li>
  <li class="li3">- 입∙퇴사자 관리</li>
  <li class="li3">입∙퇴사 시 보안서약서를 징구하여 사람에 의한 정보유출을 사전에 방지하고 개인정보 사고에 대한 책임을 명확화하고 있습니다.</li>
  <li class="li3">- 회사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.</li>
</ul>
<p class="p4"><br></p>
<p class="p1"><b>9. 개인정보 자동 수집 장치의 사용 및 거부에 관한 사항</b></p>
<p class="p3">(1) 쿠키는 웹 서비스 제공자의 서버가 이용자의 컴퓨터로 전송하는 소량의 정보이며, 여기에는 방문한 웹사이트의 정보 등이 담겨 있습니다. 쿠키는 이용자 컴퓨터의 웹 브라우저는 식별하지만 이용자를 개인적으로 식별하지는 않으며, 이용자는 웹 브라우저의 옵션 메뉴를 통해 쿠키의 수용 여부 등을 설정할 수 있습니다.</p>
<p class="p3">(2) 회사는 쿠키를 통해 별도로 개인정보를 수집하거나 활용하지 않습니다. 방문자는 쿠키에 대해 선택권을 가지고 있습니다.</p>
<p class="p3">(3) 웹 브라우저 상단의 [IE: 도구 - 인터넷 옵션 - 개인정보 – 고급정보 / Chrome: 설정 - 고급 - 콘텐츠 설정 - 쿠키]에서 모든 쿠키의 허용, 동의를 통한 쿠키의 허용, 모든 쿠키의 차단을 스스로 결정할 수 있습니다.</p>
<p class="p4"><br></p>
<p class="p1"><b>10. 개인정보의 국외이전</b></p>
<p class="p3">- 회사는 더 나은 서비스를 제공하기 위해 글로벌 아마존 클라우드 서비스를 이용하여 이용자 여러분의 소중한 개인정보를 해외 아마존 클라우드 서버로 이전하여 보관합니다.</p>
<p class="p4"><br></p>
<table cellspacing="0" cellpadding="0" class="t1">
  <tbody>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5"><b>이전항목</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>이전국가</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>이전방법</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>이전받는자</b></p>
        <p class="p5"><b>(정보관리책임자)</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>이용목적</b></p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5"><b>보유기간</b></p>
      </td>
    </tr>
    <tr>
      <td valign="middle" class="td1">
        <p class="p5">서비스 이용기록 또는 수집된 개인정보</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">미국</p>
        <p class="p5">(AWS 버지니아 북부 리전)</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">보안 프로토콜(암호화)을 이용한 온라인 전송</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">Amazon RDS Services, Inc. (Stephen Schmidt,</p>
        <p class="p5">1-206-266-1000)</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">Amazon Cloud Service 이용</p>
      </td>
      <td valign="middle" class="td1">
        <p class="p5">회원 탈퇴 또는 계약 종료 시까지</p>
      </td>
    </tr>
  </tbody>
</table>
<p class="p4"><br></p>
<p class="p1"><b>11. 개인정보 보호책임자 및 담당자</b></p>
<p class="p3">(1) 개인정보 보호책임자는 고객의 개인정보를 보호하고 유출을 방지하는 책임자로서 이용자가 안심하고 회사가 제공하는 서비스를 이용할 수 있도록 도와드리며, 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하여 사고가 발생할 시에는 이에 관한 책임을 집니다.</p>
<p class="p3">(2) 기술적인 보완조치를 취하였음에도 불구하고 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 멸실, 이용자가 작성한 게시물에 의한 각종 분쟁 등에 관해서는 책임이 없습니다.</p>
<p class="p3">(3) 회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에서 규정한 보호책임자를 다음과 같이 지정합니다.</p>
<ul class="ul2">
  <li class="li3">[개인정보 보호책임자]</li>
  <li class="li3">성명: 최동훈</li>
  <li class="li3">직위: CPO</li>
  <li class="li3">메일: dhchoi@station3.co.kr</li>
  <li class="li4"><br/></li>
  <li class="li3">[개인정보보호 담당부서]</li>
  <li class="li3">부서: 운영팀</li>
  <li class="li3">담당: 이준혁</li>
  <li class="li3">메일: jhlee@station3.co.kr</li>
  <li class="li4"><br/></li>
  <li class="li3">[정보보호 담당부서]</li>
  <li class="li3">부서: 서비스개발팀</li>
  <li class="li3">담당: 김용희</li>
  <li class="li3">메일: yhkim@station3.co.kr</li>
</ul>
<p class="p4"><br></p>
<p class="p1"><b>12. 개인정보 열람청구</b></p>
<p class="p3">(1) 회사는 이용자의 개인정보를 보호하고 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 회사는 이용자와의 원활한 의사소통을 위해 고객센터를 운영하고 있으며 연락처는 다음과 같습니다.<br>
</p><ul class="ul2">
  <li class="li3">[고객센터]</li>
  <li class="li3">대표번호 : 1899-6840</li>
  <li class="li3">팩스번호 : 02)554-9774</li>
  <li class="li3">E-mail : hello@dabangapp.com</li>
  <li class="li3">회사주소 : 서울시 서초구 서초대로 301 동익성봉빌딩 11층 ㈜스테이션3</li>
</ul>
<p class="p4">(2) 고객센터 운영시간은 점심시간(12:00~13:00)을 제외한 평일(10:00~19:00), 토요일(10:00~17:00)까지로 공휴일은 운영하지 않습니다.</p>
<p class="p4"><br></p>
<p class="p1"><b>13. 권익침해 구제방법</b></p>
<p class="p4">(1) 개인정보에 관한 권익을 침해 당한 경우, 개인정보 침해신고센터, 대검찰청 컴퓨터 등 첨단범죄 신고, 사이버경찰청 등으로 문의하실 수 있습니다.<br>
</p><ul class="ul2">
  <li class="li3">가. 개인정보 침해신고센터</li>
  <li class="li3">- 전화번호 : (국번없이)118</li>
  <li class="li3">- 홈페이지 : privacy.kisa.or.kr</li>
  <li class="li3"><br></li>
  <li class="li3">나. 개인정보 분쟁조정위원회</li>
  <li class="li3">- 전화번호 : 1833-6972</li>
  <li class="li3">- 홈페이지 : www.kopico.go.kr</li>
  <li class="li3"><br></li>
  <li class="li3">다. 대검찰청 사이버범죄 수사단</li>
  <li class="li3">- 전화번호 : 02)3480-3573</li>
  <li class="li3">- 홈페이지 : www.spo.go.kr</li>
  <li class="li3"><br></li>
  <li class="li3">라. 경찰청 사이버안전국</li>
  <li class="li3">- 전화번호 : 182</li>
  <li class="li3">- 홈페이지 : cyberbureau.police.go.kr</li>
</ul>
<p class="p4"><br></p>
<p class="p1"><b>14. 개인정보 처리방침 변경에 관한 사항</b></p>
<p class="p3">(1) 본 「개인정보 처리방침」은 2017년 10월 20일에 최초 제정되었으며, 정부 및 회사의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 경우에는 개정 최소 7일 전부터 서비스의 ‘공지사항’을 통해 고지합니다.</p>
<ul class="ul2">
  <li class="li3">- 공지일자 : 2018년 3월 16일</li>
  <li class="li3">- 시행일자 : 2018년 3월 23일</li>
</ul>