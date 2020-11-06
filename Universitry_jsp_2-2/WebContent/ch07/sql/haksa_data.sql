/**********************************************************
*  Department 테이블 견본 데이터
***********************************************************/
INSERT INTO Department VALUES ('컴공','컴퓨터공학과',  '765-4100');
INSERT INTO Department VALUES ('정통','정보통신공학과','765-4200');
INSERT INTO Department VALUES ('경영','경영학과',      '765-4400');
INSERT INTO Department VALUES ('행정','세무행정학과',  '765-4500');

/**********************************************************
*  Student 테이블 견본 데이터
***********************************************************/
INSERT INTO Student  VALUES
('컴공','1','C1001','김대현','920101-1******','서울시 송파구', '01-932-9999', 
 'c1001@cyber.ac.kr',Null,'2010/03/01');
INSERT INTO Student  VALUES
('컴공','1','C1002','신지애','920521-2******','대전시 대덕구', '041-343-8838',
 'c10032cyber.ac.kr','H', '2010/03/01');
INSERT INTO Student  VALUES
('컴공','2','C0901','이정민','911109-2******','대구시 수성구', Null,          
 'c0901@cyber.ac.kr',Null,'2009/03/06');
INSERT INTO Student  VALUES
('컴공','2','C0902','박주영','920917-1******','경남 진해시',   '010-555-1616',          
 'c0902@cyber.ac.kr',Null,'2009/03/06');
INSERT INTO Student  VALUES
('컴공','3','C0801','한영삼','900708-1******','부산시 동래구', '016-999-0101',          
 'c0801@cyber.ac.kr',Null,'2008/03/05');
INSERT INTO Student  VALUES
('컴공','3','C0802','서희경','890205-2******','서울시 영등포구','010-333-0707',         
 'c0802@cyber.ac.kr',Null,'2008/03/05');
INSERT INTO Student  VALUES
('정통','1','T1001','김병호','891124-1******','대구시 달서구',  '011-222-0303',         
  Null,              Null,'2010/03/05');
INSERT INTO Student  VALUES
('정통','2','T0901','이정필','901117-1******','충남 천안시',    Null,          
 't0901@cyber.ac.kr',Null,'2009/03/06');
INSERT INTO Student  VALUES
('경영','1','B1001','김빛나','930422-2******','서울시 은평구',  Null,
  Null,              Null,'2010/03/05');
INSERT INTO Student  VALUES
('경영','2','B0901','배상문','761225-1******','대전시 동구읍',  Null,         
 'b0901@cyber.ac.kr',Null,'2009/03/06');
INSERT INTO Student  VALUES
('행정','1','A1001','이미나','901217-2******','전남 광양시',    '010-888-5050',         
  Null,              Null,'2008/03/05');

/**********************************************************
*  Professor 테이블 견본 데이터
***********************************************************/
INSERT INTO Professor VALUES
 ('P11', '신기술', '교수',    '컴공','765-4111','ksshin@cyber.ac.kr','학과장','P00');
INSERT INTO Professor VALUES
 ('P12', '이대호', '부교수',  '컴공','765-4112','dhlee@cyber.ac.kr', Null,    'P11');
INSERT INTO Professor VALUES
 ('P13', '유소연', '전임강사','컴공','765-4113','syyoo@cyber.ac.kr',Null,    'P11');
INSERT INTO Professor VALUES
 ('P21', '박지성', '부교수',  '정통','765-4211','jspark@cyber.ac.kr','학과장','P00');
INSERT INTO Professor VALUES
 ('P22', '김하늘', '조교수',  '정통','765-4212','hnkim@cyber.ac.kr',  Null,    'P21');
INSERT INTO Professor VALUES
 ('P23', '이상혁', '전임강사','정통','765-4213','shlee@cyber.ac.kr', Null,    'P21');
INSERT INTO Professor VALUES
 ('P41', '안연홍', '부교수',  '경영','765-4411','yhahn@cyber.ac.kr','학과장', 'P00');
INSERT INTO Professor VALUES
 ('P51', '함영애', '부교수',  '행정','765-4511','yaham@cyber.ac.kr','학과장', 'P00');

