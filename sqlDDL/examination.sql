--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EXAMINATION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EXAMINATION" 
   (	"EID_DOC" NUMBER(*,0), 
	"PID_OUT" NUMBER(*,0), 
	"EXID" NUMBER(*,0), 
	"EXDATE" DATE, 
	"EXFEE" FLOAT(126), 
	"EXDIAGNOSIS" VARCHAR2(50), 
	"EXSECONDEXAMINATIONDATE" DATE
   )
--------------------------------------------------------
--  DDL for Index SYS_C007310
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007310" ON "SYSTEM"."EXAMINATION" ("EID_DOC", "PID_OUT", "EXID")
--------------------------------------------------------
--  Constraints for Table EXAMINATION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EXAMINATION" ADD PRIMARY KEY ("EID_DOC", "PID_OUT", "EXID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."EXAMINATION" MODIFY ("EXDATE" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."EXAMINATION" MODIFY ("EXFEE" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."EXAMINATION" MODIFY ("EXDIAGNOSIS" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table EXAMINATION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EXAMINATION" ADD CONSTRAINT "SYS_C007311" FOREIGN KEY ("EID_DOC")
	  REFERENCES "SYSTEM"."DOCTOR" ("EID_DOC") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."EXAMINATION" ADD CONSTRAINT "SYS_C007312" FOREIGN KEY ("PID_OUT")
	  REFERENCES "SYSTEM"."OUTPATIENT" ("PID_OUT") ON DELETE CASCADE ENABLE
