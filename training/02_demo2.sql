SET SERVEROUTPUT ON

DECLARE
	v_variable VARCHAR2(20) := "Hello World";

BEGIN
	DBMS_OUTPUT.PUT_LINE (v_variable);
END;