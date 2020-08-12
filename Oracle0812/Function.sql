-- 내장함수
-- 숫자/ 문자/ 날짜/ 변환 함수
-- 숫자 - 반올림, 버림, 소수점지우기, 총 합계, 평균구하기 등 수학연산과 관련
-- 문자 - java의 String method와 유사
-- 날짜 - 포맷 바꾸기, D-Day 구하기
-- 변환 - 문자를 숫자로 바꾸기 등 타입 변환


-- 숫자함수
-- ABS - 절대값
-- 임의의 숫자를 함수에 대입시 => from에 있는 table의 레코드 수만큼 표시
select ABS(-1.234) from emp;
-- DUAL - 더미테이블
select ABS(-1.234) from dual;
-- CEIL - 올림
select CEIL(1.234) from dual;
-- FLOOR - 버림
select FLOOR(1.234) from dual;
-- ROUND(n, scale) - 반올림
select ROUND(1.567) from dual;
select ROUND(1.234)from dual;
select ROUND(1.234, 2) from dual;
-- MOD - 나머지
select MOD(9,4) from dual;
-- TRUNK(n, scale) - 절삭
select TRUNC(1.234, 2) from dual;
-- TAN, ASIN, LOG, COS 등 삼각함수와 수학공식 관련 함수도 존재

-- 문자함수
-- UPPER - 대문자로 변환
select UPPER('abcdefg') from dual;
-- LOWER - 소문자로 변환
select LOWER('ABCDEFG') from dual;
-- SUBSTR(char, position, size) - posion부터 size만큼 문자 반환
select SUBSTR('ABCDEFG', 3, 3) from dual;
-- LENGTH - 문자 길이, LENGTHB - 유니코드 문자 길이 (한글은 하나에 3글자)
select LENGTH('ABCDEFG') from dual;
select LENGTH('가 나 다') from dual;
select LENGTHB('가 나 다') from dual;
-- INSTR(string, substring) - 해당 문자 위치 (없을 경우 0 리턴)
select INSTR('abcdefg', 'efg') from dual;
-- REPLACE(string, search_string, change_string) - 문자 변환
select REPLACE('abcdefg', 'abcd', '가나다라') from dual;

-- 날짜 함수
-- TO_CHAR - 날짜를 문자로 바꾸기 (포맷기호 - '/', '-', '.')
select TO_CHAR(SYSDATE, 'RRRR-MM-DD') from dual;
select TO_CHAR(SYSDATE, 'RRRR-MM-DD HH24:MI:SS') from dual;
-- 날짜 연산, SYSDATE-1 => 하루전
select TO_CHAR(SYSDATE-1, 'RRRR-MM-DD HH24:MI:SS') from dual;
select TO_CHAR(SYSDATE-1/24, 'RRRR-MM-DD HH24:MI:SS') from dual;
-- SYSTIMESTAMP - 1/1000초까지 기록 => java와 어울림
select TO_CHAR(SYSTIMESTAMP, 'RRRR-MM-DD HH24:MI:SS:FF3') from dual;
-- ADD_MONTHS(DATE, INT) - DATE의 INT 값 뒤의 달의 날짜
select ADD_MONTHS(SYSDATE, 5) from dual;
-- LAST_DAY() - 해당 월의 마지막날
select LAST_DAY(SYSDATE) from dual;
-- NEXT_DAY(DATE, CHAR) - 명시된 요일의 돌아오는 날짜 (1~7 => 일~토)
select NEXT_DAY(SYSDATE, 7) from dual;

-- 변환함수
-- TO_CHAR - 포맷 지정
-- 소수점 자리 지정 => 반올림 됨
-- X => 16진수 표현
select TO_CHAR(23045678, '999,999,999') from dual;
select TO_CHAR(123.45678, '999.99') from dual;
select TO_CHAR(12345678, '$999,999,999') from dual;
select TO_CHAR(12345678, 'XXXXXXXXX') from dual;
-- TO_DATE - TYPE 변환 문자 -> 날짜
select TO_DATE('2020.08.12', 'RRRR.MM.DD') from dual;
-- 내장함수
-- 숫자/ 문자/ 날짜/ 변환 함수
-- 숫자 - 반올림, 버림, 소수점지우기, 총 합계, 평균구하기 등 수학연산과 관련
-- 문자 - java의 String method와 유사
-- 날짜 - 포맷 바꾸기, D-Day 구하기
-- 변환 - 문자를 숫자로 바꾸기 등 타입 변환


