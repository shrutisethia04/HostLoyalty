
---Query for counting number of records 

select count( * ) from DML_CAPTURE_AUDIT  
UNION ALL
select count( * ) from LOYALTY_AGGREGATOR  
UNION ALL
select count( * ) from LOYALTY_CC_STATUS_HIST  
UNION ALL
select count( * ) from LOYALTY_CREDIT_PENDING  
UNION ALL
select count( * ) from LOYALTY_MEMBER 
UNION ALL
select count( * ) from LOYALTY_MEMBER_XREF
UNION ALL
select count( * ) from LOYALTY_TIER_CRITERIA 
UNION ALL
select count( * ) from LOYALTY_TIER_HIST 
UNION ALL
select count( * ) from LOYALTY_TRANSACTION;

----Query to get max(id) for each table 

 select max(LOYALTY_AGGREGATOR_ID) from LOYALTY_AGGREGATOR
 UNION ALL
select max(LOYALTY_CC_STATUS_HIST_ID) from LOYALTY_CC_STATUS_HIST
 UNION ALL
 select max(LOYALTY_CREDIT_PENDING_ID) from LOYALTY_CREDIT_PENDING
  UNION ALL
 select max(LOYALTY_MEMBER_ID) from LOYALTY_MEMBER
  UNION ALL
 select max(LOYALTY_MEMBER_XREF_ID) from LOYALTY_MEMBER_XREF
  UNION ALL
 select max(LOYALTY_TIER_CRITERIA_ID) from LOYALTY_TIER_CRITERIA
  UNION ALL
 select max(LOYALTY_TIER_HIST_ID) from LOYALTY_TIER_HIST
  UNION ALL
 select max(LOYALTY_TRANSACTION_ID) from LOYALTY_TRANSACTION
UNION ALL
 select max(DML_CAPTURE_AUDIT_ID) from DML_CAPTURE_AUDIT;

 ---- 
 
 select max(LOYALTY_AGGREGATOR_ID) from LOYALTY_AGGREGATOR where LOYALTY_AGGREGATOR_ID < 10000000
 UNION ALL
select max(LOYALTY_CC_STATUS_HIST_ID) from LOYALTY_CC_STATUS_HIST where LOYALTY_CC_STATUS_HIST_ID  < 10000000
 UNION ALL
 select max(LOYALTY_CREDIT_PENDING_ID) from LOYALTY_CREDIT_PENDING where LOYALTY_CREDIT_PENDING_ID <  2000000000
  UNION ALL
 select max(LOYALTY_MEMBER_ID) from LOYALTY_MEMBER where LOYALTY_MEMBER_ID < 300000000
  UNION ALL
 select max(LOYALTY_MEMBER_XREF_ID) from LOYALTY_MEMBER_XREF where LOYALTY_MEMBER_XREF_ID < 300000000
  UNION ALL
 select max(LOYALTY_TIER_CRITERIA_ID) from LOYALTY_TIER_CRITERIA where LOYALTY_TIER_CRITERIA_ID < 100000000
  UNION ALL
 select max(LOYALTY_TIER_HIST_ID) from LOYALTY_TIER_HIST where LOYALTY_TIER_HIST_ID < 2000000000
  UNION ALL
 select max(LOYALTY_TRANSACTION_ID) from LOYALTY_TRANSACTION where LOYALTY_TRANSACTION_ID < 300000000000;
 
----Query to get last sequence number

SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_AGGREGATOR_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_CC_STATUS_HIST_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_CREDIT_PENDING_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_MEMBER_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_MEMBER_XREF_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_TIER_CRITERIA_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_TIER_HIST_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'LOYALTY_TRANSACTION_SEQ'
UNION ALL
SELECT last_number
FROM user_sequences
WHERE sequence_name = 'DML_CAPTURE_AUDIT_SEQ';
 
 
 ---Query  to get max(id) depending on seq set on rds
 
 select max(LOYALTY_AGGREGATOR_ID) from LOYALTY_AGGREGATOR where LOYALTY_AGGREGATOR_ID  < 20000232
 UNION ALL
select max(LOYALTY_CC_STATUS_HIST_ID) from LOYALTY_CC_STATUS_HIST   where LOYALTY_CC_STATUS_HIST_ID  < 2000202
 UNION ALL
 select max(LOYALTY_CREDIT_PENDING_ID) from LOYALTY_CREDIT_PENDING  where LOYALTY_CREDIT_PENDING_ID  < 30000002
  UNION ALL
 select max(LOYALTY_MEMBER_ID) from LOYALTY_MEMBER  where LOYALTY_MEMBER_ID  < 51907992
  UNION ALL
 select max(LOYALTY_MEMBER_XREF_ID) from LOYALTY_MEMBER_XREF  where LOYALTY_MEMBER_XREF_ID  < 31907772
  UNION ALL
 select max(LOYALTY_TIER_CRITERIA_ID) from LOYALTY_TIER_CRITERIA  where LOYALTY_TIER_CRITERIA_ID  < 5002082
  UNION ALL
 select max(LOYALTY_TIER_HIST_ID) from LOYALTY_TIER_HIST  where LOYALTY_TIER_HIST_ID  < 61909222
  UNION ALL
 select max(LOYALTY_TRANSACTION_ID) from LOYALTY_TRANSACTION  where LOYALTY_TRANSACTION_ID  < 2000850382 
 UNION ALL
 select max(DML_CAPTURE_AUDIT_ID) from  DML_CAPTURE_AUDIT  where  DML_CAPTURE_AUDIT_ID < 1050527002 ;
 

--- Query to get tablespaces info

select t.tablespace_name,total_MB,(total_MB-free_MB) used_MB,free_MB,
round(((total_MB-free_MB)/total_MB)*100,2) per_used,round((free_MB/total_MB)*100,2) per_free from
(select tablespace_name,sum(bytes/1024/1024) free_MB from dba_free_space group by tablespace_name) f,
(select tablespace_name,sum(bytes/1024/1024) total_MB from dba_data_files group by tablespace_name) t
where f.tablespace_name(+)=t.tablespace_name order by 5;


   
  
---Drop LOYALTY_TEST
select * from LOYALTY_TEST fetch first 2 rows only;
drop table LOYALTY_TEST;

---Alter session to show date time
alter session set nls_date_format='DD-MON-YYYY hh24:mi:ss';
select * from loyalty_member_xref where tuid = '382895';

 