/*
    # SELECT �÷��� FROM ���̺��
    
      - ���ϴ� ���̺��� ��ȸ�ϴ� ������
      - �÷��� �ڸ��� *�� ���°��� ��� �÷��� �ǹ��Ѵ�.,
      - �÷���� ���̺���� ��ҹ��ڸ� �������� �ʴ´�
      - �������� ��ҹ��ڸ� �������� �ʴ´�.
      - ������ �����ʹ� ��ҹ��ڸ� �����Ѵ�.
*/

select * from employees;
select first_name, last_name, hire_date, salary, job_id from employees;

select * from tab;

/*
    # ������ ���̺�
      - employees : ��� ��� ������ ������ ���̺�
      - departments : ��� �μ� ������ ������ ���̺�
      - jobs : ��� ���� ������ ������ ���̺�
      - locations : ���� ������ ������ ���̺�
      - regions : ��� ������ ������ ���̺�
*/

select * from jobs;
select * from locations;
select * from countries;
select * from regions;

-- �ش� ���̺��� �÷� ��������
DESC jobs;

/*
    # NUMBER (n), NUMBER (n, n)
      - ���� �����͸� ������ �� �ִ� �÷�
      - ���ڰ� �ϳ��� ���� ������ ������ �����ϴ� �÷�
      - ���ڰ� �ΰ� ���� ������ �Ǽ��� �����ϴ� �÷�
        ex. NUMBER(8,2) -> ���� 6�ڸ� �Ǽ� 2�ڸ�

    # CHAR(n)
      - ���� ���� ���� �����͸� �����ϴ� �÷�Ÿ��
      - ������ �÷� ũ�⺸�� ���� ���� �����Ͱ� �������� ������ ���̸� ��� �����Ѵ�.
      - �����Ͱ� ����� �� ������ ũ�� ����� ���� ������ �ӵ��� �� �� ������. 
        ��� ����� ��ǻ�� ������ �ʹ� ���Ƽ� ���ǹ� ����.
    
    # VARCHAR2(n)
      - �������� ���� �����͸� �����ϴ� �÷�Ÿ��
      - �����ϴ� �������� ũ�⿡ ���� �˸��� ������ ����Ѵ�.
      - �������� �����͸� ������ �� ���� ������ ���� ������ ũ�� ����� �ʿ��ϴ�
      
    # DATE
      - ��¥ �� �ð��� �����ϴ� �÷� Ÿ��
*/

-- ����1 : ��� ����� ���/�̸�/����/�μ���ȣ�� ��ȸ�غ�����

select * from employees;
select employee_id, first_name, last_name, salary, department_id from employees;

select
    employee_id as ���,
    first_name as �̸�,
    salary as ����,
    department_id as �μ���ȣ
from employees;


-- ��� �����ڸ� �̿��� �� �ִ�
select last_name, salary from employees;
select last_name, salary * 12 as "�� ����� ����" from employees;
select last_name, salary * 0.8 as "20% ����" from employees;

-- ���ʽ�
/*
    nvl(colum, value) ��꿡 ���Ǵ� ���� null���� ��������  null�� ��ü�ϴ� �Լ�
    nall�� ��ü�� ���� �����ϴ� �Լ�
 */
SELECT
    last_name,
    salary,
    commission_pct,
    job_id,
    salary * ( 1 + nvl(commission_pct, 0) ) as "Ŀ�̼� ���� ����"
FROM
    employees;


-- ����2 : ��� ������� ���/�̸�/��åID/���ʽ� ����� ����

select * from employees;
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary * (( 1 + nvl(commission_pct, 0)) * 12 ) AS "���ʽ� ����"
FROM
    employees;


-- select distinct �ߺ��Ǵ� ������ �ѹ����� ����Ѵ�
-- �����ϴ� ��� ��å�� �ѹ��� ��ȸ
SELECT
    * FROM employees;
select distinct job_id from employees;
select distinct department_id from employees;


