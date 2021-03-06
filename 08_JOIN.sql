/*
    관계형 데이터베이스 (외래키 확인!)
    
    # 기본키 (primary key, pk)
     - 한 테이블에서 하나의 행을 유일하게 구분할 수 있는 컬럼
     - 하나의 테이블에는 반드시 하나의 기본키가 존재해야 한다.
       (하나밖에 설정할 수 없음)
     - 기본키로 설정된 컬럼에는 중복된 값이 들어갈 수 없으며, null값도 허용하지 않는다.

    # 후보키 (Candiate Key)
     - 기본키가 될 조건은 되지만, 기본키가 아닌 컬럼
     
    # 외래키 (Foreign Key, fk)
     - 다른 테이블에서는 기본키 (최소 후보키)이지만 해당 테이블에서는 중복되는 값인 칼럼
     - 어떤 테이블의 기본키가 다른 테이블의 외래키로 설정되면 두 테이블간에 관계가 형성된다.(1:n 관계)
     - 외래키로 설정된 컬럼에는 반드시 참조하는 테이블 해당 칼럼에 존재하는 값만 추가 할 수 있다.
*/

-- 안됨! 겹치는게 있음
SELECT * FROM employees WHERE first_name = 'Peter';
/*
    # 실생활에서 1:n 관계로 설정할 수 있는 사례들을 생각
    
    # SNS 회원 테이블
        이메일(PK), 비밀번호, 닉네임, 주소, 전화번호, 생년월일
    
    # SNS 포스팅 테이블
        글번호(PK), 쓴사람(FK), 글 내용, 글쓴 시간, 공개 여부, 글쓴 장소
    
    # 댓글 테이블
        댓글번호(PK), 쓴사람(FK), 어느글의댓글인가(FK), 댓글 내용
        
        
    # 마트 테이블
        등록번호(후보) / 상품명 / 사이즈 / 품목종류 / 원산지 / 가격 / 거래처(FK) / 재고 / 바코드(PK)
    
    # 거래처 테이블
        등록번호(후보) / 거래처명(PK) / 담당자명 / 주 품목 / 전화번호 / 주소지
*/