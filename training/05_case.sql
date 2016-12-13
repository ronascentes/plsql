
DECLARE
   grade    CHAR (1) := UPPER ('&grade');
   rating   VARCHAR2 (20);
BEGIN
   rating :=
      CASE grade
         WHEN 'A' THEN 'Excellent'
         WHEN 'B' THEN 'Very Good'
         WHEN 'C' THEN 'Good'
         ELSE 'No such grade'
      END;
   DBMS_OUTPUT.PUT_LINE ('Result: ' || grade || ' - ' || rating);
END;