-- Validations
--1. Validate tables
SELECT COUNT(*)
FROM (select * from dba_objects where owner IN ('LOYALTY_USER','CUSTOMER') and Object_Type = 'TABLE'  ) alias_name
WHERE rownum <= 100;

--2. Validate comments
SELECT COUNT(*)
FROM (SELECT * FROM ALL_COL_COMMENTS where owner IN ('LOYALTY_USER','CUSTOMER') and table_name like 'LOYALTY%') alias_name
WHERE rownum <= 100
ORDER BY Table_Name,Column_Name; 

--3. Validate pk
select COUNT(*) from user_constraints WHERE constraint_type = 'P'; 
--4. Validate constraint
select COUNT(*) from user_constraints WHERE constraint_type IN ('C','U') and TABLE_NAME <> 'awsdms_apply_exceptions' 
and CONSTRAINT_NAME NOT LIKE 'SYS%'
ORDER BY TABLE_NAME; 
--5. Validate fk
select COUNT(*) from user_constraints WHERE constraint_type = 'R'; 
--6. Validate triggers
SELECT COUNT(*)
FROM (select * from dba_objects where owner IN ('LOYALTY_USER','CUSTOMER') and Object_Type = 'TRIGGER') alias_name
WHERE rownum <= 100
ORDER BY Object_Type,rownum;

--7. Validate SEQUENCE
SELECT *
FROM (select * from dba_objects where owner IN ('LOYALTY_USER','CUSTOMER') and Object_Type = 'SEQUENCE') alias_name
WHERE rownum <= 100
ORDER BY Object_Type,rownum;

--8. Validate Synonym
SELECT Object_Type,COUNT(*)
FROM (select * from dba_objects where owner IN ('LOYALTY_USER','CUSTOMER') and Object_Type = 'SYNONYM') alias_name
WHERE rownum <= 100
group BY Object_Type;

--9. Validate non-unique indexes
SELECT COUNT(*)
FROM (select * from ALL_INDEXES where owner IN ('LOYALTY_USER','CUSTOMER') and Uniqueness = 'NONUNIQUE') alias_name
WHERE rownum <= 100
ORDER BY rownum;
--10. Validate unique indexes
SELECT COUNT(*)
FROM (select * from ALL_INDEXES where owner IN ('LOYALTY_USER','CUSTOMER') and Uniqueness = 'UNIQUE') alias_name
WHERE rownum <= 100
ORDER BY rownum;


--Compile Procedure 
CREATE OR REPLACE PROCEDURE ALTER_ALL_TRIGGERS(status VARCHAR2) IS
  CURSOR c_tr IS (SELECT 'ALTER TRIGGER ' || trigger_name AS stmnt FROM user_triggers);
BEGIN
  IF status NOT IN ('ENABLE', 'enable', 'DISABLE', 'disable') THEN
    DBMS_OUTPUT.PUT_LINE('ONLY ''ENABLEDISABLE'' ACCEPTED AS PARAMETERS');
    RAISE VALUE_ERROR;
  END IF;
  FOR tr IN c_tr LOOP
    EXECUTE IMMEDIATE tr.stmnt || ' ' || status;
  END LOOP;
END;

--Call procedure 
EXEC ALTER_ALL_TRIGGERS('DISABLE');

--Check status of triggers
SELECT * FROM USER_TRIGGERS;

--Get procrdure created 
select sys_context('USERENV','SERVER_HOST'),Object_name  from dba_objects 
where owner IN ('LOYALTY_USER','CUSTOMER') and Object_Type = 'PROCEDURE' ;

GRANT EXECUTE ON PRC_RESET_MEMBER_ROOM_NIGHT
TO LOYALTY_USER; 





