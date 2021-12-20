 /*
    # SELECT 컬럼명 FROM 테이블명 WHERE 조건절;
      - SELECT문에 WHERE절을 추가하여 해당 조건을 만족하는 행만 조회할 수 있다.
      - 오라클의 비교연산자들을 활용한다.
    
    # 비교연산자
      = : 같다
      <, >, <=, >= : 비교
      !=, <>, ^= : 다르면 TRUE
 */
 
 SELECT
    first_name,
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
    salary >= 10000;
    
    

SELECT
    * FROM employees WHERE salary = 10000;
    
-- 문자 타입 비교도 쉽게 가능하다.
SELECT * FROM employees WHERE first_name > 'P';
SELECT * FROM employees WHERE first_name > 'V';

-- 날짜 타입도 쉽게 비교 가능
SELECT
    *
FROM
    employees
WHERE
    hire_date < '2006/01/01';
    
-- AND, OR, NOT
SELECT
    *
FROM
    employees
WHERE
    hire_date >= '2006/05/01'
    AND hire_date < '2008/09/01';

SELECT
    *
FROM
    employees
WHERE
    job_id >= 'IT_PROG'
    OR job_id >= 'SH_CLERK';
    
SELECT
    *
FROM
    employees
WHERE NOT
    job_id = 'IT_PROG';

--  연습 1 : 2000에서 3000사이의 월급을 받는 사원들의 모든 정보를 조회해보세요
SELECT
    *
FROM
    employees
WHERE
    salary >= 2000
    AND salary <= 3000;
    
/*
    연습 2 : 30번, 60번, 90번 부서에 속한 사원들의 
    이름/직책/전화번호/부서번호를 조회해보세요
*/
SELECT
    first_name,
    last_name,
    job_id,
    phone_number,
    department_id
FROM
    employees
WHERE
    department_id = 30
    OR department_id = 60
    OR department_id = 90;
-- mod(department_id, 3)=0;


-- 연습 3 : 사원번호가 짝수인 사원들의 모든 정보를 조회
SELECT
    *
FROM
    employees
WHERE
    mod( employee_id, 2 ) = 0;


-- column명 between a And b : 해당 컬럼의 값이 A이상 B이하인 경우 true
SELECT
    *
FROM
    employees
WHERE
    salary BETWEEN 2000 AND 3000;

-- column명 in (A,B,C ~ ) : () 안의 내용에 값이 있으면 true

SELECT
    *
FROM
    employees
WHERE
    department_id IN (30,50,60);
    
    

-- null은 크기 비교가 불가능하기 때문에 비교 연산자를 사용할 수 없다.
SELECT
    *
FROM
    employees
WHERE
    commission_pct < 0.2;
    
SELECT
    *
FROM
    employees
WHERE
    commission_pct > 0.2;
    
SELECT
    *
FROM
    employees
WHERE
    commission_pct = null;
    
SELECT
    *
FROM
    employees
WHERE
    commission_pct IS NULL;
    
-- not 연사자는 위치가 비교적 자유롭다
SELECT
    *
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
    
SELECt *
FROM
    employees
WHERE
    salary NOT BETWEEN 2000 AND 3000;
    
/*
    # LIKE
      - 데이터 일부분으로 원하는 내용을 검색할 수 있다.
      - 문자 타입과 날짜 타입에도 사용 가능하다.
      - % : 길이 제한 없이 아무 문자나 와도 상관 없는 곳
      - _ : 하나의 문자가 반드시 와일드카드
*/

SELECT * FROM employees WHERE first_name LIKE 'D%';
SELECT * FROM employees WHERE first_name LIKE '_e%';
SELECT * FROM employees WHERE first_name LIKE '%t%';

/*
 연습1 : 이름이 뒤에서 세 번쨰 글자가 a인 사원들의 모든 정보 조회
 연습2 : 이름에 e가 두 개 이상 포함된 사원들의 모든 정보 조회
 연습3 : 이름이 다섯 글자이면서 r로 끝나는 사원들의 성과 월급을 조회
*/

-- 연습 1
SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%a__';

-- 연습 2
SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%e%e%';

-- 연습 3
SELECT
    last_name,
    salary * (1+nvl(commission_pct, 0))
FROM
    employees
WHERE
    first_name LIKE '____r';
    
    
SELECT * FROM employees WHERE hire_date LIKE '%/_2/%'