CREATE OR REPLACE FUNCTION check_sal
   RETURN BOOLEAN
IS
   dept_id   employees.department_id%TYPE;
   empno     employees.employee_id%TYPE;
   sal       employees.salary%TYPE;
   avg_sal   employees.salary%TYPE;
BEGIN
   empno := 205;

   SELECT salary, department_id
     INTO sal, dept_id
     FROM employees
    WHERE employee_id = empno;

   SELECT AVG (salary)
     INTO avg_sal
     FROM employees
    WHERE department_id = dept_id;

   IF sal > avg_sal
   THEN
      RETURN TRUE;
   ELSE
      RETURN FALSE;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      RETURN NULL;
END;
