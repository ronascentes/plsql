DECLARE
    e_TooManyStudents EXCEPTION;
    v_CurrentStudents NUMBER := 15;
    v_MaxStudents     NUMBER := 10;
BEGIN
    v_CurrentStudents := 'TEN';	

    IF v_CurrentStudents > v_MaxStudents THEN
		RAISE e_TooManyStudents;
	END IF;
EXCEPTION
	WHEN e_TooManyStudents THEN
		DBMS_OUTPUT.PUT_LINE ('ERROR: Limit excessed !');
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE ('Any error happened!');
END;
