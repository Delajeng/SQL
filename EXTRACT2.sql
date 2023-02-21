SELECT employee_number, EXTRACT(YEAR FROM attendance_month) AS ATTENDANCE_YEAR, 
       SUM(number_attendance) AS TOTAL_ATTENDANCE
FROM tbl_attendance 
group by employee_number, EXTRACT(YEAR FROM attendance_month)
ORDER BY employee_number, EXTRACT(YEAR FROM attendance_month);