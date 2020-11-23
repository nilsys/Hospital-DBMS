--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USES_EXAM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USES_EXAM" 
   (	"EID_DOC" NUMBER(*,0), 
	"PID_OUT" NUMBER(*,0), 
	"EXID" NUMBER(*,0), 
	"MID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007321
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007321" ON "SYSTEM"."USES_EXAM" ("EID_DOC", "PID_OUT", "EXID", "MID")
--------------------------------------------------------
--  Constraints for Table USES_EXAM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USES_EXAM" ADD PRIMARY KEY ("EID_DOC", "PID_OUT", "EXID", "MID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table USES_EXAM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USES_EXAM" ADD CONSTRAINT "SYS_C007322" FOREIGN KEY ("EID_DOC", "PID_OUT", "EXID")
	  REFERENCES "SYSTEM"."EXAMINATION" ("EID_DOC", "PID_OUT", "EXID") ON DELETE CASCADE ENABLE
  ALTER TABLE "SYSTEM"."USES_EXAM" ADD CONSTRAINT "SYS_C007323" FOREIGN KEY ("MID")
	  REFERENCES "SYSTEM"."MEDICATION" ("MID") ON DELETE CASCADE ENABLE
