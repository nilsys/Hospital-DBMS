--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEDICATION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEDICATION" 
   (	"MID" NUMBER(*,0), 
	"MNAME" VARCHAR2(50), 
	"MEFFECTS" VARCHAR2(50), 
	"MPRICE" FLOAT(126)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007320
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007320" ON "SYSTEM"."MEDICATION" ("MID")
--------------------------------------------------------
--  Constraints for Table MEDICATION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MEDICATION" ADD PRIMARY KEY ("MID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."MEDICATION" MODIFY ("MNAME" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."MEDICATION" MODIFY ("MEFFECTS" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."MEDICATION" MODIFY ("MPRICE" NOT NULL ENABLE)
