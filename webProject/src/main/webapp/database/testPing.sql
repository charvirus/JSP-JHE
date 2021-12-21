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

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values("포레스트 검프",
(8.5),
142,
"1994-07-06",
"드라마",
"로버트 저메키스",
"톰 행크스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"브레이브 하트",
(8.5),
177,
"1995-06-17",
"전쟁",
"멜 깁슨",
"멜 깁슨");


insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"잉글리쉬 페이션트",
(7.4),
162,
"1996-11-15",
"로맨스",
"안소니 밍겔라",
"레이프 파인스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"타이타닉",
(7.8),
197,
"1997-12-19",
"로맨스",
"제임스 카메론",
"레오나르도 디카프리오");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"셰익스피어 인 러브",
(7.1),
143,
"1998-12-11",
"드라마",
"존 매든",
"귀네스 펠트로");
insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"아메리칸 뷰티",
(8.3),
122,
"1999-10-01",
"드라마",
"샘 맨데스",
"케빈 스페이시");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"글래디에이터",
(8.5),
155,
"2000-05-05",
"액션",
"리들리 스콧",
"러셀 크로우");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"뷰티풀 마인드",
(8.2),
135,
"2001-12-21",
"전기",
"론 하워드",
"러셀 크로우");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"시카고",
(7.2),
113,
"2002-12-27",
"범죄",
"롭 마샬",
"캐서린 제타 존스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"반지의 제왕 : 왕의 귀환",
(8.9),
199,
"2003-12-17",
"판타지",
"피터 잭슨",
"일라이저 우드");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"밀리언 달러 베이비",
(8.1),
133,
"2004-12-15",
"드라마",
"클린트 이스트우드",
"힐러리 스왱크");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"크래쉬",
(7.7),
112,
"2005-05-06",
"범죄",
"폴 해기스",
"산다라 블록");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"디파티드",
(8.5),
151,
"2006-10-06",
"범죄",
"마틴 스콜세지",
"레오나르도 디카프리오");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"노인을 위한 나라는 없다",
(8.1),
122,
"2007-11-21",
"스릴러",
"코엔 형제",
"토미 리 존스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"슬럼독 밀리어네어",
(8.0),
120,
"2008-08-30",
"범죄",
"대니 보일",
"데브 파텔");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"허트 로커",
(7.6),
131,
"2009-06-26",
"전쟁",
"캐서린 비글로우",
"제러미 레너");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"킹스 스피치",
(8.0),
118,
"2010-11-26",
"드라마",
"톰 후퍼",
"콜린 퍼스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"아티스트",
(7.9),
110,
"2011-10-12",
"멜로",
"미셸 아자나비슈스",
"장 뒤자르댕");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"아르고",
(7.7),
120,
"2012-10-12",
"드라마",
"벤 에플렉",
"벤 에플렉");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"노예 12년",
(8.1),
134,
"2013-08-30",
"드라마",
"스티브 맥퀸",
"추이텔 에지오포");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"버드맨",
(7.7),
119,
"2014-10-17",
"드라마",
"알레한드로 곤살레스 이냐리투",
"마이클 키튼");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"스포트라이트",
(8.0),
128,
"2015-11-06",
"전기",
"톰 매카시",
"마이클 키튼");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"문라이트",
(7.4),
111,
"2016-10-21",
"드라마",
"베리 젠킨스",
"트레반트 로즈");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"셰이프 오브 워터",
(7.4),
123,
"2017-12-01",
"판타지",
"기예르모 델 토로",
"샐리 호킨스");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"그린북",
(8.2),
130,
"2018-11-21",
"드라마",
"피터 패럴리",
"비고 모텐슨");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"그린북",
(8.2),
130,
"2018-11-21",
"드라마",
"피터 패럴리",
"비고 모텐슨");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"기생충",
(8.6),
132,
"2019-05-30",
"드라마",
"봉준호",
"송강호");

insert into movielist(movie_name,movie_score,movie_time,movie_reldate,movie_genre,movie_director,movie_mainactor) values(
"노마드랜드",
(7.6),
108,
"2020-09-11",
"드라마",
"클로이 자오",
"프란시스 맥도맨드");

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
"테스트 닉네임");

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