--TASK 7
create user c##INS identified by Pa$$w0rd
account unlock;
drop user c##INS

grant create session to c##INS;
--TASK 8
grant create table to c##INS;

grant create session to c##INS1;

select u.username, r.granted_role
  from dba_users u
  join dba_role_privs r on u.username = r.grantee;