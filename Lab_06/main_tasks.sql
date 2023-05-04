--TASK 1
SHOW PARAMETER SPFILE;

--TASK 2
--Убедился, файл есть.
select name, value from v$parameter where name like 'control_files';
--TASK 3
CREATE PFILE = 'INS_PFILE.ORA' FROM SPFILE;

--TASK 4
SELECT NAME, VALUE FROM V$PARAMETER WHERE NAME = 'open_cursors';
ALTER SYSTEM SET open_cursors = 300;
alter system set spfile = 'C:\app\Lenovo\product\21c\dbhomeXE\database\INS_SPFILE.ORA';

CREATE SPFILE='C:\app\Lenovo\product\21c\database\SPFILE.ORA' FROM PFILE='C:\app\Lenovo\product\21c\dbhomeXE\database\INS_PFILE.ORA';


--TASK 5
CREATE SPFILE = 'C:\app\Lenovo\product\21c\dbhomeXE\database\INS_SPFILE.ORA' FROM PFILE = 'INS_PFILE.ORA';
CREATE SPFILE = 'C:\app\Lenovo\product\21c\database\SPFILEXE1.ORA' FROM PFILE = 'INS_PFILE.ORA';

--TASK 6
--Запустил

--TASK 7
--1 способ - поменять вручную, shutdown immediate, startup pfile = 'path'
--2 способ - поменять через ALTER SYSTEM SET XXX = YYY SCOPE = SPFILE, Shutdown immediate, startup open

--TASK 8
SELECT NAME FROM V$CONTROLFILE;

--TASK 9
ALTER DATABASE BACKUP CONTROLFILE TO TRACE;
SELECT value FROM v$diag_info;

ALTER SYSTEM SET CONTROL_FILES = 'C:\app\Lenovo\product\21c\oradata\XE\CONTROL01.CTL', 'C:\app\Lenovo\product\21c\oradata\XE\CONTROL02.CTL' SCOPE = SPFILE;

--TASK 10
--SHOW PARAMETER REMOTE_LOGIN_PASSWORDFILE;
SELECT * FROM V$PASSWORDFILE_INFO;

--TASK 11
--Убедился, файл есть.

--TASK 12 
--SELECT name, value FROM v$parameter WHERE name LIKE '%dump_dest%';
SELECT * FROM V$DIAG_INFO;

--TASK 13
--C:\APP\LENOVO\PRODUCT\21C\diag\rdbms\xe\xe\alert\log.xml

--TASK 14
SELECT * FROM v$diag_info WHERE name = 'Diag Trace';
--Исследовал