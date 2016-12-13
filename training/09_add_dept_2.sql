
CREATE OR REPLACE PROCEDURE add_dept (
   name   IN departments.department_name%TYPE:= 'Unknow',
   loc    IN departments.location_id%TYPE DEFAULT 1700
)
IS
BEGIN
   INSERT INTO departments (department_id, department_name, location_id)
     VALUES   (departments_seq.NEXTVAL, name, loc);
END add_dept;