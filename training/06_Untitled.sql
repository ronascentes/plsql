DECLARE
  TYPE t_EmployeeRecord IS RECORD (
    FName  Employees.first_name%TYPE,
    LName   Employees.last_name%TYPE,
    Salary      Employees.salary%TYPE);

  v_Employee  t_EmployeeRecord;
BEGIN
  SELECT first_name, last_name, salary
    INTO v_Employee
    FROM Employees
    WHERE employee_ID = 100;
    dbms_output.put_line(v_employee.salary);
END;
