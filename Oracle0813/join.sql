-- Outer Join
-- 조인 조건에 만족하지 않는 행도 나타남
-- 어느 한쪽 테이블에만 존재하는 데이터도 조인에

-- 조인 조건에 만족하지 못하였더라도 해당 행을 나타내고 싶을 때에 사용하는 것이
-- 외부 조인 => NULL값 이기에 배제된 행을 결과에 포함 시킬 수 있으며
-- "(+)" 기호를 조인 조건에서 정보가 부족한 컬럼 이름 뒤에 추가

select distinct(e.deptno), d.deptno
from emp e, dept d
where e.deptno(+) = d.deptno;

-- Self Join
-- 조인은 두 개 이상의 서로 다른 테이블을 서로 연결하는 것 뿐만 아니라
-- 하나의 테이블 내에서 조인을 해야만 원하는 자료를 얻는 경우가 발생할 수 있음
-- self Join이란 자기 자신과 조인을 맺는 것
-- tip) 연산이 쉽게 하기 위해서 테이블을 짤 때 수로 만들면 좋
select a.ename, b.ename
from emp a, emp b
where a.mgr = b.empno;
