--WHAT ABOUT THE PARTIAL SEARCH
--WE USE LIKE AND % (WILD CARD)
--% can represent 0 or more character of any kind
--_can represent exactly one character of any kind

/*
        'D%' -> anything that starts with D
        David, Danny, Dog
        '%d' -> anything that ends with d
        Sid, Bid, Kid, Dad
        '%d%' -> anything that contains 1 or more letter d
        Aladdin, Cassandra, Adam

        'D%a" -> anything starts with D and end with a
        Daniela, Donna, Damla
        'S%e%n' -> anything starts with S ends with n and contains e
        Steven, Stephen, Selen

        'T_' -> Starts with T and followed by
        exactly on character of any kind
        Tj, TD, Ta, Ta

        '_a_' -> starts with any one character,
        followed by a and followed by any one character
        Dad, Man, Fat, Tab, Gap
 */
SELECT FIRST_NAME FROM EMPLOYEES
--WHERE FIRST_NAME LIKE 'D%'; --9
--WHERE FIRST_NAME LIKE '%d'; --6
--WHERE FIRST_NAME LIKE '%d%'; --15
--WHERE FIRST_NAME LIKE 'D%a'; --1
--WHERE FIRST_NAME LIKE 'S%e%n'; --3
--WHERE FIRST_NAME LIKE 'T_'; --1
--WHERE FIRST_NAME LIKE '_a_'; --1
WHERE FIRST_NAME LIKE 'Da%';

SELECT PHONE_NUMBER FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '515%'; --21 STARTS WITH 515

SELECT PHONE_NUMBER FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '%.121.%'; --8 CONTAINS 121 in the middle

--You can optionally give an ALIAS (NICKNAME) for your
--column to change the reuslting column name (only on display not database)
--using the keyword as right after column name
--
--Display all first name , salary in employees table
-- modify the column name for salary in result to money

SELECT FIRST_NAME, SALARY AS MONEY
FROM EMPLOYEES;

--Display all first name , Last name in employees table
-- modify the column name for as below
--First_Name -> GIVEN_NAME  LAST_NAME --> FAMILY_NAME
SELECT FIRST_NAME AS GIVEN_NAME , LAST_NAME AS FAMILY_NAME
FROM EMPLOYEES;

--Display all first name , Last name in employees table
-- modify the column name for as below
--First_Name -> GIVEN NAME  LAST_NAME --> FAMILY NAME
SELECT FIRST_NAME AS "GIVEN NAME" , LAST_NAME AS "FAMILY NAME"
FROM EMPLOYEES;

--CONCATENATION IN SQL USE DOUBLE PIPE || (THIS IS NOT OR)
--DISPLAY FIRST NAME, LAST NAME, AND FULL NAME FOR EMPLOYEE
SELECT FIRST_NAME, LAST_NAME,
       FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME --Concatenate full name
FROM EMPLOYEES;

--ARITHMETIC OPERATION : + - * /
--Display FIRST name and salary and
-- increased salary after $5000 raise

SELECT FIRST_NAME, SALARY,
       SALARY + 5000 AS "INCREASED SALARY"
FROM EMPLOYEES;

-- AND decreased salary after $2000 cut

SELECT FIRST_NAME, SALARY,
       SALARY - 2000 AS "decreased salary"
FROM EMPLOYEES;

--and yearly salary = multiply by 12

SELECT FIRST_NAME, SALARY,
       SALARY * 12 AS "YEARLY SALARY"
FROM EMPLOYEES;

--and weekly salary = divide by 4

SELECT FIRST_NAME, SALARY,
       SALARY / 4 AS "HOURLY SALARY"
FROM EMPLOYEES;

--ALL TOGETHER IN ONE SCHEDULE

SELECT FIRST_NAME, SALARY,
       SALARY + 5000 AS "INCREASED_SALARY",
       SALARY - 2000 AS "DECREASED_SALARY",
       SALARY * 12 AS "YEARLY_SALARY",
       SALARY / 4 AS "HOURLY_SALARY"

FROM EMPLOYEES;

-- SQL BUILT-IN FUNCTIONS:
-- REUSABLE CODE THAT WRAPPED INTO FUNCTION FOR COMMON TASKS
-- LIKE ROUNDING NUMBERS, GETTING LENGTH OF STR AND MORE,
--SINGLE ROW FUNCTION
    --IT AFFECT EACH AND EVERY ROW AND RETURN SAME NUMBER OF ROW

    --FEW TEXT FUNCTIONS:
    -- UPPER,
    -- LOWER,
    -- LENGTH

--DISPLAY FRIST_NAME, AND UPPERCASE FIRST_NAME IN E,PLOYEE TABLE
SELECT FIRST_NAME, UPPER((FIRST_NAME))
FROM EMPLOYEES;



