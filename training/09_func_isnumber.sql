CREATE OR REPLACE FUNCTION isnumber (
   p_data IN VARCHAR2
)
   RETURN NUMBER 
IS
   v_number   NUMBER;
BEGIN

      v_number := p_data;
	  
	  RETURN v_number;
	  
   EXCEPTION
      WHEN OTHERS THEN
         RETURN NULL;


   
END;