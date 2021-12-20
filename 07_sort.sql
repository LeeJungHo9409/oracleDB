/*
    # ORDER BY
     - ���ϴ� �÷� �������� �����Ͽ� ��ȸ�� �� �ִ�.
     - order by �÷��� (asc/desc)
     - asc : ��������, ascending �⺻�� ���������̱⿡ ��������
     - desc : ��������, descending
*/

SELECT * from departments ORDER BY department_name;
SELECT * from departments ORDER BY department_id asc;
SELECT * from departments ORDER BY department_id desc;

/*
    null�� ������������ �����ϸ� ���� ���߿� �����ϰ� ������������ �����ϸ� ���� ���� �����Ѵ�.
*/
select * from employees ORDER BY commission_pct;
SELECT * FROM employees ORDER BY job_id, hire_date;


-- ���� 1 : ��� ������� �ֱ� �Ի��� ������� �����Ͽ� ��ȸ�غ�����
SELECT * FROM employees ORDER BY hire_date;

-- ���� 2 : �̸��� i�� ���ԵǾ� �ִ� ������� ���� ���� �޴� ������� ��ȸ�غ�����.
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
    ���� 3 : 80�� �μ��� 50�� �μ��� ������� �μ���ȣ �������� �������� �����ϰ�, 
    �μ���ȣ�� ���ٸ� �� �������� �������� �����Ͽ� ��ȸ���ּ���.
    ���� ���� ���ٸ� �̸� �������� �������� �����Ͽ� ��ȸ���ּ���.
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
