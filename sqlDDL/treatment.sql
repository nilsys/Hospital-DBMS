--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TREATMENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TREATMENT" 
   (	"EID_DOC" NUMBER(*,0), 
	"PID_IN" NUMBER(*,0), 
	"TRID" NUMBER(*,0), 
	"TRSTART" DATE, 
	"TREND" DATE, 
	"TRRESULT" VARCHAR2(50)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007317
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007317" ON "SYSTEM"."TREATMENT" ("EID_DOC", "PID_IN", "TRID")
--------------------------------------------------------
--  Constraints for Table TREATMENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TREATMENT" ADD PRIMARY KEY ("EID_DOC", "PID_IN", "TRID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."TREATMENT" MODIFY ("TRSTART" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."TREATMENT" MODIFY ("TREND" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."TREATMENT" MODIFY ("TRRESULT" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table TREATMENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TREATMENT" ADD CONSTRAINT "SYS_C007318" FOREIGN KEY ("EID_DOC")
	  REFERENCES "SYSTEM"."DOCTOR" ("EID_DOC") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."TREATMENT" ADD CONSTRAINT "SYS_C007319" FOREIGN KEY ("PID_IN")
	  REFERENCES "SYSTEM"."INPATIENT" ("PID_IN") ON DELETE CASCADE ENABLE
