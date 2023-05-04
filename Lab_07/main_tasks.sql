--TASK 1
select * from V$SGA;
select SUM(value) from v$sga;

--TASK 2
select * from v$sga_dynamic_components  where current_size > 0;

--TASK 3
select component, granule_size from v$sga_dynamic_components  where current_size > 0;
select sum(min_size), sum(max_size), sum(current_size) from v$sga_dynamic_components;

--TASK 4
select current_size from v$sga_dynamic_free_memory;

--TASK 5
SELECT value FROM v$parameter WHERE name = 'sga_max_size';
SELECT value FROM v$parameter WHERE name = 'sga_target';

--TASK 6
select component, current_size, min_size from v$sga_dynamic_components  where component='KEEP buffer cache' or component='DEFAULT buffer cache' or component='RECYCLE buffer cache';

--TASK 7
create table MyTable(x int) storage(buffer_pool keep);
select segment_name, segment_type, tablespace_name, buffer_pool from user_segments where lower(segment_name) like '%mytable%';
drop table MyTable;

--TASK 8
CREATE TABLE MyTable2 (x int) cache;
select segment_name, segment_type, tablespace_name, buffer_pool from user_segments where lower(segment_name) like '%mytable%';
DROP TABLE MyTable2;

--TASK 9
show parameter log_buffer;
--SELECT SUM(BYTES) FROM V$LOG;

--TASK 10
select pool, name, bytes from v$sgastat where pool = 'large pool' and name = 'free memory';

--TASK 11
select distinct username, service_name, server from v$session;

--TASK 12
select * from v$bgprocess;
select * from v$bgprocess where paddr != '00';

--TASK 13
select * from v$process;

--TASK 14
select count(*) from v$bgprocess where paddr!= '00' and name like 'DBW%';
SELECT COUNT(*) FROM V$BGPROCESS WHERE NAME LIKE 'DBW%';

--TASK 15
select * from v$services;

--TASK 16
select * from v$dispatcher;
show parameter dispatchers;

--TASK 17
select * from v$services;

--TASK 18
SELECT username, password FROM dba_users; 