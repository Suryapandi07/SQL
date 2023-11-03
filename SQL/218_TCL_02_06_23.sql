# this is the comment
-- this is also comment
/*
this is 
a multiline
comment
*/

DROP DATABASE if exists innomatics;

create database innomatics;

use innomatics;

create table batch_218(
ID int,
Name varchar(50),
age int,
email varchar(50));

describe batch_218;
desc batch_218;

/*
CREATE TABLE table_name(
col_name data_type [constraints],
col_name data_type [constraints],
col_name data_type [constraints],
.
.
)[engine = InnoDB];

*/

select * from batch_218;

INSERT INTO batch_218(ID, Name, age,email)
values
(1,'Nani', 34,'nani@gmail.com');

select * from batch_218;

INSERT INTO batch_218(ID, Name, age,email)
values
(2,'Manan', 25, 'manan@gmail.com'),
(3,'Sree Hari', 21,'shreehari@gmail.com');

select * from batch_218;

alter table batch_218
add column gender enum('Male','Female');

use innomatics;

select * from batch_218;



/*
constrains:
Primary key - all the values should be unique, no null values. 
Forign key - to make the relation b/w the tables.[refential integrity]
Unique key - all the values should be unique.
NOT NULL - No null values are allowed.
DEFAULT() - a default value set to a perticular column.
AUTO_INCREMENT - auto incremental integer that starts with 1 till n number of
rows. to apply the auto_increment the column should have any key. 
*/
select * from batch_218;

drop table batch_218;

create table batch_218(
ID int primary key auto_increment,
Name varchar(50) NOT NULL,
Age int default(20),
Email varchar(50) unique key not null);

describe batch_218;

insert into batch_218(Name, Email)
values
('ashok', 'ashok@gmail.com');

select * from batch_218;

insert into batch_218(Name, Email)
values
('vijit', 'vijit@gmail.com');

select * from batch_218;

## Adding a column
ALTER TABLE batch_218
ADD COLUMN Gender enum('Male', 'Female') NOT NULL;

select * from batch_218;

ALTER TABLE batch_218
modify column gender enum('Male', 'Female') not null default('Female');

describe batch_218;

insert into batch_218(Name, Email)
values
('sham', 'sham@gmail.com');

use innomatics;

select * from batch_218;
describe batch_218;

alter table batch_218
add column course varchar(50) default('Data Science');

select * from batch_218;


## adding constraint to course column
alter table batch_218
modify column course varchar(50) default('Data Science') not null;

describe batch_218;

alter table batch_218
modify column Age int default (20) not null;

describe batch_218;

## rename a column
alter table batch_218
rename column Name to Full_Name;

select * from batch_218;

## change position of column
alter table batch_218
modify column gender enum('Male', 'Female') not null default('Female') after Age;

select * from batch_218;

# drop course column
alter table batch_218
drop column course;

select * from batch_218;

# update value
update batch_218
set Full_name = 'Hari krishna'
where ID = 5;

select * from batch_218;

update batch_218
set Full_name = 'Ram'
where Age = 20;

select * from batch_218;

#delete a row
delete from batch_218
where ID = 3;

delete from batch_218
where Full_Name = 'Ram';

select * from batch_218;

delete from batch_218;

select * from batch_218;

insert into batch_218(Full_Name, Age, gender, Email)
values
('Sham', 23, 'Male', 'sham@gmail.com'),
('Ram', 26, 'Male', 'ram@gmail.com'),
('Vijay', 23, 'Female', 'vijay@gmail.com');

select * from batch_218;

## truncate
truncate table batch_218;
select * from batch_218;

insert into batch_218(Full_Name, Age, gender, Email)
values
('Sham', 23, 'Male', 'sham@gmail.com'),
('Ram', 26, 'Male', 'ram@gmail.com'),
('Vijay', 23, 'Female', 'vijay@gmail.com');

select * from batch_218;

## reanme a table
rename table batch_218 to batch_221;

select * from batch_221;

set autocommit = 0;


insert into batch_221(Full_Name, Age, gender, Email)
values
('Vijit', 30, 'Male', 'vijit@gmail.com');

select * from batch_221;
use innomatics;


insert into batch_221(Full_Name, Age, gender, Email)
values
('Vijit', 30, 'Male', 'vijit@gmail.com');

commit;

use innomatics;
select * from batch_221;

set autocommit = 0;

select * from batch_221;

update batch_221
set Full_name = 'Vijit Singh'
where ID = 5;

insert into batch_221(Full_Name, Age, gender, Email)
values
('Prasad', 22, 'Male', 'prasad@gmail.com');

select * from batch_221;

insert into batch_221(Full_Name, Age, gender, Email)
values
('Ramya', 21, 'Female', 'ramya@gmail.com');

commit;
select * from batch_221;

insert into batch_221(Full_Name, Age, gender, Email)
values
('Shree Hari', 29, 'Male', 'shreehari@gmail.com');

use innomatics;

rollback;

select * from batch_221;

rollback;

set autocommit = 0;
insert into batch_221(Full_Name, Age, gender, Email)
values
('Arun', 20, 'Male', 'arun@gmail.com');


