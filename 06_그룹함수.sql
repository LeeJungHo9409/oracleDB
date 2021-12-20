/*
    # �׷� �Լ�
      - ���̺��� ����� Ư�� �÷� �������� �׷�ȭ�Ͽ� ����ϴ� �Լ���
      - Ư�� �׷��� ����, ����, ��� ���� ���ϴ� �Լ���
      - �׷��� ������ �Ǵ� �÷��� GROUP BY ���� ���� �����Ѵ�.
      - �׷� �Լ��� ����� �Ϲ� �÷��� �Բ� ����� �� ����.
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
    sum(column) : ����
    avg(column) : ���
    max(column) : �ִ밪
    min(column) : �ּڰ�
    count(column) : ����
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


-- �� �μ����� ���� �ֱٿ� ����� �Ի��� ��¥��, ���� ������ �Ի��� ��¥�� ������ּ���.
SELECT
    department_id,
    MAX(hire_date) AS "����",
    MIN(hire_date) AS "���ι�"
FROM
    employees
GROUP BY
    department_id;

-- �� ��å�� ��� ������ ���غ����� (���� ����)
SELECT
    job_id,
    AVG((salary *(1 + nvl(commission_pct, 0))) * 12)
    as "���ʽ� ���� ���� ���"
FROM
    employees
GROUP BY
    job_id;

-- �׷��Լ� ����� ���� ������ �ְ� ���� ���� having ���� ����Ѵ�. 
SELECT
    job_id,
    AVG(salary) AS salary_avg
FROM
    employees
GROUP BY
    job_id
HAVING
    AVG(salary) >= 10000;

-- ȸ���� 5�� ���Ϸ� �ҼӵǾ� �ִ� �μ��� �׷�ȭ �� ������ ����� �� �ִ�.
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
    

-- where���� ��� �Ϳ� ������ �ٴ� ���̴�. �� where���� �ϰ��� �׷��Լ��� ����ȴ�.
-- where���� group by�� �Բ� ���Ǹ� where���� ������ ��� �࿡ �켱 ������ ����� ���� �׷��� �����Ѵ�.
SELECT
    department_id,
    MIN(salary)
FROM
    employees
GROUP BY
    department_id;
    
    
