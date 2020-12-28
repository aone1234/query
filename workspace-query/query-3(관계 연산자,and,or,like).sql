use sqldb;

-- name 컬럼에 있는 내용 중에서 '김경호'인것만 행을 출력하시오.(user)
select * from user where name = '김경호';

-- 출생년도가 1970을 포함하고, 이후의 조건으로 키가 182이상인 조건을 둘다 만족하는 데이터 출력 하시오.

desc user;

select userId, name, height, brithyear
from user where brithyear >= 1970 and height >= 182;

-- or 조건 : 둘중 하나가 참이면 무조건 참을 반환
-- 1970년 이후이거나 키가 182이상인 데이터들을 다 출력함.

select userId, name, height, brithyear
from user where brithyear >= 1970 or height >= 182;

-- 키가 180이상이고, 183이하인 조건을 충족하는 쿼리문을 작성 하시오.

select userId, name, height, brithyear
from user where height >= 180 and height <= 183;

-- between (사이) ~ and 구문으로 바꾸면 가독성이 좋음
-- 협업에서 많이 사용.

select * from user where height between 180 and 183;

desc user;

-- or를 이용해서 출력
select * from user where addr = '경남' 
					  or addr = '전남' 
                      or addr = '경북' 
                      or addr = '전북';
                      
-- in은 수치데이터(연속적인 데이터)가 아닌 이산적(떨어져 있는) 데이터에 사용됨.
-- 가독성이 훨씬 좋음.                      
select * from user where addr in ('경남', '전남', '경북', '전북');                       

-- 경남을 제외한 나머지 주소를 갖는 사람을 다 출력 하시오.
select * from user;

select * from user where addr not in ('경남');                       

use world;
desc city;

-- 논리연산자 (and, or, not)
-- 1) 국가 코드가 'KOR' 이면서 인구가 100만 이상인 도시를 찾으시오.
-- 2) 국가 코드가 'KOR', 'CHN', 'JPN'인 도시를 찾으시오.
-- 3) 국가 코드가 'KOR'이 아니면서 인구가 100만 이상인 도시를 찾으시오.

select * from city 
	where CountryCode = 'KOR' and Population >= 1000000;

select * from city 
	where CountryCode in ('KOR', 'CHN', 'JPN');
    
select * from city 
	where CountryCode ='KOR'
       or CountryCode ='CHN'
       or CountryCode ='JPN';    
    
select * from city 
	where  CountryCode != 'KOR' and Population >= 1000000;

-- 4) 국가 코드가 'KOR'이고 인구가 100만이상 500만 이하인 도시를 찾으시오.
-- (between ~ and)

select * from city
	where CountryCode = 'KOR' and (Population between 1000000 and 5000000) ;

use sqldb;
desc user;

-- 성이 김씨인 데이터를 다 출력 하시오.
-- like와 %, _구문을 보통 검색할 때 자주 사용된다.

select * from user
	where name like '김%';

select * from user
	where name like '이%';

-- 한글자에 대한 것은 _(언더바)로써 대체하여 검색 할 수 있음.
select * from user 
	where name like '_종신';
    
 -- like 검색
 -- : 정확하게 키워드를 모를 경우 일부만으로 검색하는 방법
 -- : 와일드 카드 (%, _)를 사용하여 패턴 매칭
 -- : % => 0~n글자, _ => 1글자
 
 use world;
 
 -- 1~3) city 테이블에서 국가코드가 K로 시작하는 / 끝나는 / 중간에 들어 있는 국가코드를 표시 하시오.
 select countrycode from city
	where countrycode like 'K%';
    
select Countrycode from city
	where Countrycode like '%K%';    
    
 select Countrycode from city
	where Countrycode like '%K';   
 
 
 -- 4) city 테이블에서 국가코드가 K로 시작하는 3글자 국가코드를 표시 하시오.
 
 select Countrycode from city
	where Countrycode like 'K__';

























