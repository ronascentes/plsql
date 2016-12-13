DECLARE
        age NUMBER;
BEGIN
        IF age < 10 THEN
            DBMS_OUTPUT.PUT_LINE('Child');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Adult');
        END IF;
END;
