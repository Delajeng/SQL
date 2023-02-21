CREATE VIEW VIEW_OF_TOTALAMOUNT AS
SELECT d.department, t.employee_number, t.amount AS TOTALAMOUNT
FROM tbl_department D
LEFT JOIN tbl_employee E
ON d.department = e.department
LEFT JOIN tbl_transaction T
ON e.employee_number = t.employee_number
WHERE T.EMPLOYEE_NUMBER BETWEEN 120 AND 129
ORDER BY d.department, t.employee_number

CREATE VIEW VIEW_SUM AS 
SELECT d.department, t.employee_number, SUM(t.amount) AS TOTALAMOUNT
FROM tbl_department D
LEFT JOIN tbl_employee E
ON d.department = e.department
LEFT JOIN tbl_transaction T
ON e.employee_number = t.employee_number
GROUP BY d.department, t.employee_number
ORDER BY d.department, t.employee_number;