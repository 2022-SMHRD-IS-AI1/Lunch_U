-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- t_member Table Create SQL
-- 테이블 생성 SQL - t_member
CREATE TABLE t_member
(
    mem_id                  VARCHAR2(20)     NOT NULL, 
    mem_pw                  VARCHAR2(20)     NOT NULL, 
    mem_addr                VARCHAR2(500)    NOT NULL, 
    mem_visit_restaurant    VARCHAR2(30)     NULL, 
    mem_pref_category       VARCHAR2(20)     NOT NULL, 
    mem_joindate            DATE             DEFAULT SYSDATE NOT NULL, 
    mem_type                CHAR(1)          DEFAULT 'M' NOT NULL, 
     PRIMARY KEY (mem_id)
);

select * from T_MEMBER;
-- 테이블 Comment 설정 SQL - t_member
COMMENT ON TABLE t_member IS '회원';

-- 컬럼 Comment 설정 SQL - t_member.mem_id
COMMENT ON COLUMN t_member.mem_id IS '회원 아이디';

-- 컬럼 Comment 설정 SQL - t_member.mem_pw
COMMENT ON COLUMN t_member.mem_pw IS '회원 비밀번호';

-- 컬럼 Comment 설정 SQL - t_member.mem_addr
COMMENT ON COLUMN t_member.mem_addr IS '회원 주소';

-- 컬럼 Comment 설정 SQL - t_member.mem_visit_restaurant
COMMENT ON COLUMN t_member.mem_visit_restaurant IS '회원  방문식당';

-- 컬럼 Comment 설정 SQL - t_member.mem_pref_category
COMMENT ON COLUMN t_member.mem_pref_category IS '회원 선호카테고리';

-- 컬럼 Comment 설정 SQL - t_member.mem_joindate
COMMENT ON COLUMN t_member.mem_joindate IS '회원 가입일자';

-- 컬럼 Comment 설정 SQL - t_member.mem_type
COMMENT ON COLUMN t_member.mem_type IS '회원 유형. 회원:''M'', 관리자:''A''';


