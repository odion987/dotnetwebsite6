CREATE TABLE "IDBS_ADMIN"."WITNESS"(ID NUMBER,
WIT_MOTOR_ID NUMBER, 
WIT_NAME VARCHAR2(100 BYTE), 
WIT_ADDRESS VARCHAR2(100 BYTE))
SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 1048576 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "IDBS_DATA" ;
  
  
  CREATE SEQUENCE MOTOR_ACCIDENT_PK_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;
  
  
  

  CREATE SEQUENCE WITNESS_PK_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;
  
  drop table "IDBS_ADMIN"."WITNESS";