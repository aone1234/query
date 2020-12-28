-- 문제 3
-- 만들어 놓은 mydb에 아래와 같이 테이블을 만들어라

-- 테이블명 : dept2

-- 열이름        데이터 형식      null 허용      PK
-- ---------------------------------------------
-- deptNo        int             x           o
-- deptName      char(10)        x          
-- job           char(5)         x    
-- sal           int             x
drop table dept2;    -- 테이블 삭제

use mydb;

create table dept2(
	deptNo int not null,
    deptName char(10) not null,
    job char(5) not null,
    sal int not null,
    primary key (deptNo)
);

desc dept2;
   
-- 문제 4
-- 만들어진 dept2 테이블에 아래의 데이터를 추가하라.
-- 10, '인사팀', '사원', 250
-- 20, '재무팀', '대리', 300   
-- 30, '법무팀', '과장', 350
-- 40, '영업팀', '사원', 250
-- 50, '설계팀', '부장', 500

insert into dept2 values (10, '인사팀', '사원', 250),
						 (20, '재무팀', '대리', 300),
						 (30, '법무팀', '과장', 350),
						 (40, '영업팀', '사원', 250),
						 (50, '설계팀', '부장', 500);

select * from dept2;

-- 문제 5
-- dept 2 테이블에서 job이 '사원'들만 sal을 180으로 고치시오.

update dept2 set sal = 180 where job = '사원';

-- 문제 6
-- dept2 테이블에서 '법무팀'을 삭제 하세요.

delete from dept2 where deptno=30;

delete from dept2;

select * from dept2;












