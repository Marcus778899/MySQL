create database tnl;
show variables like 'secure_file_priv';
SHOW GLOBAL VARIABLES LIKE 'local_infile';
use tnl;
show tables;

-- 先利用python建立表格(可以用迴圈方式建立欄位較為快速)
-- 匯入資料
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 'ON';
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Survey_22Dec.csv' into table survey_22dec
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' ignore 1 lines;
select * from survey_22dec;
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Survey_22Oct.csv' into table survey_22oct
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' ignore 1 lines;
select * from survey_22oct;
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Survey_23Jan.csv' into table survey_23jan
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' ignore 1 lines;
select * from survey_23jan;
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/RM_list.csv' into table rm_list
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' ignore 1 lines;
select * from rm_list;

-- 將eamil改成正確的
select ip_address,LOWER(SUBSTRING(q0017, INSTR(q0017, '?user_account=') + LENGTH('?user_account='))) AS email from survey_22oct;




