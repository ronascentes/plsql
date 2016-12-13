CREATE OR REPLACE PROCEDURE add_dept
IS
   dept_id     departments.department_id%TYPE;
   dept_name   departments.department_name%TYPE;
BEGIN
   dept_id := 280;
   dept_name := 'ST-Curriculum';

   INSERT INTO departments
               (department_id, department_name
               )
        VALUES (dept_id, dept_name
               );

   DBMS_OUTPUT.put_line ('Inserted ' || SQL%ROWCOUNT || ' row ');
END;