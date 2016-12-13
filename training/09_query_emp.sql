
CREATE OR REPLACE PROCEDURE query_emp (
   id       IN     employees.employee_id%TYPE,
   name        OUT employees.last_name%TYPE,
   salary      OUT employees.salary%TYPE
)
IS
BEGIN
   SELECT   last_name, salary
     INTO   name, salary
     FROM   employees
    WHERE   employee_id = id;
    
END query_emp;