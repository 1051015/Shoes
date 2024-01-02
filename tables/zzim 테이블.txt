alter table zzim drop primary key cascade;
drop table zzim;
create table zzim (
  zseq     number(10)    primary key,
  id           varchar2(20)   references member(id),  -- 주문자 아이디(FK :　member.id) 
  shoescode        varchar2(20)     references product(shoescode) -- 주문 상품번호(FK :product.shoescode)
);

drop sequence zzim_seq;
create sequence zzim_seq start with 1;

create or replace view zzim_view
as
select z.zseq, z.id, z.shoescode, m.name mname, p.pname pname, 
p.price, p.brand, p.infoimg, p.heart 
from zzim z, member m, product p 
where z.id = m.id and z.shoescode = p.shoescode;

select * from zzim;
select * from zzim_view;

commit;