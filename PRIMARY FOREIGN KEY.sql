ALTER TABLE TBL_EMPLOYEE
ADD CONSTRAINT PK_TBL_EMPLOYEE PRIMARY KEY(EMPLOYEE_NUMBER);

ALTER TABLE TBL_TRANSACTION
ADD CONSTRAINT FK_TBL_TRANSACTION_EMPLOYEE_NUMBER FOREIGN KEY(EMPLOYEE_NUMBER)
REFERENCES TBL_EMPLOYEE(EMPLOYEE_NUMBER)
ENABLE NOVALIDATE
;