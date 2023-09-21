use kaggle;
show tables;
SHOW VARIABLES LIKE 'secure_file_priv';
desc data_science_salary;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Latest_Data_Science_Salaries .csv' INTO TABLE data_science_salary
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' ignore 1 lines;
SHOW GRANTS FOR 'root'@'localhost';
SELECT User FROM mysql.user;
SHOW VARIABLES ;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 'ON';
show warnings;

-- sql語法 

select * from data_science_salary where salary_in_USD > 100000 order by salary_in_USD desc limit 10 offset 3;
-- 這兩句都是幹相同的事情
select job_title,count(*) as counts,avg(salary_in_USD) as avg_salary  from data_science_salary group by job_title HAVING job_title = 'AI Scientist' or job_title = 'Data Scientist';
select job_title, counts, avg_salary
FROM (
    SELECT job_title, COUNT(*) AS counts, AVG(salary_in_USD) AS avg_salary
    FROM data_science_salary
    GROUP BY job_title
) AS subquery
WHERE job_title = 'AI Scientist' OR job_title = 'Data Scientist';
-- 過濾資料(順便為這個表個取別名dss)
select  distinct job_title from data_science_salary as dss;
select  count( distinct expertise_level,job_title ) from data_science_salary as dss;
-- 模糊搜尋(如果要搜尋%或底線記得跳脫字元)
select * from data_science_salary dss where job_title like '%an%';
-- procedure
SHOW PROCEDURE STATUS;

drop procedure if exists searchjob;
delimiter //
CREATE PROCEDURE searchjob(var1 varchar(50))
BEGIN
	select * from data_science_salary dss where dss.job_title like concat('%', var1,'%');
end//
delimiter ;






