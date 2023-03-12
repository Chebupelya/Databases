create table INS_T
(
    N number(3) primary key,
    SYMB varchar2(50)
)

insert into INS_T values(1, '������');
insert into INS_T values(2, '������');
insert into INS_T values(3, '���������');
commit;


Update INS_T set SYMB = '������ �����' where N = 1;
Update INS_T set str= '������ ������������' where N = 2;
commit;


select * from INS_T;

select SYMB from INS_T where N = 3;
select AVG(N) from INS_T;

delete from INS_T where N = 3;

select * from INS_T;
rollback;

insert into INS_T values(10, '������');
insert into INS_T values(11, '�����������');
commit;

create table INS_T_child
(
    NN number(3) primary key, foreign key(NN) references INS_T(N),
    SS varchar(50)
);

insert into INS_T_child values(1, '����');
insert into INS_T_child values(2, '���');
commit;

select * from INS_T_child;

select SS, N from INS_T_child inner join INS_T on N = NN;

select SS, N from INS_T left join INS_T_child on N = NN;


drop table INS_T_child;
drop table INS_T;