use board;


create table board(

	no integer primary key auto_increment,
	id varchar(20) not null,
	pw varchar(20) not null,
	title varchar(50) not null,
	content varchar(1000) not null,
	likes int(10) default 0,
	regdate datetime not null
);

select * from  board;