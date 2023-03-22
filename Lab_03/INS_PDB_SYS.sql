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
  
grant create session to c##INS1;
grant create table to c##INS;