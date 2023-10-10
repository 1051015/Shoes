alter table product drop primary key cascade;
drop table product;
create table product(
    shoescode   varchar(20)     primary key,  -- 상품코드
    pname   varchar2(100),		-- 상품명
    price   number(10)     default '0',	-- 판매가
    pcount  number(10)   default '100',	-- 상품개수
    color   varchar2(10),		-- 색상
    brand varchar2(30),		-- 브랜드명
    mainimg varchar2(100),
    infoimg varchar2(100),
    detail1img  varchar2(100),
    detail2img	varchar2(100),
    detail3img	varchar2(100),
    indate  date   default sysdate,
    heart char(1)  default '1'		-- 찜X : 1, 찜 : 2
);



--brand--
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas01_brand','그라다스 82',79000,'White','아디다스','adidas01_brand_main.PNG','adidas01_brand_info.PNG','adidas01_brand_detail1.PNG','adidas01_brand_detail2.PNG','adidas01_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas02_brand','캠퍼스 00S',139000,'Black','아디다스','adidas02_brand_main.PNG','adidas02_brand_info.PNG','adidas02_brand_detail1.PNG','adidas02_brand_detail2.PNG','adidas02_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas03_brand','가젤',129000,'Black','아디다스','adidas03_brand_main.PNG','adidas03_brand_info.PNG','adidas03_brand_detail1.PNG','adidas03_brand_detail2.PNG','adidas03_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas04_brand','슈퍼스타 주니어',119000,'White','아디다스','adidas04_brand_main.PNG','adidas04_brand_info.PNG','adidas04_brand_detail1.PNG','adidas04_brand_detail2.PNG','adidas04_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike01_brand','나이키 에어 맥스 SC',99000,'White','나이키','nike01_brand_main.PNG','nike01_brand_info.PNG','nike01_brand_detail1.PNG','nike01_brand_detail2.PNG','nike01_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike02_brand','우먼스 에볼루션 6',69000,'Black','나이키','nike02_brand_main.PNG','nike02_brand_info.PNG','nike02_brand_detail1.PNG','nike02_brand_detail2.PNG','nike02_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike03_brand','나이키 레볼루션 7 프리스쿨벨크로',69000,'Pink','나이키','nike03_brand_main.PNG','nike03_brand_info.PNG','nike03_brand_detail1.PNG','nike03_brand_detail2.PNG','nike03_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike04_brand','나이키 플렉스 플러스 2 넥스트네이처',79000,'Black','나이키','nike04_brand_main.PNG','nike04_brand_info.PNG','nike04_brand_detail1.PNG','nike04_brand_detail2.PNG','nike04_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics01_brand','조그 500S',99000,'White','아식스','asics01_brand_main.PNG','asics01_brand_info.PNG','asics01_brand_detail1.PNG','asics01_brand_detail2.PNG','asics01_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics02_brand','젤-벤처 8',85000,'Brown','아식스','asics02_brand_main.PNG','asics02_brand_info.PNG','asics02_brand_detail1.PNG','asics02_brand_detail2.PNG','asics02_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics03_brand','젤-1100',119000,'Brown','아식스','asics03_brand_main.PNG','asics03_brand_info.PNG','asics03_brand_detail1.PNG','asics03_brand_detail2.PNG','asics03_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics04_brand','조그 800 2',84500,'Gold','아식스','asics04_brand_main.PNG','asics04_brand_info.PNG','asics04_brand_detail1.PNG','asics04_brand_detail2.PNG','asics04_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p-3101_brand','화이트 스니커즈',140000,'White','p-31','p-3101_brand_main.PNG','p-3101_brand_info.PNG','p-3101_brand_detail1.PNG','p-3101_brand_detail2.PNG','p-3101_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p-3102_brand','블랙 스니커즈',130000,'Black','p-31','p-3102_brand_main.PNG','p-3102_brand_info.PNG','p-3102_brand_detail1.PNG','p-3102_brand_detail2.PNG','p-3102_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p-3103_brand','슬라이드 골드',69000,'Black','p-31','p-3103_brand_main.PNG','p-3103_brand_info.PNG','p-3103_brand_detail1.PNG','p-3103_brand_detail2.PNG','p-3103_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p-3104_brand','오버 솔 라이트 블랙 에디션',110000,'Black','p-31','p-3104_brand_main.PNG','p-3104_brand_info.PNG','p-3104_brand_detail1.PNG','p-3104_brand_detail2.PNG','p-3104_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero01_brand','호크 다이얼 컴포트화',62100,'Black','클라우드제로','cloudzero01_brand_main.PNG','cloudzero01_brand_info.PNG','cloudzero01_brand_detail1.PNG','cloudzero01_brand_detail2.PNG','cloudzero01_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero02_brand','울프 다이얼 트래킹화',62100,'Brown','클라우드제로','cloudzero02_brand_main.PNG','cloudzero02_brand_info.PNG','cloudzero02_brand_detail1.PNG','cloudzero02_brand_detail2.PNG','cloudzero02_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero03_brand','메리제인 스니커즈',46000,'Pink','클라우드제로','cloudzero03_brand_main.PNG','cloudzero03_brand_info.PNG','cloudzero03_brand_detail1.PNG','cloudzero03_brand_detail2.PNG','cloudzero03_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero04_brand','쿨 여성샌들',39000,'Purple','클라우드제로','cloudzero04_brand_main.PNG','cloudzero04_brand_info.PNG','cloudzero04_brand_detail1.PNG','cloudzero04_brand_detail2.PNG','cloudzero04_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc01_brand','톰 첼시부츠',33900,'Black','맥목','macmoc01_brand_main.PNG','macmoc01_brand_info.PNG','macmoc01_brand_detail1.PNG','macmoc01_brand_detail2.PNG','macmoc01_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc02_brand','스니커즈 트루디',84000,'Silver','맥목','macmoc02_brand_main.PNG','macmoc02_brand_info.PNG','macmoc02_brand_detail1.PNG','macmoc02_brand_detail2.PNG','macmoc02_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc03_brand','노벨 로퍼',71600,'Black','맥목','macmoc03_brand_main.PNG','macmoc03_brand_info.PNG','macmoc03_brand_detail1.PNG','macmoc03_brand_detail2.PNG','macmoc03_brand_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc04_brand','퍼 스판 앵클부츠',20500,'Black','맥목','macmoc04_brand_main.PNG','macmoc04_brand_info.PNG','macmoc04_brand_detail1.PNG','macmoc04_brand_detail2.PNG','macmoc04_brand_detail3.PNG');



