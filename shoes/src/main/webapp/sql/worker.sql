drop table worker;
create table worker(          
    id          varchar2(20)  primary key,
    pwd         varchar2(20),
    name        varchar2(40),
    phone       varchar2(20)
);

insert into worker values('admin', 'admin', '홍관리', '010-777-7777');
insert into worker values('pinksung', 'pinksung', '명강사', '010-999-9696');

select * from worker;

commit;