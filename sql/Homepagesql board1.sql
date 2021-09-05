use example;

create table tb1_board(
bno int auto_increment primary key,
title varchar(200) not null,
content varchar(2000) not null,
writer varchar(50) not null,
regdate datetime default now(),
updatedate datetime default now()

);
alter table tb1_board add vcount int not null default 0;
alter table tb1_board add column replycnt int default 0;

select rn, bno, title,writer,vcount
	 		from(select @rownum:=@rownum+1 as rn, bno, title,writer,vcount
	 			from(select @rownum:=0) as tmp, tb1_board
	 			order by vcount desc) boardList
	 		where rn <= 15 ;

select rn, bno, title,writer,vcount
	 		from(select @rownum:=@rownum+1 as rn, bno, title,writer,vcount
	 			from(select @rownum:=0) as tmp, tb2_board
	 			order by vcount desc) boardList
	 		where rn <= 15 ;
            
select * from tb1_board where bno between 10 and 20;
select count(*) from tb1_board where bno > 0;
insert into tb1_board(title, content,writer) values('테스트제목','테스트 내용','카즈');
 desc tb1_board;
 select * from tb1_board where bno > 0;
 select * from tb1_board order by bno desc; -- 숫자순서를 뒷번부터

 select bno, title, content, writer, regdate, updatedate
from(
      select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
      from (select @rownum:=0) as tmp, tb1_board
      order by bno desc
      ) boardList
where rn > 0 and rn <= 10 ;
 
 select count(*) from tb1_board where bno > 0;
 
select bno, title, content, writer, regdate, updatedate
from(
  select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
  from (select @rownum:=0) as tmp, tb1_board
 -- if(search == "T"){
--  where title like '%새로%'  -- 제목만 검색
 -- }else if (search == "C"){
 -- where  content like '%무한도전%' -- 내용만 검색
 -- }else if (search =="TC"){
-- where title like '%새로%' or content like '%무한도전%' -- 제목+내용 검색
  -- }
  order by bno desc
)boardList
where rn > 0 and rn <= 10 ;

 select bno, title, content, writer, regdate, updatedate
from(
      select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
      from (select @rownum:=0) as tmp, tb1_board
      where 1=1 and title like concat('%','새로','%')
      order by bno desc
      ) boardList
where rn > 0 and rn <= 10; 


create table tb1_reply(
rno int auto_increment primary key ,
bno int,
reply varchar(1000),
replyer varchar(50),
replydate datetime default current_timestamp,
updateDate datetime default current_timestamp
);
select rno, bno, reply, replyer, replydate, updateDate from tb1_reply where bno = 41 order by rno desc;
alter table tb1_reply add constraint fk1_reply_board
foreign key(bno) references tb1_board(bno);
select * from tb1_reply;
desc tb1_reply;
desc tb2_reply;
select * from tb1_reply where rno = 5;

insert into tb1_reply (bno,reply,replyer)
values(63,"지석진","나는왕코다");


create index idx1_reply on tb1_reply (bno desc, rno asc);
create index idx2_reply on tb2_reply (bno desc, rno asc);


 select rno, bno, reply, replyer, replydate, updateDate
from(
      select @rownum:=@rownum+1 as rn, rno, bno, reply, replyer, replydate, updateDate
      from (select @rownum:=0) as tmp, tb1_reply
      where bno = 50 and rno > 0 order by rno desc
      ) replyList
where rn > 0 and rn <= 50; 

select count(rno) from tb1_reply where bno = 43;
alter table tb1_board add column replycnt int default 0;
alter table tb1_board add column vcount int default 0;
update tb1_board set replycnt=replycnt+5 where bno = 50;

update tb1_board set replycnt = (select count(rno) from tb1_reply where tb1_reply.bno = tb1_board.bno);

create table tb1_attach(
uuid varchar(100) not null,
uploadPath varchar(200) not null,
fileName varchar(100) not null,
filetype char(1) default 'I',
bno int
);
alter table tb1_attach add constraint pk_attach primary key (uuid);
alter table tb1_attach add constraint fk1_board_attach foreign key (bno) references tb1_board(bno);

desc tb1_attach;

insert into tb1_attach 
values(safkflsl,dsaodsdsad,dokwfffxc,I,1);

select * from tb1_attach;
delete from tb1_attach where bno = 63;
-- select * from tb1_attach where uploadPath = to_days(sysdate -1, '2021\04\22'); --

SELECT * FROM tb1_attach WHERE uploadPath > (NOW() - INTERVAL 7 DAY);

create table tb1_sample1(col1 varchar(500));
create table tb1_sample2(col2 varchar(50));

use tp;

select * from member;

