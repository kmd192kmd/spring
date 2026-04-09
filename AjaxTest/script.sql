select * from tblAddress;
select count(*) from tblAddress;
select * from tblUser;

create table tblUser (
    seq number primary key,
    name varchar2(10) not null,
    id varchar2(20) not null unique,
    pw varchar2(20) not null
);
create sequence seqUser;

insert into tblUser values(seqUser.nextVal, '홍철수', 'hong', '1234');
commit;

drop table tblUser;