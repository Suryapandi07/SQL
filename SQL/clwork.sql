use innomatics;
select * from batch_218;
set autocommit = 0;
-- commit

delete from batch_218
where ID = 1;

select * from batch_218;

set autocommit = 0;
insert into batch_218(Name, Age, Email, gender)
values
('sahithi', 21, 'sahithi@gmail.com', 'male');

select * from batch_218;

rollback;

select * from batch_218;

-- savepoint

insert into batch_218(Name, Age, Email, gender)
values
('sahithi', 21, 'sahithi@gmail.com', 'male');


select * from batch_218;

savepoint sp_sahithi;

insert into batch_218(Name, Age, Email, gender)
values
('vijit', 44, 'vijit@gmail.com', 'male');

select * from batch_218;

rollback to sp_sahithi;


select * from batch_218;

commit;

delete from batch_218;
select * from batch_218;

