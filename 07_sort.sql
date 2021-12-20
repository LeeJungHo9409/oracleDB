/*
    # ORDER BY
     - 원하는 컬럼 기준으로 정렬하여 조회할 수 있다.
     - order by 컬럼명 (asc/desc)
     - asc : 오름차순, ascending 기본이 오름차순이기에 생략가능
     - desc : 내림차순, descending
*/

SELECT * from departments ORDER BY department_name;
SELECT * from departments ORDER BY department_id asc;
SELECT * from departments ORDER BY department_id desc;

/*
    null은 오름차순으로 정렬하면 가장 나중에 등장하고 내림차순으로 정렬하면 가장 먼저 등장한다.
*/
select * from employees ORDER BY commission_pct;
SELECT * FROM employees ORDER BY job_id, hire_date;


-- 연습 1 : 모든 사원들을 최근 입사한 순서대로 정렬하여 조회해보세요
SELECT * FROM employees ORDER BY hire_date;

-- 연습 2 : 이름에 i가 포함되어 있는 사원들을 돈을 많이 받는 순서대로 조회해보세요.
SELECT
    *
FROM
    employees
WHERE
    first_name like '%i%'
    OR first_name like 'I%'
--    OR last_name like '%i%'
--    OR last_name like 'I%'
ORDER BY salary desc;

/*    
    연습 3 : 80번 부서와 50번 부서의 사원들을 부서번호 기준으로 오름차순 정렬하고, 
    부서번호가 같다면 성 기준으로 오름차순 정렬하여 조회해주세요.
    만약 성도 같다면 이름 기준으로 오름차순 정렬하여 조회해주세요.
*/

SELECT
    *
FROM
    employees
WHERE
    department_id = '80'
    OR department_id = '50'
ORDER BY
    department_id,
    last_name,
    first_name;
