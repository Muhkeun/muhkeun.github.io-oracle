-- 데이터 타입
-- Number(precision, scale) - 가변 숫자 최대 22byte
-- VARCHAR2() - 문자, 최대 4000자 까지 설정 가능.
-- => 4000자 이상은 파일 형태로 저장
-- Date - 날짜 표시, sysdate - 현재시간

--===============================================
-- table 생성 - create table [테이블명]
-- (
--        컬럼명 타입 옵션
--        컬럼명 타입 옵션
--        컬럼명 타입 옵션
-- );
-- 옵션
-- primary key - 중복 방지
-- unique - 중복 방지
-- not null - null 값을 넣을 수 없다.
-- default [기본값] - 기본값 설정. default가 적용될 값을 뒤에 적으면 됨.
-- check - 특정범위값 제한

create table Test(
    id varchar2(50) primary key,
    pw varchar2(50) not null ,
    name varchar2(50) default 'guest',
    age number(3) check ( age > 0 and age < 150 ),
    reg date default sysdate
);

-- 보통 일반적인 툴은 Auto commit이 된다.
commit;

-- 테이블 정보 확인 - desc [테이블명];
-- desc Test;

--테이블 삭제 drop talbe [테이블명];
drop table Test;

-- 테이블 컬럼 추가
-- alter table [테이블명] add(컬럼명 타입 옵션);
alter table Test add (birthDate Date);

-- 테이블 컬럼타입 변경
-- alter table [테이블명] modify(컬럼명 타입);
-- 값이 있는 컬럼은 변경이 불가능하다.
alter table test modify (birthDate number);

-- 컬럼 삭제
-- alter table [테이블명] drop column [컬럼명];
alter table Test drop column birthDate;

-- 컬럼 이름 변경
-- alter table [테이블명] column rename [컬럼명] to [변경명];
alter table Test rename column pw to password;
