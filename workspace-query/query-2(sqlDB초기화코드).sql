-- 아래 쿼리문은 항상 쌍으로 실행한다.
-- 의미 : 만약 sqldb가 존재한다면 삭제하고 다시 sqldb를 만들어라

drop database if exists sqldb;  -- 만약에 sqldb가 있다면 삭제하라
create database sqldb;          -- sqldb 데이터베이스를 만들어라

use sqldb;                      -- sqldb 선택

-- 회원 테이블 작성
drop table if exists user;

create table user(
	userId     varchar(8)  not null primary key,    -- 사용자 아이디(PK)
    name       varchar(10) not null,                -- 이름
    birthyear  int not null,                        -- 출생년도
    addr       varchar(4) not null,                 -- 주소
    mobile1    varchar(3),                          -- 휴대폰의 앞자리번호(010,016,017,019,011)
    mobile2    varchar(8),                          -- 휴대폰의 나머지번호(하이픈(-)을 제외)
    height     smallint,                            -- 키(smallint 2바이트임)
    mdate      date                                 -- 회원 가입임
);

drop table if exists buy;

create table buy (
	-- auto_increment 명령어 : mysql 엔진이 데이터가 들어올때마다, 1씩 자동 증가 시켜줌.
	num int auto_increment not null primary key,
    -- userId는 여기서는 PK가 될 수 없음. 일반적으로 한 테이블에 PK는 오로지 하나만 존재함.
    userId varchar(8) not null,
    prodName  varchar(6) not null,				   -- 물품명
    groupName varchar(4), 						   -- 분류
    price     int, 								   -- 단가
    amount    smallint not null,                   -- 수량
    -- user에 있는 userId를 참조하라. 여기서는 userId 외래키(FK)
    foreign key(userID) references user(userId)
);

-- user에 데이터 추가
insert into user values('LSG', '이승기', 1987, '서울', 
                        '011','11111111', 182, '2008-08-08');
                        
delete from user;
select * from user;
-- user에 데이터 추가
insert into user values
('LSG', '이승기', 1987, '서울', '011','11111111', 182, '2008-08-08'),
('KBS', '김범수', 1979, '경남', '011','22222222', 173, '2012-04-04'),
('KKH', '김경호', 1971, '전남', '019','33333333', 177, '2007-07-07'),
('JYP', '조용필', 1950, '경기', '011','44444444', 166, '2009-04-04'),
('SSK', '성시경', 1979, '서울', null, null, 186, '2013-12-12'),
('LJB', '임재범', 1963, '서울', '016','66666666', 182, '2009-09-09'),
('YJS', '윤종신', 1969, '경남', null, null, 170, '2005-05-05'),
('EJW', '은지원', 1972, '경북', '011','88888888', 174, '2014-3-3'),
('JKW', '조관우', 1965, '경기', '018','99999999', 172, '2010-10-10'),
('BBK', '바비킴', 1973, '서울', '010','00000000', 176, '2013-5-5')                        

select * from user;
select * from buy;

insert into buy values
(null, 'KBS', '운동화', null, 30, 2),
(null, 'KBS', '노트북', '전자', 1000, 1),
(NULL, 'JYP', '모니터', '전자', 200, 1),
(null, 'BBK', '모니터', '전자', 200, 5),
(null, 'KBS', '청바지', '의류', 50, 3),
(null, 'BBK', '메모리', '전자', 80, 10),
(null, 'SSK', '책', '서적', 15, 5),
(null, 'SSK', '책', '서적', 15, 2),
(null, 'EJW', '청바지', '의류', 50, 1),
(null, 'BBK', '운동화', null, 30, 2),
(null, 'EJW', '책', '서적', 15, 1),
(null, 'BBK', '운동화', null, 30, 2)























