--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PATIENT" 
   (	"PID" NUMBER(*,0), 
	"PFNAME" VARCHAR2(50), 
	"PLNAME" VARCHAR2(50), 
	"PDOB" DATE, 
	"PGENDER" CHAR(1), 
	"PPHONE" NUMBER(*,0), 
	"PADDRESS" VARCHAR2(200)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007302
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007302" ON "SYSTEM"."PATIENT" ("PID")
--------------------------------------------------------
--  Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PATIENT" ADD PRIMARY KEY ("PID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."PATIENT" MODIFY ("PFNAME" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."PATIENT" MODIFY ("PLNAME" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."PATIENT" MODIFY ("PDOB" NOT NULL ENABLE)
