DECLARE
    v_CurrentStudents NUMBER := 15;
    
    error_code        NUMBER;
    error_msg         VARCHAR2(255);
BEGIN
    v_CurrentStudents := 'TEN';	

EXCEPTION
    WHEN others THEN
        error_code := SQLCODE;
        error_msg  := SQLERRM;
        DBMS_OUTPUT.PUT_LINE ('Error code: ' || error_code || chr(13) 
                                 ||'Message: ' || error_msg);
END;
