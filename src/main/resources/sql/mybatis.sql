create table membership( 
id varchar2(20) primary key, 
pw varchar2(100),
addr varchar2(300) 
);
insert into membership values('aaa','aaa','에이에이'); 
insert into membership values('bbb','bbb','비비비비'); 
commit;