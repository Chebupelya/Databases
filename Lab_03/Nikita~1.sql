select instance_name from v$instance;
create user c##INS identified by Pa$$w0rd
account unlock;
grant create session to c##INS;
grant create table to c##INS;