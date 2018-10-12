
/* Drop Tables */

DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE articles CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE expert CASCADE CONSTRAINTS;
DROP TABLE FAQ CASCADE CONSTRAINTS;
DROP TABLE favorites CASCADE CONSTRAINTS;
DROP TABLE itemcategory CASCADE CONSTRAINTS;
DROP TABLE itemphoto CASCADE CONSTRAINTS;
DROP TABLE item CASCADE CONSTRAINTS;
DROP TABLE market CASCADE CONSTRAINTS;
DROP TABLE marketconditions CASCADE CONSTRAINTS;
DROP TABLE markethistory CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE signupmember CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE statistics CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_ARTICLES_NO;
DROP SEQUENCE SEQ_FAQ_NO;
DROP SEQUENCE SEQ_FAVORITE_F_NO;
DROP SEQUENCE SEQ_ITEMCATEGORY_I_NO;
DROP SEQUENCE SEQ_ITEMPHOTO_P_NO;
DROP SEQUENCE SEQ_ITEM_NO;
DROP SEQUENCE SEQ_QNA_NO;
DROP SEQUENCE SEQ_REVIEW_NO;




/* Create Sequences */

CREATE SEQUENCE SEQ_ARTICLES_NO;
CREATE SEQUENCE SEQ_FAQ_NO;
CREATE SEQUENCE SEQ_FAVORITE_F_NO;
CREATE SEQUENCE SEQ_ITEMCATEGORY_I_NO;
CREATE SEQUENCE SEQ_ITEMPHOTO_P_NO;
CREATE SEQUENCE SEQ_ITEM_NO;
CREATE SEQUENCE SEQ_QNA_NO;
CREATE SEQUENCE SEQ_REVIEW_NO;



/* Create Tables */

-- 관리자
CREATE TABLE admin
(
	-- 아이디
	id varchar2(12) NOT NULL,
	-- 비밀번호
	pwd varchar2(15) NOT NULL,
	-- 관리자 이름
	name nvarchar2(15) NOT NULL,
	PRIMARY KEY (id)
);


-- 보도자료
CREATE TABLE articles
(
	-- 자료 번호
	no number NOT NULL,
	-- 출처
	source nvarchar2(100) NOT NULL,
	-- 제목
	title nvarchar2(50) NOT NULL,
	-- 내용
	content nvarchar2(2000) NOT NULL,
	-- 사진
	photo nvarchar2(100),
	-- 날짜
	regidate date DEFAULT SYSDATE,
	PRIMARY KEY (no)
);


-- 공인중개사 회원
CREATE TABLE expert
(
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 대표 전화번호
	manager_tel varchar2(15) NOT NULL,
	-- 직책
	position nvarchar2(15) NOT NULL,
	-- 권한
	authority nvarchar2(15) NOT NULL,
	-- 공인사무소명
	office_name nvarchar2(15) NOT NULL,
	-- 주소
	address nvarchar2(100) NOT NULL,
	-- 대표자명
	manager_name nvarchar2(15) NOT NULL,
	-- 중개등록번호
	broker_number nvarchar2(20) NOT NULL UNIQUE,
	-- 중개등록증 사진
	broker_photo nvarchar2(100) NOT NULL,
	-- 사업자 등록번호
	business_number nvarchar2(15) NOT NULL,
	-- 사업자 등록번호 사진
	business_photo nvarchar2(100) NOT NULL,
	-- 회원 승인 여부
	isValid char(1) DEFAULT 'N',
	PRIMARY KEY (id)
);


-- 새 테이블
CREATE TABLE FAQ
(
	-- 글 번호
	no number NOT NULL,
	-- 제목
	title nvarchar2(50) NOT NULL,
	-- 내용
	content nvarchar2(2000) NOT NULL,
	-- 등록일
	regidate date DEFAULT SYSDATE,
	PRIMARY KEY (no)
);


