--TASK 1
SHOW PARAMETER SPFILE;

--TASK 2
--Убедился, файл есть.

--TASK 3
CREATE PFILE = 'INS_PFILE.ORA' FROM SPFILE;

--TASK 4
SELECT NAME, VALUE FROM V$PARAMETER WHERE NAME = 'open_cursors';
ALTER SYSTEM SET open_cursors = 350 SCOPE = SPFILE;

--TASK 5
CREATE SPFILE FROM PFILE = 'P1.ORA';

--TASK 6
--Запустил

--TASK 7
--1 способ - поменять вручную, shutdown immediate, startup pfile = 'path'
--2 способ - поменять через ALTER SYSTEM SET XXX = YYY SCOPE = SPFILE, Shutdown immediate, startup open

--TASK 8
SELECT NAME FROM V$CONTROLFILE;

--TASK 9
ALTER SYSTEM SET CONTROL_FILES = 'C:\app\Lenovo\product\21c\oradata\XE\CONTROL01.CTL', 'C:\app\Lenovo\product\21c\oradata\XE\CONTROL02.CTL' SCOPE = SPFILE;

--TASK 10
--SHOW PARAMETER REMOTE_LOGIN_PASSWORDFILE;

--TASK 11
--Убедился, файл есть.

--TASK 12 
--SELECT name, value FROM v$parameter WHERE name LIKE '%dump_dest%';
SELECT * FROM V$DIAG_INFO;

--TASK 13
--C:\APP\LENOVO\PRODUCT\21C\diag\rdbms\xe\xe\alert\log.xml

--TASK 14
--Исследовал