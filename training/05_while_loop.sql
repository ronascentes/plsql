DECLARE
   region_str   regions.region_name%TYPE;
   counter      NUMBER := 1;
BEGIN
   WHILE counter <= 4
   LOOP
      SELECT   region_name
        INTO   region_str
        FROM   regions
       WHERE   region_id = counter;
      DBMS_OUTPUT.put_line (region_str);
      counter := counter + 1;
   END LOOP;
END;