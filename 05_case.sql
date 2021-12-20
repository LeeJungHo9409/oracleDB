/*
    # decode
     - switch - case �� ó�� ��� �� �� �ִ� ����
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
    
    
-- ���� : ���޿� ���� �޿��� �ٸ��� �λ��Ͽ� ����غ����� (�λ� ��� ���)
/*
        it_prog : 10%
        ft_account : 15%
        ��� ������ clerk : 5% �λ�
        
        ���� �޿��� before_salary��� �̸����� ���,
        �λ�� �޿��� arter_salary��� �̸����� ���
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
    # case��
     - decode�� �ش� �÷��� ���� ��Ȯ�ϰ� ��ġ�ϴ� ���� ����� �� ������
        case�� ������ ����� �� �ִ�.
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



