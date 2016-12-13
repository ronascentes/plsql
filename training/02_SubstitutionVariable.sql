DECLARE
    v_emp_salary employees.salary%TYPE;
    v_empno NUMBER := &v_empno;
BEGIN
    SELECT salary 
      INTO v_emp_salary 
      FROM employees
      WHERE employee_id = v_empno;
      
      dbms_output.put_line (v_emp_salary);
END;