DECLARE
   region_str   regions.region_name%TYPE;
   counter      NUMBER := 1;
BEGIN
   LOOP
      SELECT   region_name INTO   region_str
        FROM   regions
       WHERE   region_id = counter;
      DBMS_OUTPUT.put_line (region_str);
      counter := counter + 1;
      EXIT WHEN counter > 4;
   END LOOP;
END;
