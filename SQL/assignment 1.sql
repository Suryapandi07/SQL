CREATE DATABASE museum;
USE museum;

create table met(
ID INT PRIMARY KEY,
Department varchar(100),
Category varchar(100),
Title varchar(100),
Artist varchar(100),
Date varchar(100),
Medium varchar(100),
Country varchar(100));


select * from met;

/* 1 */
select * from met limit 10;
/* 2 */
select count(*) as total_pieces from met;
/* 3 */
select count(*) as total_pieces from met where Category like '%celery%';
/* 4 */
select Title, Medium from met where date = (select min(Date) from met);
/* 5 */
select Country, count(*) as total_pieces from met group by Country order by total_pieces desc limit 10;
/* 6 */
select count(*) as total_pieces from met where medium like '%gold%' or medium like '%silver%' order by total_pieces desc;








