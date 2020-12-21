-- 문제 1
-- mydb를 만들고, 아래와 같이 테이블을 만들어라.

-- 테이블명: dept

-- 열이름      데이터 형식      NULL허용     pk
-- --------------------------------------
-- DEPTNO    INT             x         O
-- DNAME     VARCHAR(14)     x     
-- LOC       VARCHAR(30)     o

create database mydb;

use mydb;

create table dept (
	DEPTNO INT not null,
    DNAME VARCHAR(14) not null,
    LOC VARCHAR(30),
    primary key(DEPTNO)
);

-- 문제 2
-- 만들어진 DEPT 테이블에 아래의 데이터를 추가 하라.
-- 10, '경리부', '서울'
-- 20, '인사부', '인천'
-- 30, '영업부', '용인'
-- 40, '전산부', '수원'

insert into dept values (10, '경리부', '서울');
insert into dept values (20, '인사부', '인천');
insert into dept values (30, '영업부', '용인');
insert into dept values (40, '전산부', '수원');

desc dept;     

select *
   from dept;
   
 use shopdb;   # 사용할 데이터베이스 지정
 
 drop table dept;    # 테이블 제거 명령
 
 use mydb;    # 사용할 데이터베이스 지정
 
   
