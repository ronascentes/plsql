DECLARE
   region_str   regions.region_name%TYPE;
BEGIN
   FOR counter IN 1 .. 4
   LOOP
      SELECT   region_name
        INTO   region_str
        FROM   regions
       WHERE   region_id = counter;

      DBMS_OUTPUT.put_line (region_str);
   END LOOP;
END;