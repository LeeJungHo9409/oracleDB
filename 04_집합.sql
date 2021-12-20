-- order by ����

SELECT * FROM employees;

-- j�� �����ϰ� s �Ǵ� n���� ������ ������� ��� ���� ���

SELECT
    *
FROM
    employees
WHERE
    first_name like 'J%'
    AND ( first_name like '%s'
          OR first_name like '%n' );
          
-- union ������

SELECT * FROM employees WHERE first_name like 'J%'
UNION
SELECT * FROM employees WHERE first_name like '%s';

-- union all : ������ (�ߺ� ���� ����)
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
    
    
    
-- intersect : ������
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
    
-- minus : ������
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