-- t_category Table Create SQL
-- 테이블 생성 SQL - t_category
CREATE TABLE t_category
(
    cate_seq     NUMBER(18, 0)    NOT NULL, 
    cate_name    VARCHAR2(30)     NOT NULL, 
     PRIMARY KEY (cate_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_category.cate_seq
CREATE SEQUENCE t_category_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_category.cate_seq
CREATE OR REPLACE TRIGGER t_category_AI_TRG
BEFORE INSERT ON t_category 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_category_SEQ.NEXTVAL
    INTO :NEW.cate_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_category_AI_TRG; 

-- DROP SEQUENCE t_category_SEQ; 

-- 테이블 Comment 설정 SQL - t_category
COMMENT ON TABLE t_category IS '카테고리';

-- 컬럼 Comment 설정 SQL - t_category.cate_seq
COMMENT ON COLUMN t_category.cate_seq IS '카테고리 번호';

-- 컬럼 Comment 설정 SQL - t_category.cate_name
COMMENT ON COLUMN t_category.cate_name IS '카테고리 명';


-- t_restaurant Table Create SQL
-- 테이블 생성 SQL - t_restaurant
CREATE TABLE t_restaurant
(
    rest_seq     NUMBER(18, 0)    NOT NULL, 
    rest_name    VARCHAR2(30)     NOT NULL, 
    rest_addr    VARCHAR2(500)    NOT NULL, 
    cate_seq     NUMBER(18, 0)    NOT NULL, 
    rest_tel     VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (rest_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_restaurant.rest_seq
CREATE SEQUENCE t_restaurant_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_restaurant.rest_seq
CREATE OR REPLACE TRIGGER t_restaurant_AI_TRG
BEFORE INSERT ON t_restaurant 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_restaurant_SEQ.NEXTVAL
    INTO :NEW.rest_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_restaurant_AI_TRG; 

-- DROP SEQUENCE t_restaurant_SEQ; 

-- 테이블 Comment 설정 SQL - t_restaurant
COMMENT ON TABLE t_restaurant IS '음식점';

-- 컬럼 Comment 설정 SQL - t_restaurant.rest_seq
COMMENT ON COLUMN t_restaurant.rest_seq IS '음식점 번호';

-- 컬럼 Comment 설정 SQL - t_restaurant.rest_name
COMMENT ON COLUMN t_restaurant.rest_name IS '음식점 명';

-- 컬럼 Comment 설정 SQL - t_restaurant.rest_addr
COMMENT ON COLUMN t_restaurant.rest_addr IS '음식점 주소';

-- 컬럼 Comment 설정 SQL - t_restaurant.cate_seq
COMMENT ON COLUMN t_restaurant.cate_seq IS '카테고리 순번';

-- 컬럼 Comment 설정 SQL - t_restaurant.rest_tel
COMMENT ON COLUMN t_restaurant.rest_tel IS '음식점 연락처';

-- Foreign Key 설정 SQL - t_restaurant(cate_seq) -> t_category(cate_seq)
ALTER TABLE t_restaurant
    ADD CONSTRAINT FK_t_restaurant_cate_seq_t_cat FOREIGN KEY (cate_seq)
        REFERENCES t_category (cate_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_restaurant(cate_seq)
-- ALTER TABLE t_restaurant
-- DROP CONSTRAINT FK_t_restaurant_cate_seq_t_cat;


-- t_group Table Create SQL
-- 테이블 생성 SQL - t_group
CREATE TABLE t_group
(
    group_seq     NUMBER(18, 0)    NOT NULL, 
    group_name    VARCHAR2(30)     NOT NULL, 
    group_dt      DATE             NOT NULL, 
    admin_id      VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (group_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_group.group_seq
CREATE SEQUENCE t_group_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_group.group_seq
CREATE OR REPLACE TRIGGER t_group_AI_TRG
BEFORE INSERT ON t_group 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_group_SEQ.NEXTVAL
    INTO :NEW.group_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_group_AI_TRG; 

-- DROP SEQUENCE t_group_SEQ; 

-- 테이블 Comment 설정 SQL - t_group
COMMENT ON TABLE t_group IS '그룹';

-- 컬럼 Comment 설정 SQL - t_group.group_seq
COMMENT ON COLUMN t_group.group_seq IS '그룹 순번';

-- 컬럼 Comment 설정 SQL - t_group.group_name
COMMENT ON COLUMN t_group.group_name IS '그룹 명';

-- 컬럼 Comment 설정 SQL - t_group.group_dt
COMMENT ON COLUMN t_group.group_dt IS '그룹 생성일자';

-- 컬럼 Comment 설정 SQL - t_group.admin_id
COMMENT ON COLUMN t_group.admin_id IS '그룹 관리자';

-- Foreign Key 설정 SQL - t_group(admin_id) -> t_member(mem_id)
ALTER TABLE t_group
    ADD CONSTRAINT FK_t_group_admin_id_t_member_m FOREIGN KEY (admin_id)
        REFERENCES t_member (mem_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_group(admin_id)
-- ALTER TABLE t_group
-- DROP CONSTRAINT FK_t_group_admin_id_t_member_m;


-- t_review_deleted Table Create SQL
-- 테이블 생성 SQL - t_review_deleted
CREATE TABLE t_review_deleted
(
    rv_delete_seq     NUMBER(18, 0)     NOT NULL, 
    rv_seq            NUMBER(18, 0)     NOT NULL, 
    rest_seq          NUMBER(18, 0)     NOT NULL, 
    rv_content        VARCHAR2(4000)    NOT NULL, 
    rv_rating         NUMBER(18, 2)     NOT NULL, 
    rv_dt             DATE              NOT NULL, 
    mem_id            VARCHAR2(20)      NOT NULL, 
    rv_delete_time    DATE              DEFAULT SYSDATE NULL, 
     PRIMARY KEY (rv_delete_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_review_deleted.rv_delete_seq
CREATE SEQUENCE t_review_deleted_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_review_deleted.rv_delete_seq
CREATE OR REPLACE TRIGGER t_review_deleted_AI_TRG
BEFORE INSERT ON t_review_deleted 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_review_deleted_SEQ.NEXTVAL
    INTO :NEW.rv_delete_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_review_deleted_AI_TRG; 

-- DROP SEQUENCE t_review_deleted_SEQ; 

-- 테이블 Comment 설정 SQL - t_review_deleted
COMMENT ON TABLE t_review_deleted IS '리뷰삭제(관리자용)';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_delete_seq
COMMENT ON COLUMN t_review_deleted.rv_delete_seq IS '리뷰 삭제 순번';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_seq
COMMENT ON COLUMN t_review_deleted.rv_seq IS '원래 리뷰 순번';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rest_seq
COMMENT ON COLUMN t_review_deleted.rest_seq IS '식당 순번';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_content
COMMENT ON COLUMN t_review_deleted.rv_content IS '리뷰 내용';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_rating
COMMENT ON COLUMN t_review_deleted.rv_rating IS '리뷰 평점';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_dt
COMMENT ON COLUMN t_review_deleted.rv_dt IS '리뷰 날짜';

-- 컬럼 Comment 설정 SQL - t_review_deleted.mem_id
COMMENT ON COLUMN t_review_deleted.mem_id IS '작성자 아이디';

-- 컬럼 Comment 설정 SQL - t_review_deleted.rv_delete_time
COMMENT ON COLUMN t_review_deleted.rv_delete_time IS '삭제 시간';


-- t_reservation Table Create SQL
-- 테이블 생성 SQL - t_reservation
CREATE TABLE t_reservation
(
    reserv_seq     NUMBER(18, 0)    NOT NULL, 
    rest_seq       NUMBER(18, 0)    NOT NULL, 
    reserv_time    VARCHAR2(20)     NOT NULL, 
    reserv_date    VARCHAR2(8)      NOT NULL, 
    mem_id         VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (reserv_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_reservation.reserv_seq
CREATE SEQUENCE t_reservation_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_reservation.reserv_seq
CREATE OR REPLACE TRIGGER t_reservation_AI_TRG
BEFORE INSERT ON t_reservation 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_reservation_SEQ.NEXTVAL
    INTO :NEW.reserv_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_reservation_AI_TRG; 

-- DROP SEQUENCE t_reservation_SEQ; 

-- 테이블 Comment 설정 SQL - t_reservation
COMMENT ON TABLE t_reservation IS '예약';

-- 컬럼 Comment 설정 SQL - t_reservation.reserv_seq
COMMENT ON COLUMN t_reservation.reserv_seq IS '예약 순번';

-- 컬럼 Comment 설정 SQL - t_reservation.rest_seq
COMMENT ON COLUMN t_reservation.rest_seq IS '예약 식당 순번';

-- 컬럼 Comment 설정 SQL - t_reservation.reserv_time
COMMENT ON COLUMN t_reservation.reserv_time IS '예약 시간';

-- 컬럼 Comment 설정 SQL - t_reservation.reserv_date
COMMENT ON COLUMN t_reservation.reserv_date IS '예약 날짜';

-- 컬럼 Comment 설정 SQL - t_reservation.mem_id
COMMENT ON COLUMN t_reservation.mem_id IS '예약자 아이디';

-- Foreign Key 설정 SQL - t_reservation(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_reservation
    ADD CONSTRAINT FK_t_reservation_rest_seq_t_re FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_reservation(rest_seq)
-- ALTER TABLE t_reservation
-- DROP CONSTRAINT FK_t_reservation_rest_seq_t_re;

-- Foreign Key 설정 SQL - t_reservation(mem_id) -> t_member(mem_id)
ALTER TABLE t_reservation
    ADD CONSTRAINT FK_t_reservation_mem_id_t_memb FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_reservation(mem_id)
-- ALTER TABLE t_reservation
-- DROP CONSTRAINT FK_t_reservation_mem_id_t_memb;


-- t_review Table Create SQL
-- 테이블 생성 SQL - t_review
CREATE TABLE t_review
(
    rv_seq        NUMBER(18, 0)     NOT NULL, 
    rest_seq      NUMBER(18, 0)     NOT NULL, 
    rv_content    VARCHAR2(4000)    NOT NULL, 
    rv_rating     NUMBER(18, 2)     NOT NULL, 
    rv_dt         DATE              NOT NULL, 
    mem_id        VARCHAR2(20)      NOT NULL, 
     PRIMARY KEY (rv_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_review.rv_seq
CREATE SEQUENCE t_review_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_review.rv_seq
CREATE OR REPLACE TRIGGER t_review_AI_TRG
BEFORE INSERT ON t_review 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_review_SEQ.NEXTVAL
    INTO :NEW.rv_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_review_AI_TRG; 

-- DROP SEQUENCE t_review_SEQ; 

-- 테이블 Comment 설정 SQL - t_review
COMMENT ON TABLE t_review IS '리뷰';

-- 컬럼 Comment 설정 SQL - t_review.rv_seq
COMMENT ON COLUMN t_review.rv_seq IS '리뷰 순번';

-- 컬럼 Comment 설정 SQL - t_review.rest_seq
COMMENT ON COLUMN t_review.rest_seq IS '식당 순번';

-- 컬럼 Comment 설정 SQL - t_review.rv_content
COMMENT ON COLUMN t_review.rv_content IS '리뷰 내용';

-- 컬럼 Comment 설정 SQL - t_review.rv_rating
COMMENT ON COLUMN t_review.rv_rating IS '리뷰 평점';

-- 컬럼 Comment 설정 SQL - t_review.rv_dt
COMMENT ON COLUMN t_review.rv_dt IS '리뷰 날짜';

-- 컬럼 Comment 설정 SQL - t_review.mem_id
COMMENT ON COLUMN t_review.mem_id IS '작성자 아이디';

-- Foreign Key 설정 SQL - t_review(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_review
    ADD CONSTRAINT FK_t_review_rest_seq_t_restaur FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_review(rest_seq)
-- ALTER TABLE t_review
-- DROP CONSTRAINT FK_t_review_rest_seq_t_restaur;

-- Foreign Key 설정 SQL - t_review(mem_id) -> t_member(mem_id)
ALTER TABLE t_review
    ADD CONSTRAINT FK_t_review_mem_id_t_member_me FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_review(mem_id)
-- ALTER TABLE t_review
-- DROP CONSTRAINT FK_t_review_mem_id_t_member_me;


-- t_rest_group Table Create SQL
-- 테이블 생성 SQL - t_rest_group
CREATE TABLE t_rest_group
(
    rg_seq       NUMBER(18, 0)    NOT NULL, 
    rest_seq     NUMBER(18, 0)    NOT NULL, 
    group_seq    NUMBER(18, 0)    NOT NULL, 
    rg_dt        DATE             NOT NULL, 
     PRIMARY KEY (rg_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_rest_group.rg_seq
CREATE SEQUENCE t_rest_group_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_rest_group.rg_seq
CREATE OR REPLACE TRIGGER t_rest_group_AI_TRG
BEFORE INSERT ON t_rest_group 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_rest_group_SEQ.NEXTVAL
    INTO :NEW.rg_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_rest_group_AI_TRG; 

-- DROP SEQUENCE t_rest_group_SEQ; 

-- 테이블 Comment 설정 SQL - t_rest_group
COMMENT ON TABLE t_rest_group IS '식당 그룹';

-- 컬럼 Comment 설정 SQL - t_rest_group.rg_seq
COMMENT ON COLUMN t_rest_group.rg_seq IS '식당그룹 순번';

-- 컬럼 Comment 설정 SQL - t_rest_group.rest_seq
COMMENT ON COLUMN t_rest_group.rest_seq IS '식당 순번';

-- 컬럼 Comment 설정 SQL - t_rest_group.group_seq
COMMENT ON COLUMN t_rest_group.group_seq IS '그룹 순번';

-- 컬럼 Comment 설정 SQL - t_rest_group.rg_dt
COMMENT ON COLUMN t_rest_group.rg_dt IS '식당그룹 날짜';

-- Foreign Key 설정 SQL - t_rest_group(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_rest_group
    ADD CONSTRAINT FK_t_rest_group_rest_seq_t_res FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_rest_group(rest_seq)
-- ALTER TABLE t_rest_group
-- DROP CONSTRAINT FK_t_rest_group_rest_seq_t_res;

-- Foreign Key 설정 SQL - t_rest_group(group_seq) -> t_group(group_seq)
ALTER TABLE t_rest_group
    ADD CONSTRAINT FK_t_rest_group_group_seq_t_gr FOREIGN KEY (group_seq)
        REFERENCES t_group (group_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_rest_group(group_seq)
-- ALTER TABLE t_rest_group
-- DROP CONSTRAINT FK_t_rest_group_group_seq_t_gr;


-- t_joingroup Table Create SQL
-- 테이블 생성 SQL - t_joingroup
CREATE TABLE t_joingroup
(
    join_seq     NUMBER(18, 0)    NOT NULL, 
    mem_id       VARCHAR2(20)     NOT NULL, 
    group_seq    NUMBER(18, 0)    NOT NULL, 
    join_dt      DATE             NOT NULL, 
     PRIMARY KEY (join_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_joingroup.join_seq
CREATE SEQUENCE t_joingroup_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - t_joingroup.join_seq
CREATE OR REPLACE TRIGGER t_joingroup_AI_TRG
BEFORE INSERT ON t_joingroup 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_joingroup_SEQ.NEXTVAL
    INTO :NEW.join_seq
    FROM DUAL;
END;

-- DROP TRIGGER t_joingroup_AI_TRG; 

-- DROP SEQUENCE t_joingroup_SEQ; 

-- 테이블 Comment 설정 SQL - t_joingroup
COMMENT ON TABLE t_joingroup IS '그룹 가입';

-- 컬럼 Comment 설정 SQL - t_joingroup.join_seq
COMMENT ON COLUMN t_joingroup.join_seq IS '가입 순번';

-- 컬럼 Comment 설정 SQL - t_joingroup.mem_id
COMMENT ON COLUMN t_joingroup.mem_id IS '회원 아이디';

-- 컬럼 Comment 설정 SQL - t_joingroup.group_seq
COMMENT ON COLUMN t_joingroup.group_seq IS '그룹 순번';

-- 컬럼 Comment 설정 SQL - t_joingroup.join_dt
COMMENT ON COLUMN t_joingroup.join_dt IS '가입 날짜';

-- Foreign Key 설정 SQL - t_joingroup(mem_id) -> t_member(mem_id)
ALTER TABLE t_joingroup
    ADD CONSTRAINT FK_t_joingroup_mem_id_t_member FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_joingroup(mem_id)
-- ALTER TABLE t_joingroup
-- DROP CONSTRAINT FK_t_joingroup_mem_id_t_member;

-- Foreign Key 설정 SQL - t_joingroup(group_seq) -> t_group(group_seq)
ALTER TABLE t_joingroup
    ADD CONSTRAINT FK_t_joingroup_group_seq_t_gro FOREIGN KEY (group_seq)
        REFERENCES t_group (group_seq) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - t_joingroup(group_seq)
-- ALTER TABLE t_joingroup
-- DROP CONSTRAINT FK_t_joingroup_group_seq_t_gro;


