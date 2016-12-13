DECLARE
	p_data   VARCHAR2 (20);
	v_number   NUMBER;

BEGIN
      v_number := p_data;
	  
	  DBMS_OUTPUT.PUT_LINE ('It is a number');

EXCEPTION
     WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE ('It is not a number');
END;