--men--
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('adidas01_men','가젤슬립스',109000,'Black','아디다스','adidas01_men_main.PNG',
'adidas01_men_info.PNG','adidas01_men_detail1.PNG','adidas01_men_detail2.PNG','adidas01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('adidas02_men','가젤',107000,'Black','아디다스','adidas02_men_main.PNG',
'adidas02_men_info.PNG','adidas02_men_detail1.PNG','adidas02_men_detail2.PNG','adidas02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('adidas03_men','아디다스 슈퍼스타',90000,'Brown','아디다스','adidas03_men_main.PNG',
'adidas03_men_info.PNG','adidas03_men_detail1.PNG','adidas03_men_detail2.PNG','adidas03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('adidas04_men','폼스타',105000,'Black','아디다스','adidas04_men_main.PNG',
'adidas04_men_info.PNG','adidas04_men_detail1.PNG','adidas04_men_detail2.PNG','adidas04_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('crocs01_men','에코 슬라이드',95000,'White','크록스','crocs01_men_main.PNG',
'crocs01_men_info.PNG','crocs01_men_detail1.PNG','crocs01_men_detail2.PNG','crocs01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('crocs02_men','에코 클로그',100000,'Black','크록스','crocs02_men_main.PNG',
'crocs02_men_info.PNG','crocs02_men_detail1.PNG','crocs02_men_detail2.PNG','crocs02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('crocs03_men','클로그 크러쉬',80000,'Brown','크록스','crocs03_men_main.PNG',
'crocs03_men_info.PNG','crocs03_men_detail1.PNG','crocs03_men_detail2.PNG','crocs03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('fila01_men','휠라 디사이퍼',80000,'White','휠라','fila01_men_main.PNG',
'fila01_men_info.PNG','fila01_men_detail1.PNG','fila01_men_detail2.PNG','fila01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('fila02_men','트라조서스',90000,'White','휠라','fila02_men_main.PNG',
'fila02_men_info.PNG','fila02_men_detail1.PNG','fila02_men_detail2.PNG','fila02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('fila03_men','휠라 레인저PT',150000,'White','휠라','fila03_men_main.PNG',
'fila03_men_info.PNG','fila03_men_detail1.PNG','fila03_men_detail2.PNG','fila03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('fila04_men','디사이퍼 v2',90000,'Black','휠라','fila04_men_main.PNG',
'fila04_men_info.PNG','fila04_men_detail1.PNG','fila04_men_detail2.PNG','fila04_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('fila05_men','휠라 스코치',100000,'Black','휠라','fila05_men_main.PNG',
'fila05_men_info.PNG','fila05_men_detail1.PNG','fila05_men_detail2.PNG','fila05_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('hks01_men','콘소시아',90000,'Black','호킨스','hks01_men_main.PNG',
'hks01_men_info.PNG','hks01_men_detail1.PNG','hks01_men_detail2.PNG','hks01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('hks02_men','에반트',130000,'Brown','호킨스','hks02_men_main.PNG',
'hks02_men_info.PNG','hks02_men_detail1.PNG','hks02_men_detail2.PNG','hks02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('hks03_men','토 가드 지트랩',120000,'Black','호킨스','hks03_men_main.PNG',
'hks03_men_info.PNG','hks03_men_detail1.PNG','hks03_men_detail2.PNG','hks03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('hks04_men','탕가',100000,'Brown','호킨스','hks04_men_main.PNG',
'hks04_men_info.PNG','hks04_men_detail1.PNG','hks04_men_detail2.PNG','hks04_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('nb01_men','SD6301SBK',90000,'Black','뉴발란스','nb01_men_main.PNG',
'nb01_men_info.PNG','nb01_men_detail1.PNG','nb01_men_detail2.PNG','nb01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('nb02_men','SD1101HWB2',90000,'White','뉴발란스','nb02_men_main.PNG',
'nb02_men_info.PNG','nb02_men_detail1.PNG','nb02_men_detail2.PNG','nb02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('nike01_men','나이키 에어맥스',120000,'Black','나이키','nike01_men_main.PNG',
'nike01_men_info.PNG','nike01_men_detail1.PNG','nike01_men_detail2.PNG','nike01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('nike02_men','나이키 이시리즈',100000,'Silver','나이키','nike02_men_main.PNG',
'nike02_men_info.PNG','nike02_men_detail1.PNG','nike02_men_detail2.PNG','nike02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('nike03_men','트리니티 라이트',110000,'White','나이키','nike03_men_main.PNG',
'nike03_men_info.PNG','nike03_men_detail1.PNG','nike03_men_detail2.PNG','nike03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('vans01_men','어세틱 뮬',110000,'White','반스','vans01_men_main.PNG',
'vans01_men_info.PNG','vans01_men_detail1.PNG','vans01_men_detail2.PNG','vans01_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('vans02_men','클래식 슬립온',120000,'Blue','반스','vans02_men_main.PNG',
'vans02_men_info.PNG','vans02_men_detail1.PNG','vans02_men_detail2.PNG','vans02_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('vans03_men','컴피쿠시 슬립온',90000,'Black','반스','vans03_men_main.PNG',
'vans03_men_info.PNG','vans03_men_detail1.PNG','vans03_men_detail2.PNG','vans03_men_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img)
values('vans04_men','올드 스쿨',110000,'Black','반스','vans04_men_main.PNG',
'vans04_men_info.PNG','vans04_men_detail1.PNG','vans04_men_detail2.PNG','vans04_men_detail3.PNG');



--women--
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas01_women','슈퍼스타 82',100000,'White','아디다스','adidas01_women_main.png','adidas01_women_info.png','adidas01_women_detail1.png','adidas01_women_detail2.png','adidas01_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas02_women','리스폰스 러너 유',110000,'Black','아디다스','adidas02_women_main.png','adidas02_women_info.png','adidas02_women_detail1.png','adidas02_women_detail2.png','adidas02_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas03_women','알파바운스 슬라이드',120000,'Black','아디다스','adidas03_women_main.png','adidas03_women_info.png','adidas03_women_detail1.png','adidas03_women_detail2.png','adidas03_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas04_women','리스폰스 러너 유',130000,'Gray','아디다스','adidas04_women_main.png','adidas04_women_info.png','adidas04_women_detail1.png','adidas04_women_detail2.png','adidas04_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike01_women','우먼스 나이키 에어 맥스 AP',140000,'White','나이키','nike01_women_main.png','nike01_women_info.png','nike01_women_detail1.png','nike01_women_detail2.png','nike01_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike02_women','우먼스 나이키 리뉴 세레니티 런 2',130000,'Red','나이키','nike02_women_main.png','nike02_women_info.png','nike02_women_detail1.png','nike02_women_detail2.png','nike02_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike03_women','나이키 오프코트 슬라이드',120000,'Black','나이키','nike03_women_main.png','nike03_women_info.png','nike03_women_detail1.png','nike03_women_detail2.png','nike03_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike04_women','우먼스 나이키 런 스위프트 3',110000,'Black','나이키','nike04_women_main.png','nike04_women_info.png','nike04_women_detail1.png','nike04_women_detail2.png','nike04_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics01_women','조그 100S',140000,'Silver','아식스','asics01_women_main.png','asics01_women_info.png','asics01_women_detail1.png','asics01_women_detail2.png','asics01_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics02_women','젤-벤처 6',130000,'Brown','아식스','asics02_women_main.png','asics02_women_info.png','asics02_women_detail1.png','asics02_women_detail2.png','asics02_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics03_women','젤-1130',120000,'Gold','아식스','asics03_women_main.png','asics03_women_info.png','asics03_women_detail1.png','asics03_women_detail2.png','asics03_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('asics04_women','조그 100 2',110000,'Black','아식스','asics04_women_main.png','asics04_women_info.png','asics04_women_detail1.png','asics04_women_detail2.png','asics04_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p3101_women','스웨이드 트레일 레이스',140000,'White','p31','p3101_women_main.png','p3101_women_info.png','p3101_women_detail1.png','p3101_women_detail2.png','p3101_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p3102_women','메이즈 스택 인젝스 우먼스',130000,'Yellow','p31','p3102_women_main.png','p3102_women_info.png','p3102_women_detail1.png','p3102_women_detail2.png','p3102_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p3103_women','인퓨젼',120000,'Black','p31','p3103_women_main.png','p3103_women_info.png','p3103_women_detail1.png','p3103_women_detail2.png','p3103_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p3104_women','스카이 네오 라이트 와이드',110000,'White','p31','p3104_women_main.png','p3104_women_info.png','p3104_women_detail1.png','p3104_women_detail2.png','p3104_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('p3105_women','코트 울트라 라이트',110000,'Beige','p31','p3105_women_main.png','p3105_women_info.png','p3105_women_detail1.png','p3105_women_detail2.png','p3105_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero01_women','에라',140000,'Black','클라우드제로','cloudzero01_women_main.png','cloudzero01_women_info.png','cloudzero01_women_detail1.png','cloudzero01_women_detail2.png','cloudzero01_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero02_women','클래식 슬립온 플랫폼',130000,'Black','클라우드제로','cloudzero02_women_main.png','cloudzero02_women_info.png','cloudzero02_women_detail1.png','cloudzero02_women_detail2.png','cloudzero02_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero03_women','스탠스',120000,'White','클라우드제로','cloudzero03_women_main.png','cloudzero03_women_info.png','cloudzero03_women_detail1.png','cloudzero03_women_detail2.png','cloudzero03_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('cloudzero04_women','오웬',110000,'Yellow','클라우드제로','cloudzero04_women_main.png','cloudzero04_women_info.png','cloudzero04_women_detail1.png','cloudzero04_women_detail2.png','cloudzero04_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc01_women','액손 3',140000,'Black','맥목','macmoc01_women_main.png','macmoc01_women_info.png','macmoc01_women_detail1.png','macmoc01_women_detail2.png','macmoc01_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc02_women','액손 2',130000,'Black','맥목','macmoc02_women_main.png','macmoc02_women_info.png','macmoc02_women_detail1.png','macmoc02_women_detail2.png','macmoc02_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc03_women','코히젼 15',120000,'Gray','맥목','macmoc03_women_main.png','macmoc03_women_info.png','macmoc03_women_detail1.png','macmoc03_women_detail2.png','macmoc03_women_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('macmoc04_women','트라이엄프 18',110000,'Black','맥목','macmoc04_women_main.png','macmoc04_women_info.png','macmoc04_women_detail1.png','macmoc04_women_detail2.png','macmoc04_women_detail3.png');



--kids--
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('ddodda01_kids','엠마',55000,'Black','또떼또떼','ddodda01_kids_main.png','ddodda01_kids_info.png','ddodda01_kids_detail1.png','ddodda01_kids_detail2.png','ddodda01_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike01_kids','나이키 코트 보로우 로우2',49000,'White','나이키','nike01_kids_main.png','nike01_kids_info.png','nike01_kids_detail1.png','nike01_kids_detail2.png','nike01_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike02_kids','나이키 스타 러너 3 토들러벨크로',55000,'Black','나이키','nike02_kids_main.png','nike02_kids_info.png','nike02_kids_detail1.png','nike02_kids_detail2.png','nike02_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike03_kids','코트 보로우 로우 리크래프트',59000,'White','나이키','nike03_kids_main.png','nike03_kids_info.png','nike03_kids_detail1.png','nike03_kids_detail2.png','nike03_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('nike04_kids','나이키 플렉스 러너 2 토들러벨크로',49000,'Black','나이키','nike04_kids_main.png','nike04_kids_info.png','nike04_kids_detail1.png','nike04_kids_detail2.png','nike04_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas01_kids','슈퍼스타 360 인펀트',65000,'Blue','아디다스','adidas01_kids_main.png','adidas01_kids_info.png','adidas01_kids_detail1.png','adidas01_kids_detail2.png','adidas01_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas02_kids','턴저러 런 2 CF 키즈',55000,'Pink','아디다스','adidas02_kids_main.png','adidas02_kids_info.png','adidas02_kids_detail1.png','adidas02_kids_detail2.png','adidas02_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('adidas03_kids','듀라모 10 EL 키즈',65000,'White','아디다스','adidas03_kids_main.png','adidas03_kids_info.png','adidas03_kids_detail1.png','adidas03_kids_detail2.png','adidas03_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('vans01_kids','클래식 슬립-온',49000,'Black','반스','vans01_kids_main.png','vans01_kids_info.png','vans01_kids_detail1.png','vans01_kids_detail2.png','vans01_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('vans02_kids','코그',59000,'Black','반스','vans02_kids_main.png','vans02_kids_info.png','vans02_kids_detail1.png','vans02_kids_detail2.png','vans02_kids_detail3.png');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('lumi01_kids','여아용 러블리 하트 LED 젤리슈즈 실버',59000,'Sliver','루미','lumi01_kids_main.PNG','lumi01_kids_info.PNG','lumi01_kids_detail1.PNG','lumi01_kids_detail2.PNG','lumi01_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('lumi02_kids','벨라 핑크 글러터 메리제인',69000,'Pink','루미','lumi02_kids_main.PNG','lumi02_kids_info.PNG','lumi02_kids_detail1.PNG','lumi02_kids_detail2.PNG','lumi02_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('lumi03_kids','여아용 러블리 하트 LED 젤리슈즈 핑크',39000,'Pink','루미','lumi03_kids_main.PNG','lumi03_kids_info.PNG','lumi03_kids_detail1.PNG','lumi03_kids_detail2.PNG','lumi03_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('lumi04_kids','로라 레드 페이턴트 리본 메리제인',69000,'Red','루미','lumi04_kids_main.PNG','lumi04_kids_info.PNG','lumi04_kids_detail1.PNG','lumi04_kids_detail2.PNG','lumi04_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('lumi05_kids','로라 핑크 페이턴트 리본 메리제인',69000,'Pink','루미','lumi05_kids_main.PNG','lumi05_kids_info.PNG','lumi05_kids_detail1.PNG','lumi05_kids_detail2.PNG','lumi05_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('puma01_kids','다이브캣 v2 인젝스 프리스쿨',49000,'Black','푸마','puma01_kids_main.PNG','puma01_kids_info.PNG','puma01_kids_detail1.PNG','puma01_kids_detail2.PNG','puma01_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('puma02_kids','푸마 이볼브 슬립온 인펀트',49000,'Black','푸마','puma02_kids_main.PNG','puma02_kids_info.PNG','puma02_kids_detail1.PNG','puma02_kids_detail2.PNG','puma02_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('puma03_kids','푸마 이볼브 런 메쉬 AC 인펀트',39000,'Pink','푸마','puma03_kids_main.PNG','puma03_kids_info.PNG','puma03_kids_detail1.PNG','puma03_kids_detail2.PNG','puma03_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('puma04_kids','라이트-플렉스 샌들 인펀트',39000,'Blue','푸마','puma04_kids_main.PNG','puma04_kids_info.PNG','puma04_kids_detail1.PNG','puma04_kids_detail2.PNG','puma04_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('puma05_kids','스웨이드 스마일리월드 프리스쿨',79000,'Black','푸마','puma05_kids_main.PNG','puma05_kids_info.PNG','puma05_kids_detail1.PNG','puma05_kids_detail2.PNG','puma05_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('rarago01_kids','오리지널 레인부츠-3',59000,'Pink','라라고','rarago01_kids_main.PNG','rarago01_kids_info.PNG','rarago01_kids_detail1.PNG','rarago01_kids_detail2.PNG','rarago01_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('rarago02_kids','레인젤리 레인부츠 스페셜(루미)',59000,'Purple','라라고','rarago02_kids_main.PNG','rarago02_kids_info.PNG','rarago02_kids_detail1.PNG','rarago02_kids_detail2.PNG','rarago02_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('rarago03_kids','라이트 빈 실내화',24000,'White','라라고','rarago03_kids_main.PNG','rarago03_kids_info.PNG','rarago03_kids_detail1.PNG','rarago03_kids_detail2.PNG','rarago03_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('rarago04_kids','허그 스니커즈',69000,'Pink','라라고','rarago04_kids_main.PNG','rarago04_kids_info.PNG','rarago04_kids_detail1.PNG','rarago04_kids_detail2.PNG','rarago04_kids_detail3.PNG');
insert into product(shoescode,pname,price,color,brand,mainimg,infoimg,detail1img,detail2img,detail3img) values('rarago05_kids','젤리빈 샌들',39000,'Yellow','라라고','rarago05_kids_main.PNG','rarago05_kids_info.PNG','rarago05_kids_detail1.PNG','rarago05_kids_detail2.PNG','rarago05_kids_detail3.PNG');



select * from product;

commit;