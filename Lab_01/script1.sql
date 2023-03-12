create table INS_T
(
    N number(3) primary key,
    SYMB varchar2(50)
)

insert into INS_T values(1, 'Никита');
insert into INS_T values(2, 'Данила');
insert into INS_T values(3, 'Александр');
commit;


Update INS_T set SYMB = 'Никита Ильин' where N = 1;
Update INS_T set str= 'Данила Козляковский' where N = 2;
commit;


select * from INS_T;

select SYMB from INS_T where N = 3;
select AVG(N) from INS_T;

delete from INS_T where N = 3;

select * from INS_T;
rollback;

insert into INS_T values(10, 'десять');
insert into INS_T values(11, 'одиннадцать');
commit;

create table INS_T_child
(
    NN number(3) primary key, foreign key(NN) references INS_T(N),
    SS varchar(50)
);

insert into INS_T_child values(1, 'Один');
insert into INS_T_child values(2, 'Два');
commit;

select * from INS_T_child;

select SS, N from INS_T_child inner join INS_T on N = NN;

select SS, N from INS_T left join INS_T_child on N = NN;


drop table INS_T_child;
drop table INS_T;