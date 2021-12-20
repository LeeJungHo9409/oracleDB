/*
    # 그룹 함수
      - 테이블의 행들을 특정 컬럼 기준으로 그룹화하여 계산하는 함수들
      - 특정 그룹의 총합, 개수, 평균 등을 구하는 함수들
      - 그룹이 기준이 되는 컬럼은 GROUP BY 절을 통해 선택한다.
      - 그룹 함수의 결과는 일반 컬럼과 함께 출력할 수 없다.
*/

SELECT
    SUM(salary)
FROM
    employees;

SELECT
    job_id,
    SUM(salary)
FROM
    employees
GROUP BY
    job_id;

SELECT
    job_id,
    AVG(salary)
FROM
    employees
GROUP BY
    job_id;


/*
    sum(column) : 총합
    avg(column) : 평균
    max(column) : 최대값
    min(column) : 최솟값
    count(column) : 개수
*/

SELECT
    *
FROM
    employees;

SELECT
    department_id,
    COUNT(commission_pct)
FROM
    employees
GROUP BY
    department_id;

SELECT
    * FROM employees;


-- 각 부서별로 가장 최근에 사원이 입사한 날짜와, 가장 오래전 입사한 날짜를 출력해주세요.
SELECT
    department_id,
    MAX(hire_date) AS "뉴비",
    MIN(hire_date) AS "고인물"
FROM
    employees
GROUP BY
    department_id;

-- 각 직책별 평균 연봉을 구해보세요 (월급 말고)
SELECT
    job_id,
    AVG((salary *(1 + nvl(commission_pct, 0))) * 12)
    as "보너스 포함 연봉 평균"
FROM
    employees
GROUP BY
    job_id;

-- 그룹함수 결과에 대한 조건을 주고 싶을 때는 having 절을 사용한다. 
SELECT
    job_id,
    AVG(salary) AS salary_avg
FROM
    employees
GROUP BY
    job_id
HAVING
    AVG(salary) >= 10000;

-- 회사의 5명 이하로 소속되어 있는 부서를 그룹화 한 정보를 출력할 수 있다.
SELECT
    department_id,
    MAX(salary),
    COUNT(*)
FROM
    employees
GROUP BY
    department_id
HAVING
    COUNT(*) <= 5;
    

-- where절은 모든 것에 조건을 다는 것이다. 즉 where절을 하고나서 그룹함수가 실행된다.
-- where절과 group by가 함께 사용되면 where절의 조건을 모든 행에 우선 적용한 결과를 통해 그룹을 생성한다.
SELECT
    department_id,
    MIN(salary)
FROM
    employees
GROUP BY
    department_id;
    
    
