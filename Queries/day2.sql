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

