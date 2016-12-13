BEGIN
   IF (check_sal IS NULL)
   THEN
      DBMS_OUTPUT.put_line ('Returned NULL');
   ELSIF (check_sal)
   THEN
      DBMS_OUTPUT.put_line ('Salary > Average');
   ELSE
      DBMS_OUTPUT.put_line ('Salary < Average');
   END IF;
END;