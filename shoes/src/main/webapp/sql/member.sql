alter table member drop primary key cascade;
drop table member;
create table member(   
    id         varchar2(20)  primary key,
    pwd        varchar2(20),     
    name       varchar2(40),
    email      varchar2(40),
    zip_num    varchar2(7),
    address    varchar2(100),
    phone      varchar2(20),
    useyn      char(1)       default 'y',
    indate     date          default sysdate
);

insert into member(id, pwd, name, zip_num, address, phone) values
('one', '1111', '김나리', '133-110', '서울시성동구성수동1가 1번지21호', '017-777-7777');
insert into member(id, pwd, name, zip_num, address, phone) values
('two', '2222', '이백합', '130-120', '서울시송파구잠실2동 리센츠 아파트 201동 505호', '011-123-4567');

select * from member;

commit;