alter table cart drop primary key cascade;
drop table cart;
create table cart (
  cseq         number(10)    primary key,  -- 장바구니번호
  id           varchar2(20)   references member(id),  -- 주문자 아이디(FK :　member.id) 
  shoescode        varchar2(20)     references product(shoescode), -- 주문 상품번호(FK :product.shoescode)
  quantity     number(5)     default 1,        -- 주문 수량
  psize	    number(5)    default 220,     -- 사이즈
  result       char(1)       default '1',      -- 1:미처리 2:처리
  indate       date          default SYSDATE   -- 주문일
);
drop sequence cart_seq;
create sequence cart_seq start with 1;


create or replace view cart_view
as
select c.cseq, c.id, c.shoescode, m.name mname, p.pname pname, 
c.quantity, c.psize, c.indate, p.price, p.color, p.infoimg, c.result 
from cart c, member m, product p 
where c.id = m.id and c.shoescode = p.shoescode
and result='1';

--insert into cart(cseq,id, shoescode, psize, quantity) values(cart_seq.nextval, 'one', 'nike01_brand', 260, 1);

select * from cart;

commit;