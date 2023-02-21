SELECT D.DEPARTMENT, SUM(AMOUNT) AS SUM_OF_AMOUNT
FROM tbl_department D
LEFT JOIN tbl_employee E
ON d.department = e.department
LEFT JOIN tbl_transaction T
ON e.employee_number = t.employee_number 
group by D.DEPARTMENT;

