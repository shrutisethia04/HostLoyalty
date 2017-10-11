SELECT B.Owner, B.Object_Name, A.Oracle_Username, A.OS_User_Name  
FROM V$Locked_Object A, All_Objects B
WHERE A.Object_ID = B.Object_ID;

SELECT
    O.OBJECT_NAME,
    S.SID,
    S.SERIAL#,
    P.SPID,
    S.PROGRAM,
    SQ.SQL_FULLTEXT,
    S.LOGON_TIME
FROM
    V$LOCKED_OBJECT L,
    DBA_OBJECTS O,
    V$SESSION S,
    V$PROCESS P,
    V$SQL SQ
WHERE
    L.OBJECT_ID = O.OBJECT_ID
    AND L.SESSION_ID = S.SID
    AND S.PADDR = P.ADDR
    AND S.SQL_ADDRESS = SQ.ADDRESS;
   
  BEGIN
    rdsadmin.rdsadmin_util.kill(
        sid    => 2569, 
        serial => 56402);
        end;
        /
