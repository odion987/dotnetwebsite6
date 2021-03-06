CREATE TABLE "IDBS_ADMIN"."MOTOR_ACCIDENT_REPORT" (ID	NUMBER,	
NAME_INSURED	VARCHAR2(200 BYTE),
ADDRESS	VARCHAR2(200 BYTE),	
OCCUPATION	VARCHAR2(200 BYTE),
MOBILE_PHONE_NUMBER	VARCHAR2(100 BYTE),	
TELEPHONE_NUMBER	VARCHAR2(100 BYTE),		
INCEPTION_DATE	VARCHAR2(100 BYTE),	
BRANCH	VARCHAR2(200 BYTE),	
MAKE	VARCHAR2(100 BYTE),	
REG_NO	VARCHAR2(100 BYTE),
C_C	VARCHAR2(100 BYTE),	
YEAR_MAKE	VARCHAR2(100 BYTE),	
ENG_NO	VARCHAR2(100 BYTE),	
CHASIS_NUMBER	VARCHAR2(100 BYTE),
MILEAGE_COVERED	VARCHAR2(100 BYTE),
PURPOSE_BEING_USED	VARCHAR2(100 BYTE),	
COMMERCIAL	VARCHAR2(100 BYTE),	
PASSENGERS_TAXIBUS	VARCHAR2(100 BYTE),	
DRA_NAME	VARCHAR2(100 BYTE),	
DRA_AGE	NUMBER,	
DRA_ADDRESS	VARCHAR2(100 BYTE),	
DRIVING_LIC_POSSESSION	VARCHAR2(20 BYTE),	
DRIVING_LIC_CATEGORY	VARCHAR2(100 BYTE),	
DRIVING_LIC_NUMBER	VARCHAR2(100 BYTE),	
DRIVING_LIC_ENDORSEMENT	VARCHAR2(20 BYTE),	
DATE_ISSUE	VARCHAR2(100 BYTE),	
DATE_EXPIRY	VARCHAR2(100 BYTE),	
PLACE_ISSUE	VARCHAR2(20 BYTE),
LEARNERS_PERMIT	VARCHAR2(20 BYTE),	
NUMBER_IFYES	VARCHAR2(100 BYTE),
PERIOD	VARCHAR2(20 BYTE),	
RELATION_DRIVER_INSURED	VARCHAR2(20 BYTE),		
EMPLOYMENT_DURATION	VARCHAR2(20 BYTE),	
DOES_DRIVER_VEHICLE	VARCHAR2(20 BYTE),	
NAME_INSURER	VARCHAR2(100 BYTE),
ADDRESS_INSURER	VARCHAR2(100 BYTE),	
PARTICULAR_DATE	VARCHAR2(100 BYTE),	
PARTICULAR_TIME	VARCHAR2(100 BYTE),	
EXACT_LOCATION	VARCHAR2(100 BYTE),	
ROAD_CONDITION	VARCHAR2(100 BYTE),	
WEATHER_CONDITION	VARCHAR2(100 BYTE),	
SPEED_VEHICLE	VARCHAR2(100 BYTE),	
CONDITION_BRAKES	VARCHAR2(100 BYTE),	
DIRECTION_COLLIDED	VARCHAR2(100 BYTE),
ADDRESS_POLICESTATION	VARCHAR2(100 BYTE),		
NUMBER_INSUREDV	VARCHAR2(100 BYTE),		
NUMBER_OTHERV	VARCHAR2(100 BYTE),
DAMAGED_PART	VARCHAR2(100 BYTE),	
PRESLOC_VEHICLE	VARCHAR2(100 BYTE),	
ROUGHEST_REPAIR	VARCHAR2(100 BYTE),	
REPAIRER_NAME	VARCHAR2(100 BYTE),	
REPAIRER_ADDRESS	VARCHAR2(100 BYTE),		
INVENTORY_DAMPART	VARCHAR2(100 BYTE),
THDPTYNAME	VARCHAR2(100 BYTE),	
THDPTYADDRESS	VARCHAR2(100 BYTE),	
TYPE_PROPERTY	VARCHAR2(100 BYTE),	
VEHICLE_MAKE	VARCHAR2(100 BYTE),
THDPTYREG_NO	VARCHAR2(100 BYTE),	
THDPTYYEAR_MAKE	VARCHAR2(100 BYTE),	
PRELOC_VEHICLE	VARCHAR2(100 BYTE),
OWNER_INSURED	VARCHAR2(100 BYTE),	
POLNO_IFYES	VARCHAR2(20 BYTE),	
THDPTYNAME_INSURER	VARCHAR2(100 BYTE),	
THDPTYADDRESS_INSURER	VARCHAR2(100 BYTE),	
STATUSOFSIGNATORY	VARCHAR2(100 BYTE)	)
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
  
  
  
  CREATE TRIGGER MOTOR_ACCIDENT_TRG
BEFORE INSERT ON MOTOR_ACCIDENT_REPORT
FOR EACH ROW
WHEN(new.ID IS NULL)
BEGIN
  SELECT MOTOR_ACCIDENT_PK_SEQ.NEXTVAL
  INTO :new.ID
  FROM DUAL;
  END;