-- 찜방
CREATE TABLE favorites
(
	-- 즐겨찾기 등록번호
	f_no number NOT NULL,
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 매물번호
	no number NOT NULL,
	-- 찜 날짜
	regidate date DEFAULT SYSDATE,
	PRIMARY KEY (f_no)
);


-- 매물
CREATE TABLE item
(
	-- 매물번호
	no number NOT NULL,
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 주소
	address nvarchar2(100) NOT NULL,
	-- 상세주소
	address_dedail nvarchar2(50) NOT NULL,
	-- 단기여부
	shortterm char(1) DEFAULT 'N' NOT NULL,
	-- 방종류
	kind nvarchar2(20) NOT NULL,
	-- 건물 층수
	house_floor number NOT NULL,
	-- 해당 층수
	select_floor number NOT NULL,
	-- 공급 면적
	supply_area number NOT NULL,
	-- 전용 면적
	use_area number NOT NULL,
	-- 관리비
	manage_money varchar2(10) NOT NULL,
	-- 관리비 항목
	manage_detail nvarchar2(30) NOT NULL,
	-- 주차 여부
	parking char(1) DEFAULT 'N' NOT NULL,
	-- 난방 종류
	heating nvarchar2(10) NOT NULL,
	-- 입주가능일
	moving_date nvarchar2(10) DEFAULT '즉시 입주',
	-- 옵션 항목
	room_option nvarchar2(50) NOT NULL,
	-- 제목
	title nvarchar2(50) NOT NULL,
	-- 내용
	content nvarchar2(2000) NOT NULL,
	-- 작성 날짜
	regidate date DEFAULT SYSDATE NOT NULL,
	-- 경도
	x number NOT NULL,
	-- 위도
	y number NOT NULL,
	PRIMARY KEY (no)
);


-- 거래 종류
CREATE TABLE itemcategory
(
	-- 매물 종류 번호
	i_no number NOT NULL,
	-- 매물번호
	no number NOT NULL,
	-- 거래 종류
	deal_kind nvarchar2(10) NOT NULL,
	-- 보증금
	deposit number NOT NULL,
	-- 월세
	pay number DEFAULT 0,
	PRIMARY KEY (i_no)
);


-- 매물 사진
CREATE TABLE itemphoto
(
	-- 사진 번호
	p_no number NOT NULL,
	-- 매물번호
	no number NOT NULL,
	-- 사진 경로
	path nvarchar2(100) NOT NULL,
	PRIMARY KEY (p_no)
);


-- 경매 매물
CREATE TABLE market
(

);


-- 시세관련 테이블
CREATE TABLE marketconditions
(

);


-- 경매 입찰 내역
CREATE TABLE markethistory
(

);


-- 일반회원
CREATE TABLE member
(
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 이름
	name nvarchar2(15) NOT NULL,
	-- tel
	tel varchar2(15) NOT NULL,
	-- 가입일
	regidate date DEFAULT SYSDATE,
	-- 회원 종류 : default : general
	-- expert / naver / ... 등등
	kind nvarchar2(30) DEFAULT 'general',
	PRIMARY KEY (id)
);


-- 1대1 문의
CREATE TABLE QNA
(
	-- 문의 번호
	no number NOT NULL,
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 제목
	title nvarchar2(50) NOT NULL,
	-- 내용
	content nvarchar2(2000) NOT NULL,
	-- 등록일
	regidate date DEFAULT SYSDATE,
	-- 답변
	admin_comment nvarchar2(2000) NOT NULL,
	-- 답변일
	commentdate date,
	PRIMARY KEY (no)
);


-- 평가보기
CREATE TABLE review
(
	-- 리뷰 등록 번호
	no number NOT NULL,
	-- 공인중개사 아이디
	expert_id varchar2(30) NOT NULL,
	-- 평가하는 유저 아이디
	user_id varchar2(30) NOT NULL,
	-- 점수
	score number DEFAULT 0 NOT NULL,
	-- 작성일
	regidate date DEFAULT SYSDATE,
	-- 평가 내용
	content nvarchar2(100),
	PRIMARY KEY (no)
);


