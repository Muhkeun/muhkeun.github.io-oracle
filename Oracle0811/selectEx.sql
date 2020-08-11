create table emp(
  empno    number(4,0),
  ename    varchar2(10),
  job      varchar2(9),
  mgr      number(4,0),
  hiredate date,
  sal      number(7,2),
  comm     number(7,2),
  deptno   number(2,0),
  constraint pk_emp primary key (empno),
  constraint fk_deptno foreign key (deptno) references dept (deptno)
);

insert into emp values(7839, 'KING', 'PRESIDENT', null,to_date('17-11-1981','dd-mm-yyyy'),5000, null, 10);
insert into emp values(7698, 'BLAKE', 'MANAGER', 7839, to_date('1-5-1981','dd-mm-yyyy'),2850, null, 30 );
insert into emp
values(
 7782, 'CLARK', 'MANAGER', 7839,
 to_date('9-6-1981','dd-mm-yyyy'),
 2450, null, 10
);
insert into emp
values(
 7566, 'JONES', 'MANAGER', 7839,
 to_date('2-4-1981','dd-mm-yyyy'),
 2975, null, 20
);
insert into emp
values(
 7788, 'SCOTT', 'ANALYST', 7566,
 to_date('13-JUL-87','dd-mm-rr') - 85,
 3000, null, 20
);

insert into emp
values(
 7902, 'FORD', 'ANALYST', 7566,
 to_date('3-12-1981','dd-mm-yyyy'),
 3000, null, 20
);

insert into emp
values(
 7369, 'SMITH', 'CLERK', 7902,
 to_date('17-12-1980','dd-mm-yyyy'),
 800, null, 20
);

insert into emp
values(
 7499, 'ALLEN', 'SALESMAN', 7698,
 to_date('20-2-1981','dd-mm-yyyy'),
 1600, 300, 30
);

insert into emp
values(
 7521, 'WARD', 'SALESMAN', 7698,
 to_date('22-2-1981','dd-mm-yyyy'),
 1250, 500, 30
);

insert into emp
values(
 7654, 'MARTIN', 'SALESMAN', 7698,
 to_date('28-9-1981','dd-mm-yyyy'),
 1250, 1400, 30
);

insert into emp
values(
 7844, 'TURNER', 'SALESMAN', 7698,
 to_date('8-9-1981','dd-mm-yyyy'),
 1500, 0, 30
);

insert into emp
values(
 7876, 'ADAMS', 'CLERK', 7788,
 to_date('13-JUL-87', 'dd-mm-rr') - 51,
 1100, null, 20
);

insert into emp
values(
 7900, 'JAMES', 'CLERK', 7698,
 to_date('3-12-1981','dd-mm-yyyy'),
 950, null, 30
);

insert into emp
values(
 7934, 'MILLER', 'CLERK', 7782,
 to_date('23-1-1982','dd-mm-yyyy'),
 1300, null, 10
);


create table dept(
  deptno     number(2,0),
  dname      varchar2(14),
  loc        varchar2(13),
  constraint pk_dept primary key (deptno)
);
insert into dept  values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept  values(20, 'RESEARCH', 'DALLAS');
insert into dept  values(30, 'SALES', 'CHICAGO');
insert into dept  values(40, 'OPERATIONS', 'BOSTON');
commit;

-- <<1>>  부서번호가 10번인부서의사람중사원번호, 이름, 급여를출력하라.
select empno, ENAME, sal from EMP where DEPTNO =10;

-- <<2>>  사원번호가 7839인사람중 이름, 입사일자, 부서번호를출력하라.
select ename, hiredate, deptno from emp where empno = 7839;

-- <<3>>  이름이 ALLEN인사람의모든정보를출력하라.
select * from emp where ename = 'ALLEN';

-- <<4>>  입사일자가 83/01/12인사원의이름, 부서번호, 급여를출력하라.
select ename, deptno, sal from emp where hiredate = to_date('1981/02/20', 'yyyy/mm/dd');

-- <<5>>  직업이 MANAGER가아닌사람의모든정보를출력하라.
select * from emp where job not in ('MANAGER');

-- <<6>>  입사일자가 81/04/02 이후에입사한사원의정보를출력하라.
select * from emp where hiredate > to_date('1981/04/02', 'YYYY/MM/DD');

-- <<7>>  급여가 $800이상인사람의이름, 급여, 부서번호를출력하라.
select ename,sal,deptno from emp where sal >= 800;

