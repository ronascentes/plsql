/* Formatted on 6/22/2009 10:40:13 AM (QP5 v5.115.810.9015) */
CREATE OR REPLACE PROCEDURE add_dept (
   name   IN departments.department_name%TYPE,
   loc    IN departments.location_id%TYPE
)
IS
BEGIN
   INSERT INTO departments (department_id, department_name, location_id)
     VALUES   (departments_seq.NEXTVAL, name, loc);
END add_dept;
 