-- 홈페이지 회원가입 회원
CREATE TABLE signupmember
(
	-- 아이디
	id varchar2(30) NOT NULL,
	-- 비밀번호
	pwd varchar2(15) NOT NULL,
	PRIMARY KEY (id)
);


-- 통계
CREATE TABLE statistics
(

);



/* Create Foreign Keys */

ALTER TABLE review
	ADD FOREIGN KEY (expert_id)
	REFERENCES expert (id)
	ON DELETE CASCADE
;


ALTER TABLE favorites
	ADD FOREIGN KEY (no)
	REFERENCES item (no)
	ON DELETE CASCADE
;


ALTER TABLE itemcategory
	ADD FOREIGN KEY (no)
	REFERENCES item (no)
	ON DELETE CASCADE
;


ALTER TABLE itemphoto
	ADD FOREIGN KEY (no)
	REFERENCES item (no)
	ON DELETE CASCADE
;


ALTER TABLE expert
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON DELETE CASCADE
;


ALTER TABLE favorites
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON DELETE CASCADE
;


ALTER TABLE item
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON DELETE CASCADE
;


ALTER TABLE QNA
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON DELETE CASCADE
;


ALTER TABLE review
	ADD FOREIGN KEY (user_id)
	REFERENCES member (id)
	ON DELETE CASCADE
;


ALTER TABLE signupmember
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON DELETE CASCADE
;



/* Comments */

