DELIMITER //
use kaggle//
show tables //
select * from data_science_salary dss where job_title like '%an%';
drop procedure if exists searchjob;
CREATE PROCEDURE searchjob(var1 varchar(50))
BEGIN
	select * from data_science_salary dss where dss.job_title like concat('%', var1,'%');
end//
show create procedure searchjob;
call searchjob('analy')//
SELECT @@sql_mode;
