SELECT tbl_employee.employee_number,
tbl_transaction.employee_number,
employee_first_name, 
employee_last_name,
SUM(AMOUNT) AS SUM_OF_AMOUNT
FROM tbl_employee
     LEFT JOIN tbl_transaction
     ON tbl_employee.employee_number = tbl_transaction.employee_number
GROUP BY tbl_employee.employee_number,
tbl_transaction.employee_number,
employee_first_name, 
employee_last_name;

SELECT employee_number,
employee_first_name, 
employee_last_name,
SUM(AMOUNT) AS SUM_OF_AMOUNT
FROM tbl_employee
     NATURAL JOIN tbl_transaction
GROUP BY employee_number,
employee_first_name, 
employee_last_name

SELECT employee_number,
employee_first_name, 
employee_last_name,
SUM(AMOUNT) AS SUM_OF_AMOUNT
FROM tbl_employee
     LEFT JOIN tbl_transaction
     USING (employee_number)
     --ON tbl_employee.employee_number = tbl_transaction.employee_number
GROUP BY employee_number,
employee_first_name, 
employee_last_name;
