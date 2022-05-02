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
     
insert into goods 
  values ('M1',	'Meat', '계란', '7200', 'meat1', '20구', '1200g');
insert into goods 
  values ('M2',	'Meat', '훈제오리', '2682', 'meat2', '1팩', '150g');
insert into goods 
  values ('M3',	'Meat', '삼겹살', '12660', 'meat3', '1팩', '600g');
insert into goods 
  values ('M4',	'Meat', '앞다리 살', '6900', 'meat4', '1팩', '600g');
insert into goods 
  values ('M5',	'Meat', '소고기 다짐육', '7500', 'meat5', '1팩', '200g');
insert into goods 
  values ('M6',	'Meat', '목살', '12660', 'meat6', '1팩', '600g');
insert into goods 
  values ('M7',	'Meat', '뒷다리 살', '4500', 'meat7', '1팩', '600g');
insert into goods 
  values ('M8',	'Meat', '치마살', '9730', 'meat8', '1팩', '300g');
insert into goods 
  values ('M9',	'Meat', '대패 삼겹살', '11900', 'meat9', '1팩', '1kg');
insert into goods 
  values ('M10', 'Meat', '닭볶음탕용 닭', '5800', 'meat10', '1팩', '1kg');
insert into goods 
  values ('M11', 'Meat', '소고기 국거리용', '8100', 'meat11', '1팩', '200g');
insert into goods 
  values ('M12', 'Meat', '닭 다리살', '12800', 'meat12', '1팩', '1kg');
insert into goods 
  values ('M13', 'Meat', '메추리 알', '4800', 'meat13', '1팩', '450g');
insert into goods 
  values ('M14', 'Meat', '차돌박이', '9500', 'meat14', '1팩', '150g');
insert into goods 
  values ('M15', 'Meat', '등심 돈까스', '12900', 'meat15', '1팩', '1kg');
insert into goods 
  values ('M16', 'Meat', '돼지고기 다짐육', '3600', 'meat16', '1팩', '300g');
insert into goods 
  values ('M17', 'Meat', '소고기 등심', '11500', 'meat17', '1팩', '250g');
insert into goods 
  values ('M18', 'Meat', '채끝살', '16000', 'meat18', '1팩', '250g');
insert into goods 
  values ('M19', 'Meat', '돼지고기 등심', '5400', 'meat19', '1팩', '300g');
insert into goods 
  values ('M20', 'Meat', '우삼겹', '6930', 'meat20', '1팩', '500g');
insert into goods 
  values ('M21', 'Meat', '생닭', '3500', 'meat21', '1팩', '500g');
insert into goods 
  values ('M22', 'Meat', '닭 안심살', '6900', 'meat22', '1팩', '500g');
insert into goods 
  values ('M23', 'Meat', '닭 가슴살', '12900', 'meat23', '1팩', '2kg');
insert into goods 
  values ('M24', 'Meat', '소고기 우둔살', '8910', 'meat24', '1팩', '200g');
insert into goods 
  values ('M25', 'Meat', '닭 윗날개', '8600', 'meat25', '1팩', '500g');
insert into goods 
  values ('M26', 'Meat', '항정살', '15700', 'meat26', '1팩', '300g');
insert into goods 
  values ('M27', 'Meat', '꽃등심', '29900', 'meat27', '1팩', '200g');
insert into goods 
  values ('M28', 'Meat', '양갈비', '15000', 'meat28', '1팩', '300g');
insert into goods 
  values ('M29', 'Meat', '함박 스테이크', '13000', 'meat29', '2팩', '600g');
insert into goods 
  values ('M30', 'Meat', '소고기 안심', '15900', 'meat30', '1팩', '200g');


    