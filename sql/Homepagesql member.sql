CREATE DATABASE example;

use example;

create table tb_Member(
 id varchar(14) primary key,
 pw varchar(20),
 name varchar(10),
 nicname varchar(10),
 birth date,
 email varchar(20)
);

select * from tb_member;
select count(*) from tb_member where id = 'admin' ;
select count(*) from tb_member where nicname = '히나';
select * from tb_member; 
 select id,name,nicname,birth,email from tb_member where id = 'admin' and pw = '123456' ;
 
 update tb_member set pw='123456',name='하수',nicname='멕템' where id = 'ssssss';
 
 delete from tb_member where id = 'w2awea' and pw = '123123';
 select * from tb2_reply where rno = 21;
 alter table tb2_board change vcount vcount int DEFAULT 0;
 
select * from tb1_board order by bno desc;
select * from tb2_board order by bno desc;
desc tb2_board;
desc tb1_board;
select title,vcount from tb2_board order by bno desc;
select vcount from tb1_board order by bno desc;
 update tb1_board set vcount = vcount + 1 where bno = 69;
 
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

ALTER TABLE tb_Member ADD UNIQUE uk_name(nicname) ; -- 유니크키 설정 
ALTER TABLE tb1_board ADD constraint fk1_member_board FOREIGN KEY (writer) REFERENCES tb_Member(nicname) ON update CASCADE ON DELETE CASCADE; 
ALTER TABLE tb2_board ADD constraint fk2_member_board FOREIGN KEY (writer) REFERENCES tb_Member(nicname) ON update CASCADE ON DELETE CASCADE;

desc tb1_board;
select * from tb1_board;
