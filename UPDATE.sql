SELECT * FROM TBL_EMPLOYEE WHERE EMPLOYEE_NUMBER = 194;
SELECT * FROM TBL_TRANSACTION WHERE EMPLOYEE_NUMBER = 3;
SELECT * FROM TBL_TRANSACTION WHERE EMPLOYEE_NUMBER = 194;

UPDATE tbl_transaction
set employee_number = 3
where employee_number = 194;

