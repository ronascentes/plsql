DECLARE
    v_rows_deleted NUMBER;
BEGIN
    DELETE FROM employees_bkp
    WHERE department_id = 30;
    rows_deleted := SQL%ROWCOUNT;
    DBMS_OUTPUT.PUT_LINE (v_rows_deleted);
END;