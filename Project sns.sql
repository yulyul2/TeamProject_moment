create sequence user_seq
    start with 1
    INCREMENT by 1
    minvalue 1;
--member_no 1부터 시작, 1씩 증가, 최소값 1
create table users(
    user_no number not null,
    user_id varchar2(50) constraint member_pk primary key ,
    user_pw  varchar2(50) nkot null,
    user_name varchar2(30) not null,
    user_tel varchar2(50) not null,
    user_email varchar2(50) not null,
    user_image varchar2(300),
    user_info varchar2(500)
);

create table post(
    post_no number constraint post_pk primary key,
    post_id varchar2(50) not null
        constraint post_fk1 references sns_member(member_id)on delete cascade,
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
select * from sns_post;

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
        constraint like_fk1 references sns_member(member_id) on delete cascade,
--sns_member 테이블의 member_id를 부모키로 like_id만듬./ on delete cascade = 부모키 삭제시 자식도 삭제
    like_no number not null
        constraint like_fk2 references sns_post(post_no) on delete cascade,
--sns_post 테이블의 post_no를 부모키로 like_no 만듬 / on delete cascade = 부모키 삭제시 자식도 삭제
    like_check varchar2(60) constraint like_pk primary key
);

create table user_follow(
    my_id varchar2(50) not null
        constraint follow_fk1 references sns_member(member_id) on delete cascade,
    other_id varchar2(50) not null
        constraint follow_fk2 references sns_member(member_id) on delete cascade,
    follow_check varchar2(110) constraint follow_pk primary key,
    foloow_favorites number not null
-- 버튼을 누르면 +1 이 되고 다시 해제하면 -1 인 형식으로 1 과 2로 구현?
);
