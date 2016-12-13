DECLARE
     CURSOR cur_locations IS SELECT * FROM locations;
BEGIN
    FOR v_locationRecord IN cur_locations LOOP  
    DBMS_OUTPUT.PUT_LINE(v_locationsRecord.city);
    END LOOP;        
END;
