DECLARE
	grade CHAR(1) := UPPER(‘&grade’);
	rating VARCHAR2(20);
BEGIN
	rating := 
			WHEN grade = ‘A’ THEN ‘Excellent’
   		WHEN grade IN (‘B’, ‘C’) THEN ‘Good’
			ELSE ‘No such grade’
		END;			
	DBMS_OUTPUT.PUT_LINE(‘Grade: ’ || grade || ‘ Rating ’ || rating);
END;
