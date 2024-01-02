alter table orders drop primary key cascade;
drop table orders;
create table orders(
  oseq        number(10)    primary key,           -- 주문번호  
  id          varchar(20)   references member(id), -- 주문자 아이디
  indate      date          default sysdate       -- 주문일
);

drop sequence orders_seq;
create sequence orders_seq start with 1;


alter table order_detail drop primary key cascade;
drop table order_detail;
create table order_detail(
  odseq       number(10)   primary key,        -- 주문상세번호
  oseq        number(10)   references orders(oseq),   -- 주문번호  
  shoescode   varchar2(20)    references product(shoescode),  -- 상품번호
  quantity    number(5)    default 1,                 -- 주문수량
  result      char(1)      default '1'                -- 1: 미처리 2: 처리     
);

drop sequence order_detail_seq;
create sequence order_detail_seq start with 1;

create or replace view order_view
as
select d.odseq, o.oseq, o.id, o.indate, d.shoescode,d.quantity, m.name mname,
m.zip_num, m.address, m.phone, p.pname pname, p.price, d.result   
from orders o, order_detail d, member m, product p 
where o.oseq=d.oseq and o.id = m.id and d.shoescode = p.shoescode;

insert into orders(oseq, id) values(orders_seq.nextval, 'one');
insert into orders(oseq, id) values(orders_seq.nextval, 'one');

insert into order_detail(odseq, oseq, shoescode, quantity) values(order_detail_seq.nextval, 1, 'nike01_brand', 1);
insert into order_detail(odseq, oseq, shoescode, quantity) values(order_detail_seq.nextval, 1, 'nike02_brand', 1);

select * from orders;
select * from order_detail;
select * from order_view;

commit;