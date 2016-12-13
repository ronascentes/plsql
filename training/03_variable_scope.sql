DECLARE
    father_name VARCHAR2(20) := 'Nelson';
    date_of_birth DATE := '23-Jan-1959';
BEGIN
    DECLARE
        child_name VARCHAR2(20) := 'Karina';
        date_of_birth DATE := '22-Aug-1978';
    BEGIN
        DBMS_OUTPUT.PUT_LINE ('Father''s Name: ' || father_name);
        DBMS_OUTPUT.PUT_LINE ('Date of Birth: ' || date_of_birth);
        DBMS_OUTPUT.PUT_LINE ('Child''s Name: ' || child_name);
    END;
    DBMS_OUTPUT.PUT_LINE ('Date of Birth: ' || date_of_birth);
END;