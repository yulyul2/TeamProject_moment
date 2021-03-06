create sequence member_seq
    start with 1
    INCREMENT by 1
    minvalue 1;
--member_no 1부터 시작, 1씩 증가, 최소값 1
create table member(
    member_no number not null,
    member_id varchar2(50) constraint member_pk primary key,
    member_pw  varchar2(50) not null,
    member_name varchar2(30) not null,
    member_tel varchar2(50) not null,
    member_email varchar2(50) not null,
    member_image varchar2(300),
    member_info varchar2(500)
);

select * from member;

create table post(
    post_no number constraint post_pk primary key,
    post_id varchar2(50) not null
        constraint post_fk1 references member(member_id)on delete cascade,
 --sns_member 테이블의 member_id 를 부모키로 post_id 만듬./ on delete cascade = 부모키 삭제시 자식도 삭제
    post_content varchar2(2000) not null,
    post_photo1 varchar2(300),
    post_photo2 varchar2(300),
    post_photo3 varchar2(300),
    post_photo4 varchar2(300),
    post_photo5 varchar2(300),
    reg_date date not null,
    ref number not null,
    re_step number not null,
    re_level number not null,
    like_count number not null
);
select * from post;

create SEQUENCE post_seq
    start with 1
    increment by 1
    minvalue 1;


create table notice(
    notice_no number constraint notice_pk primary key,
    id varchar2(50) not null,
    title varchar(200),
    reg_date Date not null
);

create SEQUENCE notice_seq
    start with 1
    increment by 1
    MINVALUE 1;

create table post_like(
    like_id varchar(50) not null
        constraint like_fk1 references member(member_id) on delete cascade,
--sns_member 테이블의 member_id를 부모키로 like_id만듬./ on delete cascade = 부모키 삭제시 자식도 삭제
    like_no number not null
        constraint like_fk2 references post(post_no) on delete cascade,
--sns_post 테이블의 post_no를 부모키로 like_no 만듬 / on delete cascade = 부모키 삭제시 자식도 삭제
    like_check varchar2(60) constraint like_pk primary key
);

create table user_follow(
    my_id varchar2(50) not null
        constraint follow_fk1 references member(member_id) on delete cascade,
    other_id varchar2(50) not null
        constraint follow_fk2 references member(member_id) on delete cascade,
    follow_check varchar2(110) constraint follow_pk primary key,
    follow_favorites number not null
-- 버튼을 누르면 +1 이 되고 다시 해제하면 -1 인 형식으로 1 과 2로 구현?
);

commit

create table post_bookmark(
	mark_id varchar2(50) not null
        constraint mark_fk1 references member(member_id)on delete cascade,
    mark_no number not null
        constraint mark_fk2 references post(post_no) on delete cascade,
    mark_check number not null
);

