-- 데이터 조작어 (DML)

-- 레코드 추가
-- insert into [테이블명] values(값...);
insert into Test values ('java', '1234', 'Oracle', 20, sysdate);
insert into Test values ('Ruby', '2345', 'Yukihiro', 21, sysdate);
insert into Test values ('C#', '1423', 'Microsoft', 22, sysdate);
insert into Test values ('Swift', '7852', 'Apple', 23, sysdate);
insert into Test values ('Kotlin', '1433', 'Jetbrain', 24, sysdate);
-- insert into [테이블명] ([컬럼명]) values();
insert into Test (id, password) values('Go', '8544');
-- 레코드 검색
-- select * from [테이블명];
select * from test;

-- 레코드 수정
-- update [테이블명] set [컬럼명] = [변경값];
update Test set password='0000', age = 20;

-- 레코드 수정(조건)
-- update [테이블명] set [컬럼명] = [변경값] where [조건식]
update Test set password='7777' where id = 'java';

-- 레코드 삭제
-- delete from [테이블명] where [조건문]
delete from Test ;
