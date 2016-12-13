DECLARE
    v_emp_name employees.first_name%TYPE;

BEGIN
    SELECT first_name INTO v_emp_name 
    FROM employees where employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE ('Employee name is ' || v_emp_name);
END;