-- 조인(join)
-- 두 개 이상의 테이블의 정보를 검색하는 것.

-- 등가조인 - 조인 조건에 등호를 이용하는 조인
select e.*, d.DNAME
from emp e, dept d
where e.deptno = d.deptno;

-- 부서이름과 카운트를 세기 위해서 조인을 해야 한다.
select dname, count(*)
from(
    select e.*, d.dname
    from emp e, dept d
    where e.deptno = d.deptno
        )
group by dname;
