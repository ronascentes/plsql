SET SERVEROUTOUT ON
DECLARE
   emp_name   employees.last_name%TYPE;
   emp_sal    employees.salary%TYPE;
BEGIN
   query_emp (171, emp_name, emp_sal);
   DBMS_OUTPUT.PUT_LINE ('Name: ' || emp_name);
   DBMS_OUTPUT.PUT_LINE ('Salary: ' || emp_sal);
END;
