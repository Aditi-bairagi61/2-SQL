/*CREATION OF TABLE*/

/*create table account(user_id serial primary key, username varchar(50) unique not null,password varchar(50) not null, email varchar(250) unique not null, created_on timestamp not null, last_login timestamp );
*/

/*create table job(job_id serial primary key, job_name varchar(200) unique not null);*/

/*create table account_job (user_id integer references account(user_id));*/

create table account_job1(user_id integer references account(user_id), job_id integer references job(job_id),hire_date timestamp)

select *from account
---------------------------------------------------------------------------------------------------------------------

/*insert into table queries*/
insert into account(username,password,email,created_on) values('jose','password','jose@gmail.com',current_timestamp);
insert into account(username,password,email,created_on) values('aditi','omsai','adi@gmail.com',current_timestamp)
select *from account

here below job _id take as 1 bcz, we given serial data type at timeof table creation
insert into job (job_name) values('Astronaut');
select *from job
insert into job(job_name) values('president');

insert into account_job1(user_id,job_id, hire_date) values(1,1,current_timestamp);
insert into account_job1(user_id,job_id, hire_date) values(10,10,current_timestamp);

select *from account_job1

-------------------------------------------------------------------------------------------------
update account set last_login=current_timestamp
update account set last_login=created_on
select *from account
select *from account_job1
update account_job1 set hire_date =account.created_on from account where account_job1.user_id=account.user_id;





