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

ALTER TABLE batch_218
ADD COLUMN Gender enum('Male', 'Female') NOT NULL;

select * from batch_218;

ALTER TABLE batch_218
modify column gender enum('Male', 'Female') not null default('Female');

describe batch_218;

insert into batch_218(Name, Email)
values
('sham', 'sham@gmail.com');
