SELECT Department, Employee_number, Attendance_Month AS Attendance_Month, SUM(Number_Attendance) AS Number_Attendance
       ,GROUPING(Attendance_Month) as Is_Grouping
       ,GROUPING_ID(Department, Employee_Number, Attendance_Month) as My_Grouping
From tbl_employee join tbl_Attendance
USING (Employee_number)
group by rollup (Department, Employee_Number, Attendance_Month)
order by Department, Employee_Number, Attendance_Month;

SELECT Department, Employee_number, Attendance_Month AS Attendance_Month, SUM(Number_Attendance) AS Number_Attendance
       ,GROUPING(Attendance_Month) as Is_Grouping
       ,GROUPING_ID(Department, Employee_Number, Attendance_Month) as My_Grouping
From tbl_employee join tbl_Attendance
USING (Employee_number)
group by cube (Department, Employee_Number, Attendance_Month)
order by Department, Employee_Number, Attendance_Month;

SELECT Department, Employee_number, Attendance_Month AS Attendance_Month, SUM(Number_Attendance) AS Number_Attendance
       ,GROUPING(Attendance_Month) as Is_Grouping
       ,GROUPING_ID(Department, Employee_Number, Attendance_Month) as My_Grouping
From tbl_employee join tbl_Attendance
USING (Employee_number)
group by GROUPING SETS ((Department, Employee_Number, Attendance_Month),(Department), (Employee_number), ())
order by Department NULLS FIRST, Employee_Number NULLS FIRST, Attendance_Month NULLS FIRST;