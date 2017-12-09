create table my_branch(id number,
name varchar2(20),
city varchar2(20), 
assets number default 0 not null,
constraint branch_pk primary key (id));

create table my_account(id number,
name varchar2(20),
branch_id number,
balance number default 0 not null,
constraint account_pk primary key (id),
constraint account_fk foreign key (branch_id) references my_branch(id));

create table my_users (
user_id number,
user_name varchar2(20),
user_password varchar2(20),
user_activated number default 0,
primary key(user_id));

create sequence my_branch_seq start with 1001 increment by 1;
create sequence my_account_seq start with 2001 increment by 1;
create sequence my_users_seq start with 30001 increment by 1;

create table my_deposit( id number,
account_id number,
deposit_amount number not null,
deposit_time timestamp not null,
deposit_user varchar2(20) not null,
constraint deposit_pk primary key (id),
constraint deposit_fk foreign key (account_id) references my_account(id)); 

create table my_withdraw( id number,
account_id number,
withdraw_amount number not null,
withdraw_date timestamp not null,
withdraw_user varchar2(20) not null,
constraint withdraw_pk primary key (id),
constraint withdraw_fk foreign key (account_id) references my_account(id)); 


create sequence my_deposit_seq start with 3001 increment by 1;
create sequence my_withdraw_seq start with 4001 increment by 1;

create or replace trigger before_insert_deposit
before insert on my_deposit 
for each row
declare
result number;
old_balance number;
user_name varchar2(20);
current_time timestamp;
begin
select balance into old_balance from my_account where account_id = :new.account_id;
result := old_balance + :new.deposit_amount;
select user into user_name from dual;
:new.deposit_user := user_name;
select current_timestamp into current_time from dual;
:new.deposit_time := current_time;
update my_account set balance = result where account_id = :new.account_id;
end;

FUNCTION my_auth (
    p_username IN VARCHAR2,
    p_password IN VARCHAR2)
RETURN BOOLEAN AS
    found number := 0;
BEGIN
  SELECT 1 into found FROM MY_USERS
             WHERE upper(USER_NAME) = upper(p_username)
             AND upper(USER_PASSWORD) = upper(p_password)
             AND USER_ACTIVATED = 1;
    RETURN TRUE;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
  RETURN FALSE;
END;

select "ROWID", 
decode(nvl(dbms_lob.getlength(FILE_LOB),0),0,null,
       '<img alt="Altr text" src="' || apex_util.get_blob_file_src('P9_FILE_LOB',ROWID) || '" width = "75"/>') "IMAGE",
"FILE_NAME",
"FILE_MIMETYPE",
"FILE_UPDATEDATE",
"FILE_CHARACTERSET"
from "#OWNER#"."PICTURES" 

https://docs.oracle.com/cd/E14373_01/appdev.32/e13363/acl.htm#CHDBDEHH

create or replace trigger after_insert_branch
after insert on my_branch1
for each row
declare
id number;
t timestamp;
u varchar2(20);
begin
id := :new.branch_id;
select current_timestamp into t from dual;
-- u := &APP_USER.
select user into u from dual;
insert into my_branch_log_1 values (id, t, u);
end;
  
create table my_users (
user_id number,
user_name varchar2(20),
user_password varchar2(20),
user_activated number default 0,
primary key(user_id));

create sequence my_users_seq start with 30001 increment by 1;

insert into my_users values (my_users_seq.nextval,'admin','admin123',1);

create table my_citizen (
citizen_id number,
citizen_name varchar2(20),
citizen_age number,
primary key(citizen_id));

create table my_citizen_log(
log_id number,
citizen_id number,
insert_time timestamp,
insert_user varchar2(20),
primary key(log_id),
foreign key (citizen_id) references my_citizen);
create sequence my_citizen_seq start with 40001 increment by 1;
create sequence my_citizen_log_seq start with 50001 increment by 1;

create or replace trigger after_insert_citizen
after insert on my_citizen
for each row
declare
c number;
t timestamp;
u varchar2(20);
begin
c := :new.citizen_id;
select current_timestamp into t from dual;
select user into u from dual;
insert into my_citizen_log values 
	(my_citizen_log_seq.nextval, c, t, u);
end;

