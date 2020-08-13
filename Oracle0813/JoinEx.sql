--------------------------JOIN--------------------------
-- <<1>> EMP와 DEPT TABLE을 JOIN하여부서번호, 부서명, 이름, 급여를출력하라.

select e.ename, e.sal, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno;

-- natural join - 공통 요소를 자동으로 찾아줌. (2개 이상일 경우, using으로 명시해주어야 한다.)

select ename, sal, deptno, dname
from emp
    natural join dept;

select ename, sal, deptno, dname
from emp
    join dept
        using(deptno);

-- <<2>>이름이 'ALLEN'인사원의부서명을출력하라.

select d.dname
from emp e, dept d
where e.deptno = d.deptno
  and e.ename = 'ALLEN';

-- <<3>> EMP Table의데이터를출력하되해당사원에대한상관번호와상관의성명을함께출력하라.

select a.ename, b.deptno, b.ename
from emp a, emp b
where b.empno = a.mgr;

-- <<4>> DEPT Table 에는존재하는부서코드이지만해당부서에근무하는사람이존재하지않는경우의결과를출력하라.
select *
from dept
where deptno
not in (
    select deptno
from emp
    group by deptno
having count(*) > 0
    );

-- <<5>> 'ALLEN'의직무와같은사람의이름, 부서명, 급여, 직무를출력하라.

select e.ename, d.dname, e.sal, e.job
from emp e, dept d
where e.deptno = d.deptno
  and e.job = (
      select job
      from emp
      where ename = 'ALLEN'
      );


-- <<6>> 'JONES'가속해있는부서의모든사람의사원번호, 이름, 입사일자, 급여를출력하라.
select empno, ename, hiredate, sal
from emp where deptno = (
    select deptno
    from emp
    where ename ='JONES'
    );
-- <<7>>전체사원의 평균 임금보다 많은 사원의 사원번호, 이름, 부서명, 입사일, 지역, 급여를출력하라.
select e.empno, e.ename, d.dname, e.hiredate, d.loc, e.sal
from emp e, dept d
where e.deptno = d.deptno
  and e.sal > (
      select avg(sal)
      from emp);
-- <<8>> 10번부서사람들중에서 20번부서의사원과같은업무를하는사원의사원번호, 이름, 부서명, 입사일, 지역을출력하라.
select e.empno, e.ename, d.dname, e.hiredate, d.loc
from emp e, dept d
where e.deptno = d.deptno
  and e.job
          in (
              select distinct (job)
              from emp
              where deptno = 20)
  and e.deptno = 10;

-- <<9>> 10번부서중에서 30번부서에는없는업무를하는사원의사원번호, 이름, 부서명, 입사일자, 지역을출력하라.
select e.empno, e.ename, d.dname, e.hiredate, d.loc
from emp e, dept d
where e.deptno = d.deptno
  and e.job
          not in (
              select distinct (job)
              from emp
              where deptno = 30
          )
and e.deptno = 10;

-- <<10>> 10번부서에근무하는사원의사원번호, 이름, 부서명, 지역, 급여를급여가많은순으로출력하라.
select e.empno, e.ename, d.dname, d.loc, e.sal
from emp e, dept d
where e.deptno = d.deptno
and e.deptno = 10
order by e.sal desc;

-- <<11>> 'MARTIN'이나 'SCOTT'의급여와같은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal
from emp
where sal in (select sal
             from emp
             where ename
                       in ('MARTIN', 'SCOTT')
    );

-- <<12>>급여가 30번부서의최고급여보다높은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal
from emp
where sal > (
    select max(sal)
    from emp
    where deptno =30
    );

-- <<13>>급여가 30번부서의최저급여보다높은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal
from emp
where sal > (
    select min(sal)
    from emp
    where deptno =30
    );
