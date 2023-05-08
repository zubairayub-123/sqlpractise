create database student;
use student;

create table students(
std_id int(4) NOT NULL AUTO_INCREMENT,
std_name varchar(20) not null,
primary key (std_id)
);
drop table students;

insert into students values(1,"Ayub");
insert into students values(2,"Zubair");
insert into students values(3,"Abdullah");
insert into students values(4,"Dawood");
insert into students values(5,"Abc");

select * from students;

create table details(
std_id int not null references students,
address varchar(20) not null,
city varchar(20) not null,
state varchar(20) not null,
contactno varchar(20) not null
);
drop table details;
insert into details values(1,"1/23","Proddatur","Andhra Pradesh","1234567880");
insert into details values(2,"4/56","Kadapa","Andhra Pradesh","9076878767");
insert into details values(3,"11/3","Kadapa","Andhra Pradesh","908754321");
insert into details values(4,"5/34","Khadardbad","Andhra Pradesh","8797893892");
insert into details values(5,"6/76","Srinivas Nagar","Andhra Pradesh","98086863887");
insert into details values(6,"1/11","Proddatur","Andhra Pradesh","98086863887");


select * from details;

select * from details where std_id=1;
select * from details order by city desc;
select distinct(city) from details;
select * from details where std_id>3;
