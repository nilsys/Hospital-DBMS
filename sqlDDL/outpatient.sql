--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table OUTPATIENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OUTPATIENT" 
   (	"PID_OUT" NUMBER(*,0), 
	"EID_DOC" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007308
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007308" ON "SYSTEM"."OUTPATIENT" ("PID_OUT")
--------------------------------------------------------
--  Constraints for Table OUTPATIENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."OUTPATIENT" ADD PRIMARY KEY ("PID_OUT")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table OUTPATIENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."OUTPATIENT" ADD CONSTRAINT "SYS_C007309" FOREIGN KEY ("EID_DOC")
	  REFERENCES "SYSTEM"."DOCTOR" ("EID_DOC") ON DELETE CASCADE ENABLE
