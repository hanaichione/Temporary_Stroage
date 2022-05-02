---상품
   -- vegetable, fruit, seafood, meat, noodle
   create table goods
   ( gCode varchar2(20) PRIMARY KEY, -- 상품코드
     gCategory varchar2(20) not null,   -- 상품 카테고리
     gName varchar2(50) not null,   -- 상품 이름   (본래 식재료 이름만 표기 원산지, 생산자 제외)
     gPrice NUMBER(6) not null,     -- 상품 가격
     gImage varchar2(20) not null,   -- 상품 이미지
     gUnit varchar2(20),     -- 판매단위 (기재된 것이 없을 경우 NULL)
     gWeight varchar2(20)   -- 중량 (기재된 것이 없을 경우 NULL)
     );

