DECLARE
   v_students_min_id NUMBER(9);
   v_students_count NUMBER(9);
   v_student_first_name students.first_name%TYPE;
   
BEGIN
   SELECT COUNT(1) INTO v_students_count FROM students;

   SELECT MIN(id) INTO v_students_min_id FROM students;

   FOR counter IN v_students_min_id .. v_students_min_id + v_students_count - 1
   LOOP
      SELECT   first_name
        INTO   v_student_first_name
        FROM   students
       WHERE   id = counter;

      DBMS_OUTPUT.put_line (v_student_first_name);
   END LOOP;
END;