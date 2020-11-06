/**********************************************************
*  SG_Scores 테이블 칼럼 추가
***********************************************************/
ALTER TABLE SG_Scores
ADD (User_Name VARCHAR2(25)  DEFAULT '오라클계정: '|| USER,
     C_Date    DATE          DEFAULT SYSDATE );

/**********************************************************
*  SG_Scores 테이블에 등급 계산 함수 작성
***********************************************************/

CREATE OR REPLACE FUNCTION Grade_Cal(Score Number)
  RETURN   VARCHAR2 IS
  v_Grade  VARCHAR2(2);
BEGIN
  IF Score >= 95       THEN v_Grade := 'A+';
     ELSIF Score >= 90 THEN v_Grade := 'A ';
     ELSIF Score >= 85 THEN v_Grade := 'B+';
     ELSIF Score >= 80 THEN v_Grade := 'B ';
     ELSIF Score >= 75 THEN v_Grade := 'C+';
     ELSIF Score >= 70 THEN v_Grade := 'C ';
     ELSIF Score >= 65 THEN v_Grade := 'D+';
     ELSIF Score >= 60 THEN v_Grade := 'D ';
  ELSE                      v_Grade := 'F ';
  END IF;
  RETURN v_Grade;
 END;
/

/**********************************************************
*  SG_Scores 테이블에 등급 계산				  *
***********************************************************/

UPDATE SG_Scores
   SET Grade = Grade_Cal (Score);
/

Commit;