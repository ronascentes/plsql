DECLARE
     CURSOR c_AllClasses IS SELECT * FROM classes;
     v_ClassesRecord classes%ROWTYPE;
BEGIN
     OPEN c_AllClasses;
        LOOP     
            FETCH c_AllClasses INTO v_ClassesRecord;
            EXIT WHEN c_AllClasses%NOTFOUND;
            
            INSERT INTO CLASSES_BKP VALUES v_ClassesRecord;
                        
        END LOOP;        
        CLOSE c_AllClasses;
END;
