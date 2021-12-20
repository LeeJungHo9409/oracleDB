/*
    # SELECT 컬럼명 FROM 테이블명
    
      - 원하는 테이블을 조회하는 쿼리문
      - 컬러명 자리에 *을 쓰는것은 모든 컬럼을 의미한다.,
      - 컬럼명과 테이블명은 대소문자를 구분하지 않는다
      - 쿼리문도 대소문자를 구분하지 않는다.
      - 하지만 데이터는 대소문자를 구분한다.
*/

select * from employees;
select first_name, last_name, hire_date, salary, job_id from employees;

select * from tab;

/*
    # 연습용 테이블
      - employees : 모든 사원 정보를 저장한 테이블
      - departments : 모든 부서 정보를 저장한 테이블
      - jobs : 모든 직급 정보를 저장한 테이블
      - locations : 지역 정보를 저장한 테이블
      - regions : 대륙 정보를 저장한 테이블
*/

select * from jobs;
select * from locations;
select * from countries;
select * from regions;

-- 해당 테이블의 컬럼 정보보기
DESC jobs;

/*
    # NUMBER (n), NUMBER (n, n)
      - 숫자 데이터만 저장할 수 있는 컬럼
      - 숫자가 하나만 적혀 있으면 정수를 저장하는 컬럼
      - 숫자가 두개 적혀 있으면 실수를 저장하는 컬럼
        ex. NUMBER(8,2) -> 정수 6자리 실수 2자리

    # CHAR(n)
      - 고정 길이 문자 데이터를 저장하는 컬럼타입
      - 설정된 컬럼 크기보다 적은 양의 데이터가 들어오더라도 설정된 길이를 모두 차지한다.
      - 데이터가 낭비될 수 있지만 크기 계산이 없기 때문에 속도는 좀 더 빠르다. 
        사실 현재는 컴퓨터 성능이 너무 좋아서 별의미 없음.
    
    # VARCHAR2(n)
      - 가변길이 문자 데이터를 저장하는 컬럼타입
      - 저장하는 데이터의 크기에 따라 알맞은 공간만 사용한다.
      - 가변적인 데이터를 저장할 때 저장 공간이 절약 되지만 크기 계산이 필요하다
      
    # DATE
      - 날짜 및 시간을 저장하는 컬럼 타입
*/

-- 연습1 : 모든 사원의 사번/이름/월급/부서번호를 조회해보세요

select * from employees;
select employee_id, first_name, last_name, salary, department_id from employees;

select
    employee_id as 사번,
    first_name as 이름,
    salary as 월급,
    department_id as 부서번호
from employees;


-- 산술 연산자를 이용할 수 있다
select last_name, salary from employees;
select last_name, salary * 12 as "이 사람의 연봉" from employees;
select last_name, salary * 0.8 as "20% 세일" from employees;

-- 보너스
/*
    nvl(colum, value) 계산에 사용되는 값에 null값이 껴있을때  null을 대체하는 함수
    nall을 대체할 값을 지정하는 함수
 */
SELECT
    last_name,
    salary,
    commission_pct,
    job_id,
    salary * ( 1 + nvl(commission_pct, 0) ) as "커미션 적용 월급"
FROM
    employees;


-- 연습2 : 모든 사원들의 사번/이름/직책ID/보너스 적용된 연봉

select * from employees;
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary * (( 1 + nvl(commission_pct, 0)) * 12 ) AS "보너스 연봉"
FROM
    employees;


-- select distinct 중복되는 내용은 한번씩만 출력한다
-- 존재하는 모든 직책을 한번식 조회
SELECT
    * FROM employees;
select distinct job_id from employees;
select distinct department_id from employees;


