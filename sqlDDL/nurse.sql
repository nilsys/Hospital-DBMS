--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NURSE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."NURSE" 
   (	"EID_NUR" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007303
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007303" ON "SYSTEM"."NURSE" ("EID_NUR")
--------------------------------------------------------
--  Constraints for Table NURSE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NURSE" ADD PRIMARY KEY ("EID_NUR")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table NURSE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NURSE" ADD CONSTRAINT "SYS_C007304" FOREIGN KEY ("EID_NUR")
	  REFERENCES "SYSTEM"."EMPLOYEE" ("EID") ON DELETE CASCADE ENABLE
