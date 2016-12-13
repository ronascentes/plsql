DECLARE
  v_EmployeeRecord Employees%ROWTYPE;
  c_tax CONSTANT NUMBER:= 0.1;
  v_sal employees.salary%TYPE;
BEGIN
  SELECT *
    INTO v_EmployeeRecord
    FROM Employees
    WHERE employee_ID = 100;
    
	v_sal := v_EmployeeRecord.salary;
    v_EmployeeRecord.salary := v_sal + v_sal * 0.1;
    
    UPDATE employees SET ROW = v_EmployeeRecord
	WHERE employee_id = v_EmployeeRecord.employee_id;
	RETURNING salary INTO v_sal;
	
	DBMS_OUTPUT.PUT_LINE (v_sal);
    
END;
/