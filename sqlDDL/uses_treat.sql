--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USES_TREAT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USES_TREAT" 
   (	"EID_DOC" NUMBER(*,0), 
	"PID_IN" NUMBER(*,0), 
	"TRID" NUMBER(*,0), 
	"MID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007324
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007324" ON "SYSTEM"."USES_TREAT" ("EID_DOC", "PID_IN", "TRID", "MID")
--------------------------------------------------------
--  Constraints for Table USES_TREAT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USES_TREAT" ADD PRIMARY KEY ("EID_DOC", "PID_IN", "TRID", "MID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table USES_TREAT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USES_TREAT" ADD CONSTRAINT "SYS_C007325" FOREIGN KEY ("EID_DOC", "PID_IN", "TRID")
	  REFERENCES "SYSTEM"."TREATMENT" ("EID_DOC", "PID_IN", "TRID") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."USES_TREAT" ADD CONSTRAINT "SYS_C007326" FOREIGN KEY ("MID")
	  REFERENCES "SYSTEM"."MEDICATION" ("MID") ON DELETE CASCADE ENABLE
