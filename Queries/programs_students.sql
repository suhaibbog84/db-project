CREATE TABLE PROGRAMS (
                          PROGRAM_ID VARCHAR2(3) NOT NULL,
                          PROGRAM_NAME VARCHAR2(20) NOT NULL,
                          DESCRIPTION VARCHAR2(50),
                          CONSTRAINT PROGRAMS_PK PRIMARY KEY ( PROGRAM_ID ) ENABLE
);


INSERT INTO PROGRAMS (PROGRAM_ID, PROGRAM_NAME, DESCRIPTION)
VALUES ('B15', 'B15 Online', 'B15 Online descriptions');
INSERT INTO PROGRAMS (PROGRAM_ID, PROGRAM_NAME, DESCRIPTION)
VALUES ('B17', 'B17 Local', 'B17 descriptions goes here');
INSERT INTO PROGRAMS (PROGRAM_ID, PROGRAM_NAME, DESCRIPTION)
VALUES ('B18', 'B18 Online', 'B18 description goes here');
INSERT INTO PROGRAMS (PROGRAM_ID, PROGRAM_NAME, DESCRIPTION)
VALUES ('B19', 'B19 Pending', 'B19 descriptions goes here');


CREATE TABLE STUDENTS (
                          STUDENT_ID NUMBER NOT NULL,
                          STUDENT_NAME VARCHAR2(20 BYTE) NOT NULL,
                          PROGRAM_ID VARCHAR2(20 BYTE),
                          CONSTRAINT STUDENTS_PK PRIMARY KEY ( STUDENT_ID ),
                          CONSTRAINT STUDENTS_FK FOREIGN KEY ( PROGRAM_ID )
                              REFERENCES PROGRAMS ( PROGRAM_ID ),
                          CONSTRAINT STUDENTS_UK UNIQUE ( STUDENT_NAME ),
                          CONSTRAINT NAME_CHECK CHECK ( LENGTH(STUDENT_NAME) > 2 )
);

INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (100,'Johan','B18');
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (101,'Adam','B17');
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (102,'Mary','B17');
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (103,'Anna','B15');
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (104,'Jay','B18');
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (105,'Mia',null);
INSERT INTO STUDENTS (student_id,student_name,program_id)
VALUES (106,'Kory',null);

SELECT s.STUDENT_NAME, s.PROGRAM_ID, p.PROGRAM_NAME
FROM STUDENTS s
         INNER JOIN PROGRAMS p ON p.PROGRAM_ID= s.PROGRAM_ID;