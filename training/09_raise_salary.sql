
CREATE OR REPLACE PROCEDURE raise_salary (id        IN employees.employee_id%TYPE,
                                          percent   IN NUMBER)
IS
BEGIN
   UPDATE   employees
      SET   salary = salary * (1 + percent / 10)
    WHERE   employee_id = id;
END raise_salary;
