-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.


-- 테이블 삭제 
drop table t_group cascade constraints;
drop table t_joingroup cascade constraints;
drop table t_member cascade constraints;
drop table t_reservation cascade constraints;
drop table t_rest_group cascade constraints;
drop table t_restaurant cascade constraints;
drop table t_review cascade constraints;
drop table t_review_deleted cascade constraints;



-- 시퀀스 삭제
drop sequence t_group_seq;
drop sequence t_joingroup_seq;
drop sequence t_reservation_seq;
drop sequence t_rest_group_seq;
drop sequence t_restaurant_seq;
drop sequence t_reveiw_seq;
drop sequence t_review_deleted_seq;



-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- t_member Table Create SQL
-- 테이블 생성 SQL - t_member
CREATE TABLE t_member
(
    mem_id                  VARCHAR2(20)     NOT NULL, 
    mem_pw                  VARCHAR2(20)     NOT NULL, 
    mem_addr                VARCHAR2(500)    NOT NULL, 
    mem_visit_restaurant    VARCHAR2(30),
    mem_pref_category       VARCHAR2(500)     NOT NULL, 
    mem_joindate            DATE             DEFAULT SYSDATE NOT NULL, 
    mem_type                CHAR(1)          DEFAULT 'M' NOT NULL, 
     PRIMARY KEY (mem_id)
);

-- t_restaurant Table Create SQL
-- 테이블 생성 SQL - t_restaurant
CREATE TABLE t_restaurant
(
    rest_seq     NUMBER(18, 0)    NOT NULL, 
    rest_name    VARCHAR2(50)     NOT NULL, 
    rest_addr    VARCHAR2(500)    NOT NULL, 
    cate_seq     NUMBER(18, 0)    NOT NULL, 
    rest_tel     VARCHAR2(20)     NOT NULL,
    rest_rating     NUMBER(18, 2)     NOT NULL,
    rest_lat     NUMBER(18, 2)     NOT NULL, 
    rest_lon     NUMBER(18, 2)     NOT NULL, 
     PRIMARY KEY (rest_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - t_restaurant.rest_seq
CREATE SEQUENCE t_restaurant_SEQ
START WITH 1
INCREMENT BY 1;



-- DROP SEQUENCE t_restaurant_SEQ; 


select * from t_review;
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


select * from t_group;
-- DROP SEQUENCE t_group_SEQ; 


-- Foreign Key 설정 SQL - t_group(admin_id) -> t_member(mem_id)
ALTER TABLE t_group
    ADD CONSTRAINT FK_t_group_admin_id_t_member_m FOREIGN KEY (admin_id)
        REFERENCES t_member (mem_id)  ;

-- Foreign Key 삭제 SQL - t_group(admin_id)
-- ALTER TABLE t_group
-- DROP CONSTRAINT FK_t_group_admin_id_t_member_m;
select * from t_restaurant;
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



-- DROP SEQUENCE t_joingroup_SEQ; 


-- Foreign Key 설정 SQL - t_joingroup(mem_id) -> t_member(mem_id)
ALTER TABLE t_joingroup
    ADD CONSTRAINT FK_t_joingroup_mem_id_t_member FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id)  ;

-- Foreign Key 삭제 SQL - t_joingroup(mem_id)
-- ALTER TABLE t_joingroup
-- DROP CONSTRAINT FK_t_joingroup_mem_id_t_member;

-- Foreign Key 설정 SQL - t_joingroup(group_seq) -> t_group(group_seq)
ALTER TABLE t_joingroup
    ADD CONSTRAINT FK_t_joingroup_group_seq_t_gro FOREIGN KEY (group_seq)
        REFERENCES t_group (group_seq)  ;

-- Foreign Key 삭제 SQL - t_joingroup(group_seq)
-- ALTER TABLE t_joingroup
-- DROP CONSTRAINT FK_t_joingroup_group_seq_t_gro;

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



-- DROP SEQUENCE t_rest_group_SEQ; 

-- Foreign Key 설정 SQL - t_rest_group(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_rest_group
    ADD CONSTRAINT FK_t_rest_group_rest_seq_t_res FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq)  ;

-- Foreign Key 삭제 SQL - t_rest_group(rest_seq)
-- ALTER TABLE t_rest_group
-- DROP CONSTRAINT FK_t_rest_group_rest_seq_t_res;

-- Foreign Key 설정 SQL - t_rest_group(group_seq) -> t_group(group_seq)
ALTER TABLE t_rest_group
    ADD CONSTRAINT FK_t_rest_group_group_seq_t_gr FOREIGN KEY (group_seq)
        REFERENCES t_group (group_seq)  ;

-- Foreign Key 삭제 SQL - t_rest_group(group_seq)
-- ALTER TABLE t_rest_group
-- DROP CONSTRAINT FK_t_rest_group_group_seq_t_gr;


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



-- DROP SEQUENCE t_review_SEQ; 

-- Foreign Key 설정 SQL - t_review(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_review
    ADD CONSTRAINT FK_t_review_rest_seq_t_restaur FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq)  ;

-- Foreign Key 삭제 SQL - t_review(rest_seq)
-- ALTER TABLE t_review
-- DROP CONSTRAINT FK_t_review_rest_seq_t_restaur;

-- Foreign Key 설정 SQL - t_review(mem_id) -> t_member(mem_id)
ALTER TABLE t_review
    ADD CONSTRAINT FK_t_review_mem_id_t_member_me FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id)  ;

-- Foreign Key 삭제 SQL - t_review(mem_id)
-- ALTER TABLE t_review
-- DROP CONSTRAINT FK_t_review_mem_id_t_member_me;


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


-- Foreign Key 설정 SQL - t_reservation(rest_seq) -> t_restaurant(rest_seq)
ALTER TABLE t_reservation
    ADD CONSTRAINT FK_t_reservation_rest_seq_t_re FOREIGN KEY (rest_seq)
        REFERENCES t_restaurant (rest_seq)  ;

-- Foreign Key 삭제 SQL - t_reservation(rest_seq)
-- ALTER TABLE t_reservation
-- DROP CONSTRAINT FK_t_reservation_rest_seq_t_re;

-- Foreign Key 설정 SQL - t_reservation(mem_id) -> t_member(mem_id)
ALTER TABLE t_reservation
    ADD CONSTRAINT FK_t_reservation_mem_id_t_memb FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id);

-- Foreign Key 삭제 SQL - t_reservation(mem_id)
-- ALTER TABLE t_reservation
-- DROP CONSTRAINT FK_t_reservation_mem_id_t_memb;


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


-- DROP SEQUENCE t_review_deleted_SEQ; 


