--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INPATIENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."INPATIENT" 
   (	"PID_IN" NUMBER(*,0), 
	"PADMISSIONDATE" DATE, 
	"PDISCHARGEDATE" DATE, 
	"PDIAGNOSIS" VARCHAR2(50), 
	"PSICKROOM" NUMBER(*,0), 
	"PFEE" FLOAT(126), 
	"EID_DOC" NUMBER(*,0), 
	"EID_NUR" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007313
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007313" ON "SYSTEM"."INPATIENT" ("PID_IN")
--------------------------------------------------------
--  Constraints for Table INPATIENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INPATIENT" ADD PRIMARY KEY ("PID_IN")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("PADMISSIONDATE" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("PDISCHARGEDATE" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("PDIAGNOSIS" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("PSICKROOM" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("PFEE" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("EID_DOC" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."INPATIENT" MODIFY ("EID_NUR" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table INPATIENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INPATIENT" ADD CONSTRAINT "SYS_C007314" FOREIGN KEY ("EID_DOC")
	  REFERENCES "SYSTEM"."DOCTOR" ("EID_DOC") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."INPATIENT" ADD CONSTRAINT "SYS_C007315" FOREIGN KEY ("EID_NUR")
	  REFERENCES "SYSTEM"."NURSE" ("EID_NUR") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."INPATIENT" ADD CONSTRAINT "SYS_C007316" FOREIGN KEY ("PID_IN")
	  REFERENCES "SYSTEM"."PATIENT" ("PID") ON DELETE CASCADE ENABLE
