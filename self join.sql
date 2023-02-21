SELECT
    E.employee_number, E.employee_first_name, E.employee_last_name,
    M.employee_number, M.employee_first_name, M.employee_last_name
FROM
    tbl_employee E
    left JOIN tbl_employee M
    on E.manager = M.employee_number 
ORDER BY E.employee_number;