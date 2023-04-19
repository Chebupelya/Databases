--TASK 1
SELECT TABLESPACE_NAME FROM DBA_TABLESPACES;

--TASK 2
CREATE SMALLFILE TABLESPACE "INS_QDATA"
DATAFILE 'INS_QDATA.dbf'
SIZE 10M 
AUTOEXTEND ON NEXT 5M 
MAXSIZE 200M
OFFLINE;

ALTER TABLESPACE INS_QDATA ONLINE;
SELECT TABLESPACE_NAME, STATUS FROM DBA_TABLESPACES;

ALTER USER INSCORE QUOTA 2M ON INS_QDATA;

GRANT CREATE TRIGGER TO INSCORE;

--TASK 3
SELECT segment_name, segment_type
FROM dba_segments
WHERE tablespace_name = 'INS_QDATA';

--TASK 4
SELECT segment_name, segment_type, tablespace_name
FROM dba_segments
WHERE segment_name = 'INS_T1';

--TASK 5
SELECT segment_name, segment_type, bytes
FROM dba_segments
WHERE owner = 'INSCORE' AND segment_name = 'INS_T1' AND tablespace_name = 'INS_QDATA';

--TASK 7
SELECT segment_name, segment_type 
FROM dba_segments 
WHERE tablespace_name = 'INS_QDATA';

SELECT segment_name, segment_type, tablespace_name
FROM dba_segments
WHERE segment_name = 'INS_T1';

--TASK 10
SELECT SEGMENT_NAME, SEGMENT_TYPE, EXTENTS, BLOCKS, BYTES
FROM DBA_SEGMENTS
WHERE OWNER = 'INSCORE' AND SEGMENT_NAME = 'INS_T1';

--TASK 11
SELECT * FROM DBA_EXTENTS;
SELECT * FROM DBA_EXTENTS WHERE SEGMENT_NAME = 'INS_T1' AND TABLESPACE_NAME = 'INS_QDATA';



------------------------
SELECT DISTINCT segment_type FROM dba_segments;


SHOW PARAMETER BLOCK;
SELECT block_size FROM dba_tablespaces;