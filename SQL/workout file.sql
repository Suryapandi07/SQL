drop database if exists voterid;

create database voterid;

use voterid;

create table pongalur (
ID int, Name varchar(50), Aadhar int)

describe pongalur; 

select * from pongalur;

insert into pongalur (ID, Name, Aadhar) values (1, 'Sree', 22349877)

select * from pongalur;

insert into pongalur (ID, Name, Aadhar) values (2, 'vipin', 77862938)
select * from pongalur;

insert into pongalur (ID, Name, Aadhar) values (2, 'uthaya', 22893849)
select * from pongalur;

select * from pongalur;

alter table pongalur add column gender enum('male', 'female')

select * from pongalur;

drop table if exists pongalur;

create table pongalur (ID int primary key auto_increment, Name varchar(50) not null, email varchar(50) unique key)

describe pongalur;

insert into pongalur (Name, email) values ('yash', 'yash@gmail.com')

select * from pongalur;

insert into pongalur (Name, email) values ('harish', 'harish@gmail.com')

select * from pongalur;

insert into pongalur (Name, email) values ('ram', 'harish@gmail.com')

alter table pongalur add column gender enum('male', 'female') default ('male');

select * from pongalur;



insert into pongalur (Name, email) values ('ravi', 'ravi@gmail.com')


