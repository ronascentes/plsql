BEGIN
     FOR v_locationRecord IN (SELECT city FROM locations) LOOP
          DBMS_OUTPUT.PUT_LINE (v_locationRecord.city);                
     END LOOP;        
END;
