CREATE TABLE employees_bkp
(
  FIRST_NAME       VARCHAR2(20),
  LAST_NAME        VARCHAR2(20),
  DEPARTMENT_ID    NUMBER
)
/

INSERT into employees_bkp
SELECT first_name, last_name, department_id FROM employees
/