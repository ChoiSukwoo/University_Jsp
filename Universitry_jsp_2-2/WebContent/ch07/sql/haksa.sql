/**********************************************************
*  테이블 삭제
***********************************************************/
DROP TABLE SG_Scores;
DROP TABLE Student;
DROP TABLE Course;
DROP TABLE Professor;
DROP TABLE Department;
DROP TABLE Course_Temp;
DROP TABLE Score_Grade;

/**********************************************************
*  Department 테이블 생성
***********************************************************/
CREATE  TABLE  Department (
Dept_ID        VARCHAR2(10),
Dept_Name      VARCHAR2(25),
Dept_Tel       VARCHAR2(12),
CONSTRAINT     Department_pk  PRIMARY KEY (Dept_ID));

/**********************************************************
*  Student 테이블 생성
***********************************************************/
CREATE  TABLE  Student (
Dept_ID        VARCHAR2(10),
Year           VARCHAR2(1),
Student_ID     VARCHAR2(7)     NOT NULL,
Name           VARCHAR2(10)    NOT NULL,
ID_Number      VARCHAR2(14)    NOT NULL    UNIQUE,
Address        VARCHAR2(40),
Telephone      VARCHAR2(12),
Email          VARCHAR2(20)    UNIQUE,
Status         VARCHAR2(1),
I_Date         DATE,
CONSTRAINT     Student_pk      PRIMARY KEY (Student_ID),
CONSTRAINT     Student_fk      FOREIGN KEY (Dept_ID)
               REFERENCES      Department);

/**********************************************************
*  Professor 테이블 생성 (Position(10)->(12) 변경
***********************************************************/
CREATE  TABLE  Professor (
Professor_ID   VARCHAR2(3),
Name           VARCHAR2(10)    NOT NULL,
Position       VARCHAR2(12)    NOT NULL    CONSTRAINT Prof_ck
               CHECK (Position in ('총장','교수','부교수','조교수','전임강사')),
Dept_ID        VARCHAR2(10),
Telephone      VARCHAR2(12)    UNIQUE,
Email          VARCHAR2(20)    UNIQUE,
Duty           VARCHAR2(10),
Mgr            VARCHAR2(3),
CONSTRAINT     Professor_pk    PRIMARY KEY (Professor_ID),
CONSTRAINT     Professor_fk    FOREIGN KEY (Dept_ID)
               REFERENCES      Department);

/**********************************************************
*  Course 테이블 생성 Title 20 --> 21로 변경
***********************************************************/
CREATE  TABLE  Course (
Course_ID      VARCHAR2(5),
Title          VARCHAR2(21)   NOT NULL,
C_Number       NUMBER(1)      NOT NULL,
Professor_ID   VARCHAR2(3),
Course_Fees    NUMBER(7),
CONSTRAINT     Course_pk      PRIMARY KEY (Course_ID),
CONSTRAINT     Course_fk      FOREIGN KEY (Professor_ID)
               REFERENCES     Professor);

/**********************************************************
*  SG_Scores 테이블 생성
***********************************************************/
CREATE  TABLE  SG_Scores (
Student_ID     VARCHAR2(7),
Course_ID      VARCHAR2(5),
Score          NUMBER(3),
Grade          VARCHAR2(2),
Score_Assigned DATE           DEFAULT  SYSDATE,
CONSTRAINT     SG_Scores_pk   PRIMARY KEY (Student_ID, Course_ID),
CONSTRAINT     SG_Scores_fk1  FOREIGN KEY (Student_ID)
               REFERENCES     Student,
CONSTRAINT     SG_Scores_fk2  FOREIGN KEY (Course_ID)
               REFERENCES     Course);


/**********************************************************
* Score_Grade 테이블 생성
***********************************************************/
CREATE TABLE Score_Grade (
LOW    NUMBER(3),
HIGH   NUMBER(3),
GRADE  CHAR(2));

/**********************************************************
*  Course_Temp 테이블 생성
***********************************************************/
CREATE  TABLE  Course_Temp 
AS 
   SELECT * 
   FROM   Course
   WHERE  10=20
/