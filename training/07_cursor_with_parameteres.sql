DECLARE
    CURSOR cur_locations (id_no NUMBER) IS SELECT city FROM locations WHERE id=id_no; 
    v_cityname VARCHAR2(20);
BEGIN
     OPEN cur_locations(10001);
     LOOP
     FETCH cur_locations INTO v_cityname;
     EXIT WHEN cur_locations%NOTFOUND;
     
     DBMS_OUTPUT.PUT_LINE (v_cityname);
                        
     END LOOP;        
END;
