create table member(
	member_no number not null,
	id varchar2(30) primary key,
	password varchar2(30) not null,
	name varchar2(30) not null,
	tel varchar2(20) not null,
	email varchar2(50)not null,
	image_path varchar2(300),
	info varchar2(200)
);

CREATE SEQUENCE member_seq
START WITH 1
INCREMENT BY 1;
