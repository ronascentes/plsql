-- EXECUTE ONLY ON SQLPLUS
SET SERVEROUTPUT ON
VARIABLE emp_salary NUMBER

BEGIN
	SELECT salary 
	  INTO :emp_salary 
	  FROM employees
      WHERE employee_id = 178;
END;
/

PRINT emp_salary 
