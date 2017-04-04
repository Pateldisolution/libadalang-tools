
-----------------------------------------------------------------------

WITH REPORT; USE REPORT;
WITH CA5006A0; USE CA5006A0;
WITH CA5006A1; USE CA5006A1;
PRAGMA ELABORATE(CA5006A0);

PACKAGE BODY CA5006A2 IS
   X : INTEGER;

   FUNCTION G RETURN INTEGER IS
   BEGIN
      RETURN IDENT_INT(1);
   END G;

BEGIN
   X := F;
   IF NOT P_E_RAISED THEN
      FAILED ( "F CALLED" );
   END IF;
EXCEPTION
   WHEN PROGRAM_ERROR =>
      COMMENT ( "PROGRAM_ERROR RAISED IN CA5006A2" );
      SHOW_PE_RAISED;
   WHEN OTHERS =>
      FAILED ( "OTHER ERROR RAISED IN CA5006A2" );
END CA5006A2;