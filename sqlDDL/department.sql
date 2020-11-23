--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DEPARTMENT" 
   (	"DID" NUMBER(*,0), 
	"DTitle" VARCHAR2(50 BYTE), 
	"EID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007299
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007299" ON "SYSTEM"."DEPARTMENT" ("DID")
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DEPARTMENT" ADD PRIMARY KEY ("DID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."DEPARTMENT" MODIFY ("DTitle" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DEPARTMENT" ADD CONSTRAINT "SYS_C007328" FOREIGN KEY ("EID")
	  REFERENCES "SYSTEM"."DOCTOR" ("EID_DOC") ON DELETE CASCADE ENABLE
