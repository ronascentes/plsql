DECLARE
  v_EmployeeRecord Employees%ROWTYPE;
BEGIN
  SELECT *
    INTO v_EmployeeRecord
    FROM Employees
    WHERE employee_ID = 100;
    
    v_EmployeeRecord.employee_id := 9999;
    v_EmployeeRecord.last_name := 'Queen';
    v_EmployeeRecord.email := 'alguem@bol.com.br';
    v_EmployeeRecord.salary := 30000;
    
    INSERT INTO employees VALUES v_EmployeeRecord;
    
    
END;
/