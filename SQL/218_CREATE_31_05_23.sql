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