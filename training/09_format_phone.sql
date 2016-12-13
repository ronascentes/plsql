CREATE OR REPLACE PROCEDURE HR.format_phone (phone_no IN OUT VARCHAR2)
IS
BEGIN
   phone_no :=
         '('
      || SUBSTR (phone_no, 1, 3)
      || ')'
      || SUBSTR (phone_no, 4, 3)
      || '-'
      || SUBSTR (phone_no, 7);
END format_phone;