COMMENT ON TABLE admin IS '관리자';
COMMENT ON COLUMN admin.id IS '아이디';
COMMENT ON COLUMN admin.pwd IS '비밀번호';
COMMENT ON COLUMN admin.name IS '관리자 이름';
COMMENT ON TABLE articles IS '보도자료';
COMMENT ON COLUMN articles.no IS '자료 번호';
COMMENT ON COLUMN articles.source IS '출처';
COMMENT ON COLUMN articles.title IS '제목';
COMMENT ON COLUMN articles.content IS '내용';
COMMENT ON COLUMN articles.photo IS '사진';
COMMENT ON COLUMN articles.regidate IS '날짜';
COMMENT ON TABLE expert IS '공인중개사 회원';
COMMENT ON COLUMN expert.id IS '아이디';
COMMENT ON COLUMN expert.manager_tel IS '대표 전화번호';
COMMENT ON COLUMN expert.position IS '직책';
COMMENT ON COLUMN expert.authority IS '권한';
COMMENT ON COLUMN expert.office_name IS '공인사무소명';
COMMENT ON COLUMN expert.address IS '주소';
COMMENT ON COLUMN expert.manager_name IS '대표자명';
COMMENT ON COLUMN expert.broker_number IS '중개등록번호';
COMMENT ON COLUMN expert.broker_photo IS '중개등록증 사진';
COMMENT ON COLUMN expert.business_number IS '사업자 등록번호';
COMMENT ON COLUMN expert.business_photo IS '사업자 등록번호 사진';
COMMENT ON COLUMN expert.isValid IS '회원 승인 여부';
COMMENT ON TABLE FAQ IS '새 테이블';
COMMENT ON COLUMN FAQ.no IS '글 번호';
COMMENT ON COLUMN FAQ.title IS '제목';
COMMENT ON COLUMN FAQ.content IS '내용';
COMMENT ON COLUMN FAQ.regidate IS '등록일';
COMMENT ON TABLE favorites IS '찜방';
COMMENT ON COLUMN favorites.f_no IS '즐겨찾기 등록번호';
COMMENT ON COLUMN favorites.id IS '아이디';
COMMENT ON COLUMN favorites.no IS '매물번호';
COMMENT ON COLUMN favorites.regidate IS '찜 날짜';
COMMENT ON TABLE item IS '매물';
COMMENT ON COLUMN item.no IS '매물번호';
COMMENT ON COLUMN item.id IS '아이디';
COMMENT ON COLUMN item.address IS '주소';
COMMENT ON COLUMN item.address_dedail IS '상세주소';
COMMENT ON COLUMN item.shortterm IS '단기여부';
COMMENT ON COLUMN item.kind IS '방종류';
COMMENT ON COLUMN item.house_floor IS '건물 층수';
COMMENT ON COLUMN item.select_floor IS '해당 층수';
COMMENT ON COLUMN item.supply_area IS '공급 면적';
COMMENT ON COLUMN item.use_area IS '전용 면적';
COMMENT ON COLUMN item.manage_money IS '관리비';
COMMENT ON COLUMN item.manage_detail IS '관리비 항목';
COMMENT ON COLUMN item.parking IS '주차 여부';
COMMENT ON COLUMN item.heating IS '난방 종류';
COMMENT ON COLUMN item.moving_date IS '입주가능일';
COMMENT ON COLUMN item.room_option IS '옵션 항목';
COMMENT ON COLUMN item.title IS '제목';
COMMENT ON COLUMN item.content IS '내용';
COMMENT ON COLUMN item.regidate IS '작성 날짜';
COMMENT ON COLUMN item.x IS '경도';
COMMENT ON COLUMN item.y IS '위도';
COMMENT ON TABLE itemcategory IS '거래 종류';
COMMENT ON COLUMN itemcategory.i_no IS '매물 종류 번호';
COMMENT ON COLUMN itemcategory.no IS '매물번호';
COMMENT ON COLUMN itemcategory.deal_kind IS '거래 종류';
COMMENT ON COLUMN itemcategory.deposit IS '보증금';
COMMENT ON COLUMN itemcategory.pay IS '월세';
COMMENT ON TABLE itemphoto IS '매물 사진';
COMMENT ON COLUMN itemphoto.p_no IS '사진 번호';
COMMENT ON COLUMN itemphoto.no IS '매물번호';
COMMENT ON COLUMN itemphoto.path IS '사진 경로';
COMMENT ON TABLE market IS '경매 매물';
COMMENT ON TABLE marketconditions IS '시세관련 테이블';
COMMENT ON TABLE markethistory IS '경매 입찰 내역';
COMMENT ON TABLE member IS '일반회원';
COMMENT ON COLUMN member.id IS '아이디';
COMMENT ON COLUMN member.name IS '이름';
COMMENT ON COLUMN member.tel IS 'tel';
COMMENT ON COLUMN member.regidate IS '가입일';
COMMENT ON COLUMN member.kind IS '회원 종류 : default : general
expert / naver / ... 등등';
COMMENT ON TABLE QNA IS '1대1 문의';
COMMENT ON COLUMN QNA.no IS '문의 번호';
COMMENT ON COLUMN QNA.id IS '아이디';
COMMENT ON COLUMN QNA.title IS '제목';
COMMENT ON COLUMN QNA.content IS '내용';
COMMENT ON COLUMN QNA.regidate IS '등록일';
COMMENT ON COLUMN QNA.admin_comment IS '답변';
COMMENT ON COLUMN QNA.commentdate IS '답변일';
COMMENT ON TABLE review IS '평가보기';
COMMENT ON COLUMN review.no IS '리뷰 등록 번호';
COMMENT ON COLUMN review.expert_id IS '공인중개사 아이디';
COMMENT ON COLUMN review.user_id IS '평가하는 유저 아이디';
COMMENT ON COLUMN review.score IS '점수';
COMMENT ON COLUMN review.regidate IS '작성일';
COMMENT ON COLUMN review.content IS '평가 내용';
COMMENT ON TABLE signupmember IS '홈페이지 회원가입 회원';
COMMENT ON COLUMN signupmember.id IS '아이디';
COMMENT ON COLUMN signupmember.pwd IS '비밀번호';
COMMENT ON TABLE statistics IS '통계';



