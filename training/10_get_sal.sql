CREATE OR REPLACE FUNCTION get_sal (id IN employees.employee_id%TYPE)
   RETURN NUMBER
IS
   sal   employees.salary%TYPE := 0;
BEGIN
   SELECT   salary
     INTO   sal
     FROM   employees
    WHERE   employee_id = id;

   RETURN sal;
END get_sal;
