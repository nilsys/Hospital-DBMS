--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DOCTOR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DOCTOR" 
   (	"EID_DOC" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007306
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007306" ON "SYSTEM"."DOCTOR" ("EID_DOC")
--------------------------------------------------------
--  Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DOCTOR" ADD PRIMARY KEY ("EID_DOC")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DOCTOR" ADD CONSTRAINT "SYS_C007307" FOREIGN KEY ("EID_DOC")
	  REFERENCES "SYSTEM"."EMPLOYEE" ("EID") ON DELETE CASCADE ENABLE
