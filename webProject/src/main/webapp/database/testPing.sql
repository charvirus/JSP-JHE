use movieboard;



create table movielist(
	movie_no int not null auto_increment primary key,
    movie_name varchar(20) not null,
    movie_score float(3,2) not null,
    movie_time int not null,
    movie_reldate datetime not null,
    movie_genre varchar(30) not null,
    movie_director varchar(30) not null,
    movie_mainactor varchar(30) not null
);

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values("������Ʈ ����",
(8.5),
142,
"1994-07-06",
"���",
"�ι�Ʈ ����Ű��",
"�� ��ũ��");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�극�̺� ��Ʈ",
(8.5),
177,
"1995-06-17",
"����",
"�� �齼",
"�� �齼");


insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�ױ۸��� ���̼�Ʈ",
(7.4),
162,
"1996-11-15",
"�θǽ�",
"�ȼҴ� �ְֶ�",
"������ ���ν�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"Ÿ��Ÿ��",
(7.8),
197,
"1997-12-19",
"�θǽ�",
"���ӽ� ī�޷�",
"���������� ��ī������");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"���ͽ��Ǿ� �� ����",
(7.1),
143,
"1998-12-11",
"���",
"�� �ŵ�",
"�ͳ׽� ��Ʈ��");
insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�Ƹ޸�ĭ ��Ƽ",
(8.3),
122,
"1999-10-01",
"���",
"�� �ǵ���",
"�ɺ� �����̽�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�۷�������",
(8.5),
155,
"2000-05-05",
"�׼�",
"���鸮 ����",
"���� ũ�ο�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"��ƼǮ ���ε�",
(8.2),
135,
"2001-12-21",
"����",
"�� �Ͽ���",
"���� ũ�ο�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"��ī��",
(7.2),
113,
"2002-12-27",
"����",
"�� ����",
"ĳ���� ��Ÿ ����");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"������ ���� : ���� ��ȯ",
(8.9),
199,
"2003-12-17",
"��Ÿ��",
"���� �轼",
"�϶����� ���");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�и��� �޷� ���̺�",
(8.1),
133,
"2004-12-15",
"���",
"Ŭ��Ʈ �̽�Ʈ���",
"������ ����ũ");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"ũ����",
(7.7),
112,
"2005-05-06",
"����",
"�� �ر⽺",
"��ٶ� ���");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"����Ƽ��",
(8.5),
151,
"2006-10-06",
"����",
"��ƾ ���ݼ���",
"���������� ��ī������");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"������ ���� ����� ����",
(8.1),
122,
"2007-11-21",
"������",
"�ڿ� ����",
"��� �� ����");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"������ �и���׾�",
(8.0),
120,
"2008-08-30",
"����",
"��� ����",
"���� ����");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"��Ʈ ��Ŀ",
(7.6),
131,
"2009-06-26",
"����",
"ĳ���� ��۷ο�",
"������ ����");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"ŷ�� ����ġ",
(8.0),
118,
"2010-11-26",
"���",
"�� ����",
"�ݸ� �۽�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"��Ƽ��Ʈ",
(7.9),
110,
"2011-10-12",
"���",
"�̼� ���ڳ��񽴽�",
"�� ���ڸ���");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�Ƹ���",
(7.7),
120,
"2012-10-12",
"���",
"�� ���÷�",
"�� ���÷�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�뿹 12��",
(8.1),
134,
"2013-08-30",
"���",
"��Ƽ�� ����",
"������ ��������");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�����",
(7.7),
119,
"2014-10-17",
"���",
"�˷��ѵ�� ��췹�� �̳ĸ���",
"����Ŭ Űư");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"����Ʈ����Ʈ",
(8.0),
128,
"2015-11-06",
"����",
"�� ��ī��",
"����Ŭ Űư");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"������Ʈ",
(7.4),
111,
"2016-10-21",
"���",
"���� ��Ų��",
"Ʈ����Ʈ ����");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"������ ���� ����",
(7.4),
123,
"2017-12-01",
"��Ÿ��",
"�⿹���� �� ���",
"���� ȣŲ��");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�׸���",
(8.2),
130,
"2018-11-21",
"���",
"���� �з���",
"��� ���ٽ�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�׸���",
(8.2),
130,
"2018-11-21",
"���",
"���� �з���",
"��� ���ٽ�");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�����",
(8.6),
132,
"2019-05-30",
"���",
"����ȣ",
"�۰�ȣ");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"�븶�巣��",
(7.6),
108,
"2020-09-11",
"���",
"Ŭ���� �ڿ�",
"�����ý� �Ƶ��ǵ�");

select * from movielist order by  movie_time;
update movielist set movie_reldate = "2011-10-12" where movie_no = 18;
alter table movielist Auto_increment = 3;
delete from movielist where movie_no = 2;
desc movielist;

create table userlist (
user_no int not null auto_increment primary key,
user_id varchar(20) not null,
user_pw varchar(20) not null,
user_nickname varchar(20) not null,
user_regdate datetime default current_timestamp
);

insert into userlist(user_id,user_pw,user_nickname) values(
"testid",
"testpw",
"�׽�Ʈ �г���");

create table talklist (
talk_no int not null auto_increment primary key,
user_id varchar(20) not null,
talk_title varchar(50) not null,
talk_content varchar(1000) not null,
talk_likes int(10) default 0,
talk_regdate datetime not null
);

create table ticketlist(
user_id varchar(20) not null,
movie_name varchar(20) not null,
ticket_bench varchar(10) not null,
ticket_date datetime not null
);