-- <<8>>  부서번호가 20번이상인사원의모든정보를출력하라.
select * from emp where deptno >= 20;

-- <<9>>  성명이 K로시작하는사람보다높은이름을가진사람의모든정보를출력하라.
select * from emp where ename > CHR(ASCII('K')+1);

-- <<10>>  입사일자가 81/12/09 보다먼저입사한사람들의모든정보를출력하라.
select * from emp where hiredate < to_date('1981/12/09', 'yyyy/mm/dd');

-- <<11>>  입사번호가 7698 보다작거나같은사람들의입사번호와이름을출력하라.
select empno, ename from emp where empno <= 7698;

-- <<12>>  입사일자가 81/04/02 보다늦고 82/12/09 보다빠른사원의이름, 월급, 부서번호를출력하라.
select ename, sal, deptno from emp where hiredate > to_date('1981/04/02', 'yyyy/mm/dd') and hiredate < to_date('1982/12/09', 'yyyy/mm/dd')

-- <<13>>  급여가 1,600 보다크고 $3,000보다작은사람은이름, 직무, 급여를출력하라.
select ename, job, sal from emp where sal < 1600 and sal > 3000;

-- <<14>>  사원번호가 7654와 7782 사이이외의사원의모든정보를출력하라.
select * from emp where deptno between 7654 and 7782;

-- <<15>>이름이 B와 J 사이의모든사원의정보를출력하라.
select * from emp where ename between CHR(ascii('B')) and CHR(ascii('J'));

-- <<16>>  입사일자가 81년이외에입사한사람의모든정보를출력하라.
select * from emp WHERE SUBSTR(HIREDATE, 1, 2) <> '81';

-- <<17>>  직무가 MANAGER와 SALESMAN인사람의모든정보를출력하라.
select * from emp where job in ('MANAGER','SALESMAN');

-- <<18>>  부서번호와 20,30번을제외한모든사람의이름, 사원번호, 부서번호를출력하라.
select ename, empno, deptno from emp where deptno not in (20, 30);

-- <<19>>  이름이 S로시작하는사원의사원번호, 이름, 입사일자, 부서번호를출력하라.
select ename, hiredate, deptno from emp where ename like 'S%';

-- <<20>>  입사일자가 81년도인사람의모든정보를출력하라.
select * from emp where SUBSTR(hiredate,1,2) = 81;

-- <<21>>  이름중 S자가들어가있는사람만모든정보를출력하라.
select * from emp where ename like '%S%';

-- <<22>>  이름이 S로시작하고마지막글자가 T인사람의모든정보를출력하라 (단, 이름은전체 5자리이다.>>
select * from emp where subSTR(ename,1,1) = 'S' and subStr(ename,5,1) = 'T';

-- <<23>>  첫번째문자는관계없고두번째문자가 A인사람의정보를출력하라.
select * from emp where ename like '_A%';

-- <<24>>  커미션이 NULL인사람의정보를출력하라.
select * from emp where comm is null;

-- <<25>>  커미션이 NULL이아닌사람의모든정보를출력하라.
select * from emp where comm is not null;

-- <<26>>  부서가 30번부서이고 급여가 $1,500 이상인사람의이름, 부서, 월급을출력하라.
select ename,deptno,sal from emp where deptno = 30 and sal >=1500;

-- <<27>>  이름의첫글자가 K로시작하거나부서번호가 30인사람의사원번호, 이름, 부서번호를출력하라.
SELECT empno, ename, deptno from emp where ename like 'K%' or deptno =30;

-- <<28>>  급여가 $1,500이상이고부서번호가 30번인사워중직업이 MANAGER인사람의정보를출력하라.
select * from emp where sal >= 1500 and deptno = 30 and job in ('MANAGER');

-- <<29>>  부서번호가 30인사람중사원번호를 SORT 하라.
select * from emp where deptno = 30 order by deptno;

-- <<30>>  급여가많은순으로 SORT하라.
select * from emp order by sal desc;

-- <<31>>  부서번호로 ASCENDING SORT한후급여가많은사람순으로출력하라.
select * from emp order by deptno asc, sal desc;

-- <<32>>  부서번호로 DESCENDING NSORT하고이름순으로 ASCENDING SORT, 급여순으로 DESCENDING SORT하라.
select * from emp order by deptno desc, ename asc, sal desc ;
