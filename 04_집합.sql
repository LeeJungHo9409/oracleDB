-- order by 정렬

SELECT * FROM employees;

-- j로 시작하고 s 또는 n으로 끝나는 사원들의 모든 정보 출력

SELECT
    *
FROM
    employees
WHERE
    first_name like 'J%'
    AND ( first_name like '%s'
          OR first_name like '%n' );
          
-- union 합집합

SELECT * FROM employees WHERE first_name like 'J%'
UNION
SELECT * FROM employees WHERE first_name like '%s';

-- union all : 합집합 (중복 제거 안함)
SELECT
    *
FROM
    employees
WHERE
    department_id = 30
UNION all
SELECT
    *
FROM
    employees
WHERE
    department_id BETWEEN 10 AND 30;
    
    
    
-- intersect : 교집합
SELECT
    *
FROM
    employees
WHERE
    department_id = 30
INTERSECT
SELECT
    *
FROM
    employees
WHERE
    department_id BETWEEN 10 AND 30;
    
-- minus : 차집합
SELECT
    *
FROM
    employees
WHERE
    department_id = 30
MINUS
SELECT
    *
FROM
    employees
WHERE
    department_id BETWEEN 10 AND 30;
    

SELECT
    *
FROM
    employees
WHERE
    department_id BETWEEN 10 AND 30
MINUS
SELECT
    *
FROM
    employees
WHERE
    department_id = 30;



