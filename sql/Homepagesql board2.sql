use example;

create table tb2_board(
bno int auto_increment primary key,
title varchar(200) not null,
content varchar(2000) not null,
writer varchar(50) not null,
regdate datetime default now(),
updatedate datetime default now()

);
alter table tb2_board add vcount int not null default 0;
alter table tb2_board add column replycnt int default 0;


insert into tb2_board(title, content,writer) values('테스트제목','테스트 내용12','카즈');
 desc tb2_board;
 select * from tb2_board where bno > 0;
 select * from tb2_board order by bno desc; -- 숫자순서를 뒷번부터

 select bno, title, content, writer, regdate, updatedate
from(
      select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
      from (select @rownum:=0) as tmp, tb2_board
      order by bno desc
      ) boardList
where rn > 0 and rn <= 10 ;
 
 select count(*) from tb2_board where bno > 0;
 
select bno, title, content, writer, regdate, updatedate
from(
  select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
  from (select @rownum:=0) as tmp, tb2_board
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

delete from tb2_board where bno = 22;

 select bno, title, content, writer, regdate, updatedate
from(
      select @rownum:=@rownum+1 as rn, bno, title, content, writer, regdate, updatedate
      from (select @rownum:=0) as tmp, tb2_board
      where 1=1 and title like concat('%','새로','%')
      order by bno desc
      ) boardList
where rn > 0 and rn <= 10; 


create table tb2_reply(
rno int auto_increment primary key ,
bno int,
reply varchar(1000),
replyer varchar(50),
replydate datetime default current_timestamp,
updateDate datetime default current_timestamp
);
select rno, bno, reply, replyer, replydate, updateDate from tb2_reply where bno = 15 order by rno desc;
alter table tb2_reply add constraint fk2_reply_board
foreign key(bno) references tb2_board(bno);

select * from tb2_reply;
desc tb2_reply;
select * from tb2_reply where rno = 5;

insert into tb2_reply (bno,reply,replyer)
values(13,"송지효","저도 가보고싶네요");
create index idx2_reply on tb2_reply (bno desc, rno asc);

 select rno, bno, reply, replyer, replydate, updateDate
from(
      select @rownum:=@rownum+1 as rn, rno, bno, reply, replyer, replydate, updateDate
      from (select @rownum:=0) as tmp, tb2_reply
      where bno = 21 and rno > 0 order by rno desc
      ) replyList
where rn > 0 and rn <= 50; 
select count(rno) from tb2_reply where bno = 21;
select count(rno) from tb2_reply where bno = 21;
alter table tb2_board add column replycnt int default 0;
alter table tb2_board add column vcount int default 0;
update tb2_board set replycnt=replycnt+5 where bno = 13;

update tb2_board set replycnt = (select count(rno) from tb2_reply where tb2_reply.bno = tb2_board.bno);

create table tb2_attach(
uuid varchar(100) not null,
uploadPath varchar(200) not null,
fileName varchar(100) not null,
filetype char(1) default 'I',
bno int
);
alter table tb2_attach add constraint pk_attach primary key (uuid);
alter table tb2_attach add constraint fk2_board_attach foreign key (bno) references tb2_board(bno);


desc tb2_attach;

insert into tb2_attach 
values(safkflsl,dsaodsdsad,dokwfffxc,I,1);

select * from tb2_attach;
delete from tb2_attach where bno = 63;
-- select * from tb2_attach where uploadPath = to_days(sysdate -1, '2021\04\22'); --

SELECT * FROM tb2_attach WHERE uploadPath > (NOW() - INTERVAL 7 DAY);

create table tb2_sample1(col1 varchar(500));
create table tb2_sample2(col2 varchar(50));

select * from tb2_board where bno > 0;

delete from tb2_board;

select max(bno)+1 from tb1_board;  -- 첫 글을 쓸떄 bno 가 null 값이여서 +1 을 해도 null 값이라 insert 가 안되는것이다
select ifnull(max(bno),0)+1 bno from tb1_board; -- SELECT IFNULL(Column명, "Null일 경우 대체 값") FROM 테이블명; 을 넣어서 null 일때는 0으로 입력되게한다.