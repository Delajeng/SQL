SELECT
SUBSTR(employee_last_name,1,1) AS "INITIAL",
COUNT(*) AS COUNT_OF_INITIAL
FROM
    TBL_EMPLOYEE
WHERE DATE_OF_BIRTH >= TO_DATE('1986-01-01','YYYY-MM-DD')
GROUP BY SUBSTR(employee_last_name,1,1)
HAVING COUNT(*)>=20
ORDER BY "INITIAL" DESC;

SELECT
      TO_CHAR(DATE_OF_BIRTH, 'MONTH') AS MONTH_NAME
      ,COUNT(*) AS NUMBER_OF_EMPLOYEES
      ,COUNT(employee_middle_name) AS NUMBER_OF_MIDDLE_NAMES
      ,COUNT(*)- COUNT(employee_middle_name) AS NUMBER_WITHOUT_MIDDLE_NAMES
      ,TO_CHAR(MIN(date_of_birth), 'DL') AS EARLIEST_DATE_OF_BIRTH
      ,TO_CHAR(MAX(date_of_birth), 'DL') AS LATEST_DATE_OF_BIRTH
FROM
      TBL_EMPLOYEE
GROUP BY
        TO_CHAR(DATE_OF_BIRTH, 'MONTH'), TO_CHAR(DATE_OF_BIRTH, 'MM')
ORDER BY 
        TO_CHAR(DATE_OF_BIRTH, 'MM');