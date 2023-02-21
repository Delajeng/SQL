WITH MyTable (employee_number, employee_first_name, employee_last_name, Boss_Number)
AS (
SELECT E.employee_number, E.employee_first_name, E.employee_last_name, 0 AS Boss_Number
FROM tbl_employee E
WHERE manager IS NULL
UNION ALL
SELECT E.employee_number, E.employee_first_name, E.employee_last_name, M.boss_number + 1 AS Boss_Number
FROM tbl_employee E
JOIN MyTable M on E.manager = M.employee_number 
)
SELECT * FROM MyTable
ORDER BY employee_number;