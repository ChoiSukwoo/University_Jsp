/********************************************************************
*  EC_Product 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Product VALUES 
('NB01', '노트북컴퓨터','GT633', '대',1396000, 15,'SAMSUNG', 'nb01.jpg',
'인텔 i5-460M 2.53GHz: RAM 4GB: HDD 500GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES 
('NB02', '노트북컴퓨터','U35JC', '대',1137220, 10,'SAMSUNG', 'nb02.jpg',
'인텔 i5-450M 2.40GHz: RAM 4GB: HDD 500GB: 13.3" 모니터', Null);
INSERT INTO EC_Product VALUES 
('NB03', '노트북컴퓨터','DV6',   '대', 998000, 10,'HP',      'nb03.jpg',
'인텔 i3-350M 2.66GHz: RAM 2GB: HDD 250GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES 
('CM01', '개인용컴퓨터','HPE-340KL','대',1121300, 30,'HP',   'cm01.jpg',
'인텔 i750 2.66GHz: RAM 4GB: HDD 1TB: GeForce GTX260', Null);
INSERT INTO EC_Product VALUES 
('CM02', '개인용컴퓨터','DM-C200','대', 651500, 20,'SAMSUNG', 'cm02.jpg',
'인텔 E5700 3.00GHz: RAM 2GB: HDD 320GB: 내장그래픽', Null);
INSERT INTO EC_Product VALUES 
('CM03', '개인용컴퓨터','T30MS', '대',1120000, 20,'LG전자',  'cm03.jpg',
'인텔 E6700 3.20GHz: RAM 2GB: HDD 500GB: GeForce GT220', Null);
INSERT INTO EC_Product VALUES 
('PRT01','프린터', 'CLX-3185WK', '대', 353000, 10,'SAMSUNG', 'pt01.jpg',
'무선컬러레이저복합기: 600DPI: 개인용', Null);
INSERT INTO EC_Product VALUES 
('PRT02','프린터', 'CLP-325WK','대',1600000,  3,'SAMSUNG', 'pt02.jpg',
'무선칼러레이저: 1200DPI: 오피스용', Null);
INSERT INTO EC_Product VALUES 
('PRT03','프린터', 'K8600',    '대', 409000, 10,'HP',      'pt03.jpg',
'잉크젯: 1200DPI: 칼러인쇄 10PPM: 개인용', Null);
INSERT INTO EC_Product VALUES 
('PRT04','프린터', 'CP3525DN', '대',1382000,  5,'HP',      'pt04.jpg',
'칼러레이저젯: 30PPM: USB2.0: 양면: 오피스용', Null);
INSERT INTO EC_Product VALUES 
('TV01', 'TV', 'LN46C632M1F','대',1590120, 10,'SAMSUNG', 'tv01.jpg',
'PAVV LCD 632: 46" 스탠드형', Null);
INSERT INTO EC_Product VALUES 
('TV02', 'TV', '47LD452',    '대',1580000, 10,'LG전자',  'tv02.jpg',
'Xcanvas 120Hz Full-HD급 47": 벽결이형(슬림)', Null);
INSERT INTO EC_Product VALUES 
('TV03', 'TV', 'UN46C8000XF','대',2785000,  5,'Samsung', 'tv03.jpg',
'PAVV 3D LED Full HD: 46"', Null);
INSERT INTO EC_Product VALUES 
('TV04', 'TV', '47LX9500',   '대',2920000,  5,'LG전자',  'tv04.jpg',
'3D Full LED Slim: 47"', Null);
INSERT INTO EC_Product VALUES 
('DK01', '책상', '1200x745x750','개', 86000,100, Null,     'dk01.jpg',
'사무용 컴퓨터 책상', Null);
INSERT INTO EC_Product VALUES
('CH01', '의자', '회전용', '개', 75000,100, Null, 'ch01.jpg','회전의자: 590x640x980', Null);

/********************************************************************
*  EC_Member 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Member VALUES 
('usko',  '1234','고우선','850102-2******',Null,'02-874-1452', '서울특별시 강남구',  '2007/05/01');
INSERT INTO EC_Member VALUES 
('supark','1234','박세우','730914-1******',Null,'051-666-8745','부산광역시 동래구',  '2007/05/01');
INSERT INTO EC_Member VALUES 
('mskim', '1234','김미선','750506-2******',Null,'053-888-3254','대구광역시 달서구',  '2007/07/11');
INSERT INTO EC_Member VALUES 
('jupark','1234','박지운','451214-1******',Null,'011-801-2923','서울특별시 영등포구','2007/07/11');
INSERT INTO EC_Member VALUES 
('imjung','1234','정일미','560807-2******',Null,'02-222-6666', '서울특별시 송파구',  '2008/06/01');
INSERT INTO EC_Member VALUES 
('shchoi','1234','최상희','330125-2******',Null,'016-241-5558','광주광역시 동구',    '2008/11/10'); 
INSERT INTO EC_Member VALUES 
('uskang','1234','강욱선','710911-2******',Null,'052-789-6547','경북 경주시',        '2009/02/01');
INSERT INTO EC_Member VALUES 
('kcchoi','1234','최광수','590514-1******',Null,'032-555-9998','인천광역시 서구',    '2009/05/31');
INSERT INTO EC_Member VALUES 
('cscho', '1234','조철상','550707-1******',Null,'02-888-8884', '서울특별시 은평구',  '2009/09/15');
INSERT INTO EC_Member VALUES 
('mhlee', '1234','이민형','720222-1******',Null,'019-102-1010','강원도 춘천시',      '2010/03/03');
INSERT INTO EC_Member VALUES 
('jskang','1234','강준상','820303-1******',Null,'017-111-3333','강원도 원주시',      '2010/04/08');
INSERT INTO EC_Member VALUES 
('ujjung','1234','정유진','801225-2******',Null,'011-283-9383','서울특별시 종로구',  '2010/08/01');
INSERT INTO EC_Member VALUES 
('shlee', '1234','이상혁','770709-1******',Null,'011-876-9876','대전광역시 유성구',  '2010/08/24');
INSERT INTO EC_Member VALUES 
('uychoi','1234','최윤영','811010-2******',Null,'053-666-7777','대구광역시 수성구',  '2010/11/01'); 
INSERT INTO EC_Member VALUES 
('hskim', '1234','김혜수','431122-2******',Null,'061-822-1112','광주광역시 북구',    '2011/01/14');
INSERT INTO EC_Member VALUES 
('sbhong','1234','홍서빈','500110-2******',Null,'016-392-9921','제주도 서귀포시',    '2011/02/01');
  
/********************************************************************
*  EC_Basket 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Basket VALUES  ('100506001','usko', 'TV01',1,'2010/11/06');
INSERT INTO EC_Basket VALUES  ('100506002','hskim','CM01',1,'2010/11/06');
INSERT INTO EC_Basket VALUES  ('100506003','mhlee','NB02',1,'2010/11/06');

/********************************************************************
*  EC_Order 테이블 견본 데이터
********************************************************************/
INSERT INTO EC_Order VALUES ('100514001','usko',  'NB01', 1,'신용카드',1396000,'2010/07/15','2010/05/21','배달');
INSERT INTO EC_Order VALUES ('100524001','supark','NB02', 1,'현금입금',1137220,'2010/07/24','2010/05/25','배달');
INSERT INTO EC_Order VALUES ('100619002','supark','PRT01',1,'현금입금', 353000,'2010/07/29','2010/06/25','배달');
INSERT INTO EC_Order VALUES ('100602001','imjung','TV03', 1,'신용카드',1200000,'2010/08/05','2010/06/07','배달');
INSERT INTO EC_Order VALUES ('100602002','uskang','PRT03',1,'현금입금',2785000,'2010/08/14','2010/06/05','배달');
INSERT INTO EC_Order VALUES ('100701001','cscho', 'CM03', 1,'계좌이체',1120000,'2010/08/22','2010/07/13','배달');
INSERT INTO EC_Order VALUES ('100702001','jskang','TV01', 1,'신용카드',1590120,'2010/08/28','2010/07/19','취소'); 
INSERT INTO EC_Order VALUES ('100714001','jupark','CM01', 5, Null,     5606500, Null,        Null,       '미결');
INSERT INTO EC_Order VALUES ('100714002','jupark','PRT02',5, Null,     8000000, Null,        Null,       '미결');
INSERT INTO EC_Order VALUES ('100720001','kcchoi','DK01', 1,'신용카드',  86000,'2010/10/22', Null,       '결재');
INSERT INTO EC_Order VALUES ('100720002','kcchoi','CH01', 1,'신용카드',  75000,'2010/10/22', Null,       '결재');

COMMIT;