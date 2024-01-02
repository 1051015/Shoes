alter table qna drop primary key cascade;
drop table qna;
create table qna (
  qseq        number(5)    primary key,  -- 글번호 
  subject     varchar(300),            -- 제목
  content     varchar(1000),          -- 문의내용
  reply       varchar(1000),           -- 답변내용
  id          varchar(20),                 -- 작성자(FK : member.id) 
  rep         char(1)       default '1',        --1:답변 무  2:답변 유  
  indate      date default  sysdate     -- 작성일
); 

drop sequence qna_seq;
create sequence qna_seq start with 1;

select * from qna;

commit;