alter pluggable database INS_PDB open;

select * from user_tablespaces;

select * from dba_data_files;
select * from dba_temp_files;

select * from dba_roles;
select * from dba_role_privs order by grantee;

select * from dba_profiles;
select * from dba_users;

select u.username, r.granted_role
  from dba_users u
  join dba_role_privs r on u.username = r.grantee;
  
  
ALTER USER C##INS1 QUOTA 20M ON TS_INS_PDB;

select TABLESPACE_NAME from dba_tablespaces;
  
  
SELECT * FROM USER_SYS_PRIVS;
SELECT * FROM USER_TAB_PRIVS WHERE OWNER = 'C##INS';
SELECT * FROM USER_ROLE_PRIVS;

CREATE TABLE INS_TABLE (i number);
GRANT INSERT ON INS_TABLE TO C##INS1;

GRANT ALL PRIVILEGES TO C##INS1;

grant create session, create table to c##INS1;
grant connect, create session, create table to c##INS;