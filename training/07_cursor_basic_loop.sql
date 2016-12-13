DECLARE
     CURSOR cur_locations IS SELECT * FROM locations;
     v_locationRecord locations%ROWTYPE;
BEGIN
  OPEN cur_locations;
     LOOP     
       FETCH cur_locations INTO v_locationRecord;
       EXIT WHEN cur_locations%NOTFOUND;
       DBMS_OUTPUT.PUT_LINE (v_locationsRecord.city);   
     END LOOP;        
  CLOSE cur_locations;
END;

