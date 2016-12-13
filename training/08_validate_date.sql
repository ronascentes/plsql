
DECLARE
   v_date   VARCHAR2 (20) := '01-02-2009';
BEGIN
   DBMS_OUTPUT.put_line (TO_DATE (v_date, 'mm/dd/yyyy'));
EXCEPTION
   WHEN OTHERS
   THEN
      BEGIN
         DBMS_OUTPUT.put_line (TO_DATE (v_date, 'mm-dd-yyyy'));
      EXCEPTION
         WHEN OTHERS
         THEN
            BEGIN
               DBMS_OUTPUT.put_line (TO_DATE (v_date, 'MON dd yyyy'));
            EXCEPTION
               WHEN OTHERS
               THEN
                  BEGIN
                     DBMS_OUTPUT.put_line (TO_DATE (v_date, 'mm-dd-yy'));
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        BEGIN
                           DBMS_OUTPUT.put_line (TO_DATE (v_date, 'mm/dd/yy'));
                        EXCEPTION
                           WHEN OTHERS
                           THEN
                              BEGIN
                                 DBMS_OUTPUT.put_line (TO_DATE (v_date,
                                                                'dd-mm-yy'
                                                               )
                                                      );
                              EXCEPTION
                                 WHEN OTHERS
                                 THEN
                                    BEGIN
                                       DBMS_OUTPUT.put_line
                                                         (TO_DATE (  2439856
                                                                   + v_date,
                                                                   'j'
                                                                  )
                                                         );
                                    EXCEPTION
                                       WHEN OTHERS
                                       THEN
                                          DBMS_OUTPUT.put_line (TO_DATE (NULL)
                                                               );
                                    END;
                              END;
                        END;
                  END;
            END;
      END;
END;