-- 숫자함수
-- ABS - 절대값
-- 임의의 숫자를 함수에 대입시 => from에 있는 table의 레코드 수만큼 표시
select ABS(-1.234) from emp;
-- DUAL - 더미테이블
select ABS(-1.234) from dual;
-- CEIL - 올림
select CEIL(1.234) from dual;
-- FLOOR - 버림
select FLOOR(1.234) from dual;
-- ROUND(n, scale) - 반올림
select ROUND(1.567) from dual;
select ROUND(1.234)from dual;
select ROUND(1.234, 2) from dual;
-- MOD - 나머지
select MOD(9,4) from dual;
-- TRUNK(n, scale) - 절삭
select TRUNC(1.234, 2) from dual;
-- TAN, ASIN, LOG, COS 등 삼각함수와 수학공식 관련 함수도 존재

-- 문자함수
-- UPPER - 대문자로 변환
select UPPER('abcdefg') from dual;
-- LOWER - 소문자로 변환
select LOWER('ABCDEFG') from dual;
-- SUBSTR(char, position, size) - posion부터 size만큼 문자 반환
select SUBSTR('ABCDEFG', 3, 3) from dual;
-- LENGTH - 문자 길이, LENGTHB - 유니코드 문자 길이 (한글은 하나에 3글자)
select LENGTH('ABCDEFG') from dual;
select LENGTH('가 나 다') from dual;
select LENGTHB('가 나 다') from dual;
-- INSTR(string, substring) - 해당 문자 위치 (없을 경우 0 리턴)
select INSTR('abcdefg', 'efg') from dual;
-- REPLACE(string, search_string, change_string) - 문자 변환
select REPLACE('abcdefg', 'abcd', '가나다라') from dual;

-- 날짜 함수
-- TO_CHAR - 날짜를 문자로 바꾸기 (포맷기호 - '/', '-', '.')
select TO_CHAR(SYSDATE, 'RRRR-MM-DD') from dual;
select TO_CHAR(SYSDATE, 'RRRR-MM-DD HH24:MI:SS') from dual;
-- 날짜 연산, SYSDATE-1 => 하루전
select TO_CHAR(SYSDATE-1, 'RRRR-MM-DD HH24:MI:SS') from dual;
select TO_CHAR(SYSDATE-1/24, 'RRRR-MM-DD HH24:MI:SS') from dual;
-- SYSTIMESTAMP - 1/1000초까지 기록 => java와 어울림
select TO_CHAR(SYSTIMESTAMP, 'RRRR-MM-DD HH24:MI:SS:FF3') from dual;
-- ADD_MONTHS(DATE, INT) - DATE의 INT 값 뒤의 달의 날짜
select ADD_MONTHS(SYSDATE, 5) from dual;
-- LAST_DAY() - 해당 월의 마지막날
select LAST_DAY(SYSDATE) from dual;
-- NEXT_DAY(DATE, CHAR) - 명시된 요일의 돌아오는 날짜 (1~7 => 일~토)
select NEXT_DAY(SYSDATE, 7) from dual;

-- 변환함수
-- TO_CHAR - 포맷 지정
-- 소수점 자리 지정 => 반올림 됨
-- X => 16진수 표현
select TO_CHAR(23045678, '999,999,999') from dual;
select TO_CHAR(123.45678, '999.99') from dual;
select TO_CHAR(12345678, '$999,999,999') from dual;
select TO_CHAR(12345678, 'XXXXXXXXX') from dual;
-- TO_DATE - TYPE 변환 문자 -> 날짜
select TO_DATE('2020.08.12', 'RRRR.MM.DD') from dual;

-- 집계함수
-- COUNT - 검색된 레코드 수
select COUNT(*) from emp;
-- null 값은 세어주지 않는다.
select COUNT(COMM) from emp;
-- where(조건)과 함께 사용
select COUNT(*) from emp where deptno = 10;
-- MAX/MIN/AVG - 최대/최소/평균 값
select MAX(SAL), min(SAL), AVG(SAL) from emp;
-- SUM - 총합
select SUM(SAL) from emp;

-- Group By - 데이터를 원하는 그룹으로 나눈다.
select deptno, COUNT(*) from emp GROUP BY deptno;
select job, count(sal), avg(sal), max(SAL), min(SAL) from emp group by job;
-- HAVING - Group by의 조건절
select deptno, count(*) from emp group by deptno having count(*) > 3;
-- DISTINCT - 중복제거, Group By랑 비슷하다.
select distinct job from emp;

-- 서브쿼리 - select 문 안에 select 문 넣
select ename from (select empno, ename from emp where deptno =10);

