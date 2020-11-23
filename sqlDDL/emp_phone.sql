--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMP_PHONE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMP_PHONE" 
   (	"EID" NUMBER(*,0), 
	"EPHONE" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007305
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007305" ON "SYSTEM"."EMP_PHONE" ("EID", "EPHONE")
--------------------------------------------------------
--  Constraints for Table EMP_PHONE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMP_PHONE" ADD PRIMARY KEY ("EID", "EPHONE")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table EMP_PHONE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMP_PHONE" ADD CONSTRAINT "EMP_PHONE" FOREIGN KEY ("EID")
	  REFERENCES "SYSTEM"."EMPLOYEE" ("EID") ON DELETE CASCADE ENABLE
