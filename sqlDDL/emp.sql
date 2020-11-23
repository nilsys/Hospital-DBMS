--------------------------------------------------------
--  File created - Friday-May-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPLOYEE" 
   (	"EID" NUMBER(*,0), 
	"EFNAME" VARCHAR2(50), 
	"ELNAME" VARCHAR2(50), 
	"EDOB" DATE, 
	"EGENDER" CHAR(1), 
	"ESPECIALITY" VARCHAR2(50), 
	"EADDRESS" VARCHAR2(50), 
	"ESTARTDATE" DATE, 
	"DID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Index SYS_C007300
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007300" ON "SYSTEM"."EMPLOYEE" ("EID")
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEE" ADD PRIMARY KEY ("EID")
  USING INDEX  ENABLE
  ALTER TABLE "SYSTEM"."EMPLOYEE" MODIFY ("EFNAME" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."EMPLOYEE" MODIFY ("ELNAME" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."EMPLOYEE" MODIFY ("EDOB" NOT NULL ENABLE)
  ALTER TABLE "SYSTEM"."EMPLOYEE" MODIFY ("ESTARTDATE" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEE" ADD CONSTRAINT "SYS_C007301" FOREIGN KEY ("DID")
	  REFERENCES "SYSTEM"."DEPARTMENT" ("DID") ON DELETE CASCADE ENABLE
