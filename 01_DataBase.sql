SELECT * FROM tab; -- Ctrl * Enter : 커서 위치의 한 쿼리 실행

/*
    # 데이터베이스
      - 자료 창고
      - 데이터를 효율적으로 저장하기 위한 데이터 저장 프로그램임
      - 파일 시스템의 많은 문제점과 한계를 극복하기 위한 프로그램이다.
      
    # 파일 시스템의 문제점
      - 데이터 불일치가 발생할 수 있음
      - 다수 사용자를 위한 동시 제공이 불가능하다.
      - 중복 데이터를 필요 이상으로 많이 저장하게 된다.
      - 파일 복구 기능이 없다.
       
    # DBMS (Database Mangment System)
      - 데이터베이스를 관라힉 위한 프로그램
      - 데이터베이스는 데이터를 보관하는 장소이고, 데이터를 다루는 직업은 DBMS가 한다.
      
    # RDBMS (Relational Database Mangement System)
      - 데이터들 간의 관계를 이용하여 데이터의 중복을 최소화하는 방식의 DBMS
      - 질의문(Query, SQL)으로 데이터를 관리한다.
      - 쿼리는 국제 표준을 따른다.
      - 데이터를 표(table) 형태로 저장한다.
      
    # 테이블
      - 관계형 데이터베이스는 데이터를 표 형태로 저장한다.
      - 필드 (aka_ (속성, 열(colum) 등)으로 부른다.) : 한 열의 저장된 데이터들의 이름
      - 레코드 (aka_ 튜플, 행(row)) : 
                한 행의 저장된 하나의 인스턴스(개체_관련된 데이터들의 묶음)
      
    # SQL (Structured Query Language)
      - RDBMS에 명령을 내리기 위한 언어
*/

-- 현재 접속한 계정을 확인하는 명령어
show user; 

-- 현재 접속한 계쩡이 가지고 있는 모든 테이블을 확인하는 명령어
select * from tab;

-- 테이블들의 모든 내용을 확인하는 명령어
select * from employees;
select * from countries;
select * from departments;
