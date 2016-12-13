DECLARE
  v_StudentRecord students%ROWTYPE;
BEGIN
  SELECT *
    INTO v_StudentRecord
    FROM students
    WHERE ID = 10000;
    
    DBMS_OUTPUT.PUT_LINE(v_StudentRecord.first_name); 
END;
/
