DECLARE
  TYPE t_StudentRecord IS RECORD (
    FirstName  students.first_name%TYPE,
    LastName   students.last_name%TYPE,
    Major      students.major%TYPE);

  v_Student  t_StudentRecord;
BEGIN
  SELECT first_name, last_name, major
    INTO v_Student
    FROM students
    WHERE ID = 10000;
END;
/