/**********************************************************
*  Course 테이블 견본 데이터
***********************************************************/
INSERT INTO Course VALUES ('L1011','컴퓨터구조',    2,'P11',Null);
INSERT INTO Course VALUES ('L1012','웹디자인',      2, Null,20000);
INSERT INTO Course VALUES ('L1021','데이터베이스',  2,'P12',Null);
INSERT INTO Course VALUES ('L1022','정보통신개론',  2,'P21',Null);
INSERT INTO Course VALUES ('L1031','SQL',           3,'P12',30000);
INSERT INTO Course VALUES ('L1032','자바프로그래밍',3,'P13',Null);
INSERT INTO Course VALUES ('L1041','컴퓨터네트워크',2,'P21',Null);
INSERT INTO Course VALUES ('L1042','Delphi',        3,'P13',50000);
INSERT INTO Course VALUES ('L1051','웹서버관리',    2,'P11',Null);
INSERT INTO Course VALUES ('L1052','전자상거래',    3,'P22',30000);
INSERT INTO Course VALUES ('L2031','게임이론',      3,'P23',50000);
INSERT INTO Course VALUES ('L0011','TOEIC연구',     2, Null,Null);
INSERT INTO Course VALUES ('L0012','문학과 여행',   2, Null,Null);
INSERT INTO Course VALUES ('L0013','문학개론',      2, Null,Null);

/**********************************************************
*  SG_Scores 테이블 견본 데이터
***********************************************************/
INSERT INTO SG_Scores VALUES ('C0901','L1011', 97, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0902','L1011', 89, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0901','L1012', 82, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0902','L1012', 94, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0801','L1031', 96, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0802','L1031', 96, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0801','L1032', 78, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0802','L1032', 90, Null, '2009/06/29');
INSERT INTO SG_Scores VALUES ('C0901','L1021', 96, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0902','L1021', 86, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0901','L1022', 97, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0902','L1022', 87, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0801','L1041', 87, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0802','L1041', 99, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0801','L1042', 83, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0802','L1042', 98, Null, '2009/12/23');
INSERT INTO SG_Scores VALUES ('C0901','L1031', 85, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0902','L1031', 77, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0901','L1032', 93, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0902','L1032', 97, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0801','L1051', 87, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0802','L1051', 77, Null, '2010/06/28');
INSERT INTO SG_Scores VALUES ('C0801','L1052', 89, Null, '2010/06/28'); 
INSERT INTO SG_Scores VALUES ('C0802','L1052', 89, Null, '2010/06/28'); 
INSERT INTO SG_Scores VALUES ('C0901','L1041', 93, Null, '2010/12/27');
INSERT INTO SG_Scores VALUES ('C0902','L1041', 87, Null, '2010/12/27');
INSERT INTO SG_Scores VALUES ('C0901','L1042',105, Null, '2010/12/27');
INSERT INTO SG_Scores VALUES ('C0902','L1042', 98, Null, '2010/12/27');
INSERT INTO SG_Scores VALUES ('C0801','L0011', 68, Null, '2010/12/27');
INSERT INTO SG_Scores VALUES ('C0802','L0011', 98, Null, '2010/12/27');

 /**********************************************************
*  Course_Temp 테이블 견본 데이터
***********************************************************/
INSERT INTO Course_Temp VALUES ('L1031','SQL응용',       3,'P12',50000);
INSERT INTO Course_Temp VALUES ('L1032','JAVA',          3,'P13',30000);
INSERT INTO Course_Temp VALUES ('L1043','JSP 프로그래밍',3, NULL,50000);
INSERT INTO Course_Temp VALUES ('L2033','게임프로그래밍',3,'P23',40000);
INSERT INTO Course_Temp VALUES ('L4011','경영정보시스템',3,'P41',30000);
INSERT INTO Course_Temp VALUES ('L4012','세무행정학',    3,'P51',50000);

 /**********************************************************
*  Course_Grade 테이블 견본 데이터
***********************************************************/
INSERT INTO SCORE_GRADE VALUES (90,100,'A');
INSERT INTO SCORE_GRADE VALUES (80,89,'B');
INSERT INTO SCORE_GRADE VALUES (70,79,'C');
INSERT INTO SCORE_GRADE VALUES (60,69,'D');
INSERT INTO SCORE_GRADE VALUES (0,59,'F');

COMMIT;