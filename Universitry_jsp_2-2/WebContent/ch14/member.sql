/*----------------------------------------------------------------------*/
/*  회원관리 테이블                                                     */
/*----------------------------------------------------------------------*/
CREATE TABLE Member (
  m_uid		VARCHAR2(15)    PRIMARY KEY,
  m_pwd		VARCHAR2(15)    NOT NULL,
  m_name	VARCHAR2(20)    NOT NULL,
  m_ssn		VARCHAR2(14)    NOT NULL,
  m_email	VARCHAR2(30),
  m_phone	VARCHAR2(13),
  m_regdate	DATE		DEFAULT SYSDATE,
  m_visit	NUMBER(5)	DEFAULT 0,
  m_lastvisit	DATE )
/

/*----------------------------------------------------------------------*/
/*  회원관리 테이블 데이터                                              */
/*----------------------------------------------------------------------*/
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('mskim','1234','김명석','820101-1******','01-932-9999', 'c101@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name,  m_SSN,m_Phone, m_Email) VALUES
('smpark','1234','박수미','820521-2******','053-777-1255', 'c102@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('ysjung','1234','정연숙','820303-2******','041-343-8838', 'c103@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('syhwang','1234','황석영','830715-1******','02-123-5432', 'c104@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('jmkim','1234','김정민','821113-2******','032-212-8348', 'a101@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('srlee','1234','이소라','821001-2******', '051-665-8742', 'c102@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('yspark','1234','박연수','810604-1******','031-337-3777', 'a103@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('ymna','1234','나영민','780925-1******','053-487-9852', 'i101@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('hjpark','1234','박향진','820221-2******','061-855-9874',Null);
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('jhcho','I234','조진행','820403-1******','042-661-1125', 'i103@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN,  m_Phone, m_Email) VALUES
('mkyun','1234','윤미경','821106-2******','051-812-7412', 'i104@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('jhko','1234','고정해','810923-2******','031-777-8888',null);
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN,  m_Phone, m_Email) VALUES
('theom','1234','엄태홍','821212-1******','052-881-9090','b101@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN, m_Phone, m_Email) VALUES
('hucho','1234','조행운','830422-1******', '02-111-8762', 'b102@cyber.ac.kr');
INSERT INTO Member  (m_UID, m_PWD, m_Name, m_SSN,  m_Phone, m_Email) VALUES
('tujeon','1234','전태우','810527-2******',Null,'i001@cyber.ac.kr' )
/
COMMIT;