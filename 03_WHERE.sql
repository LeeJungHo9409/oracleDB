 /*
    # SELECT �÷��� FROM ���̺�� WHERE ������;
      - SELECT���� WHERE���� �߰��Ͽ� �ش� ������ �����ϴ� �ุ ��ȸ�� �� �ִ�.
      - ����Ŭ�� �񱳿����ڵ��� Ȱ���Ѵ�.
    
    # �񱳿�����
      = : ����
      <, >, <=, >= : ��
      !=, <>, ^= : �ٸ��� TRUE
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
    
-- ���� Ÿ�� �񱳵� ���� �����ϴ�.
SELECT * FROM employees WHERE first_name > 'P';
SELECT * FROM employees WHERE first_name > 'V';

-- ��¥ Ÿ�Ե� ���� �� ����
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

--  ���� 1 : 2000���� 3000������ ������ �޴� ������� ��� ������ ��ȸ�غ�����
SELECT
    *
FROM
    employees
WHERE
    salary >= 2000
    AND salary <= 3000;
    
/*
    ���� 2 : 30��, 60��, 90�� �μ��� ���� ������� 
    �̸�/��å/��ȭ��ȣ/�μ���ȣ�� ��ȸ�غ�����
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


-- ���� 3 : �����ȣ�� ¦���� ������� ��� ������ ��ȸ
SELECT
    *
FROM
    employees
WHERE
    mod( employee_id, 2 ) = 0;


-- column�� between a And b : �ش� �÷��� ���� A�̻� B������ ��� true
SELECT
    *
FROM
    employees
WHERE
    salary BETWEEN 2000 AND 3000;

-- column�� in (A,B,C ~ ) : () ���� ���뿡 ���� ������ true

SELECT
    *
FROM
    employees
WHERE
    department_id IN (30,50,60);
    
    

-- null�� ũ�� �񱳰� �Ұ����ϱ� ������ �� �����ڸ� ����� �� ����.
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
    
-- not �����ڴ� ��ġ�� ���� �����Ӵ�
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
      - ������ �Ϻκ����� ���ϴ� ������ �˻��� �� �ִ�.
      - ���� Ÿ�԰� ��¥ Ÿ�Կ��� ��� �����ϴ�.
      - % : ���� ���� ���� �ƹ� ���ڳ� �͵� ��� ���� ��
      - _ : �ϳ��� ���ڰ� �ݵ�� ���ϵ�ī��
*/

SELECT * FROM employees WHERE first_name LIKE 'D%';
SELECT * FROM employees WHERE first_name LIKE '_e%';
SELECT * FROM employees WHERE first_name LIKE '%t%';

/*
 ����1 : �̸��� �ڿ��� �� ���� ���ڰ� a�� ������� ��� ���� ��ȸ
 ����2 : �̸��� e�� �� �� �̻� ���Ե� ������� ��� ���� ��ȸ
 ����3 : �̸��� �ټ� �����̸鼭 r�� ������ ������� ���� ������ ��ȸ
*/

-- ���� 1
SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%a__';

-- ���� 2
SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%e%e%';

-- ���� 3
SELECT
    last_name,
    salary * (1+nvl(commission_pct, 0))
FROM
    employees
WHERE
    first_name LIKE '____r';
    
    
SELECT * FROM employees WHERE hire_date LIKE '%/_2/%'