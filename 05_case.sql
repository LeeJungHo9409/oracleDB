/*
    # decode
     - switch - case 문 처럼 계산 할 수 있는 문법
*/

SELECT
    first_name,
    department_id,
    decode(
        department_id, 10, 'administration', 20, 'marketing', 30, 'purchasing'
    ) AS decode
FROM
    employees
WHERE
    department_id IN ( 10, 20, 30 );
    
    
-- 연습 : 직급에 따라 급여를 다르게 인상하여 출력해보세요 (인상 대상만 출력)
/*
        it_prog : 10%
        ft_account : 15%
        모든 종류의 clerk : 5% 인상
        
        원래 급여는 before_salary라는 이름으로 출력,
        인상된 급여는 arter_salary라는 이름으로 출력
*/

SELECT * FROM employees;

SELECT * FROM
    (SELECT
        first_name,
        job_id,
        salary as before_salary,
        decode(
            job_id, 
            'IT_PROG', salary * 1.1,
            'FI_ACCOUNT', salary * 1.15,
            'PU_CLERK', salary * 1.05,
            'ST_CLERK', salary * 1.05,
            'SH_CLERK', salary * 1.05,
            salary                      --default
        )as after_salary
    FROM employees)
WHERE after_salary is not null; 
    
SELECT * from
    (SELECT
        first_name,
        job_id,
        salary as before_salary,
        decode(
            job_id, 
            'IT_PROG', salary * 1.1,
            'FI_ACCOUNT', salary * 1.15
        ) as after_salary
    FROM employees
    union
    SELECT
        first_name,
        job_id,
        salary as before_salary,
        salary * 1.05 as after_salary
    FROM employees
    WHERE job_id like '%CLERK')
WHERE after_salary is not null; 
    


/*
    # case문
     - decode는 해당 컬럼의 값과 정확하게 일치하는 값만 사용할 수 있지만
        case는 조건을 사용할 수 있다.
*/

SELECT
    first_name,
    job_id,
    salary AS before_salary,
    CASE
        WHEN job_id = 'IT_PROG'    THEN
            salary * 1.1
        WHEN job_id = 'FT_ACCOUND' THEN
            salary * 1.1
        WHEN job_id LIKE '%CLERK%' THEN
            salary * 1.05
        ELSE
            salary  
    END    AS after_salary
FROM
    employees;



