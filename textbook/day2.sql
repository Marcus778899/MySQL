use myshop;
show tables;
delete from employee where emp_name = 'Johnny';
select * from employee;
create table product(
    productName varchar(10),
    price int,
    times timestamp not null default now()
    );
    desc product;
    insert into product(productName, price, times)
    value('nivida',20000,'2023-03-09 08:00:37');
    insert into product(productName, price)
    value('nivida',20000);
    select * from product;
    select database();
    create database photo_app;
    use photo_app;
    select database();
create table users(
    id int primary key auto_increment,
    username varchar(200)
    );
    insert into users(username)
    value('阿明'),
		 ('Tom'),
         ('Sara'),
         ('小美');
         select * from users;
create table Photos(
    id int primary key auto_increment,
    url varchar(200),
    user_ID int,
    foreign key (user_ID) references users(id))
    ;
    insert into photos(url,user_ID)
    value('https://123.jpg',4),
         ('https://456.jpg',1);
	insert into photos(url,user_ID)
    value('https://654.jpg',4),
         ('https://789.jpg',4);
	insert into photos(url)
    value('https://654.jpg');
	select * from photos;
    desc photos;
 drop table photos;
 create table photos(
 id int primary key auto_increment,
 url varchar(200),
 user_id int,
 foreign key (user_id) references users(id) on delete cascade
);

insert into photos(url, user_id)
values
('http://one.jpg', 4),
('http://two.jpg', 1),
('http://45645.jpg', 1),
('http://1312.jpg', 1),
('http://788.jpg', 2),
('http://234.jpg', 3),
('http://987.jpg', 4);
select * from photos;
desc photos;
delete from users where id = 1; 
select * from users;
select * from photos;

-- set null模式下

create table photos(
 id int primary key auto_increment,
 url varchar(200),
 user_id int,
 foreign key (user_id) references users(id) on delete set null
);

insert into photos(url, user_id)
values
('http://one.jpg', 4),
('http://788.jpg', 2),
('http://234.jpg', 3),
('http://987.jpg', 4);

delete from users where id = 4;

create database photo_app2;
use photo_app2;
select database();
-- join敘述

select contents, username from users
join comments
on users.id = comments.user_id;

-- join實作
select contents, url from photos
join comments
on comments.photo_id = photos.id;

-- id一樣

select id from photos
join comments
on comments.id = photos.id;
show warnings;

-- 改變名稱處理方法'AS'	
select comments.id from photos
join comments 
on comments.photo_id = photos.id;

select comments.id, photos.id
from comments
join photos
on photos.id = comments.photo_id;

select comments.id as comment_id, photos.id as photo_id
from comments
join photos
on photos.id = comments.photo_id;

select contents,url
from comments as c
join photos as p
on p.id = c.photo_id;

select c.contents, p.url
from comments as c
join photos as p
on p.id = c.photo_id;

select c.contents, p.url
from comments c
join photos p
on p.id = c.photo_id;

-- 四種Join

insert into photos(url)
value('123.jpg');
	 select * from photos;
     insert into users(username)
     value('賭神');
     
select url, username 
from photos
left join users
on users.id=photos.user_id;

select url, username 
from photos
right join users
on users.id=photos.user_id; 

-- 都要合併 full outer join
select url, username 
from photos
left join users
on users.id=photos.user_id
union
select url, username 
from photos
right join users
on users.id=photos.user_id; 

-- where&Join
   
select url, contents
from comments as c
join photos as p
on c.photo_id = p.id
where c.user_id = p.user_id;    

-- 三個table的Join

select url, contents, username
from comments c
join photos p on c.photo_id = p.id
join users u on c.user_id = u.id
and c.user_id = p.user_id;

-- 練習看看

create table author(
 id int not null primary key auto_increment,
 authorName varchar(50)
);

create table books(
  id int not null primary key auto_increment,
  title varchar(50),
  fk_author_id int,
  foreign key (fk_author_id) references author(id) on delete cascade
);

create table reviews(
  id int not null primary key auto_increment,
  rating int,
  fk_reviewer_id int,
  fk_book_id int,
  foreign key (fk_reviewer_id) references author(id) on delete cascade,
  foreign key (fk_book_id) references books(id) on delete cascade
);

insert into author (authorName)
values('金庸'),('JK Rowling'), ('查理蒙格');

insert into books(title, fk_author_id)
values('天龍八部',1),('哈利波特',2),('窮查理的普通常識',3);

insert into reviews (rating, fk_reviewer_id, fk_book_id)
values(3,1,2),(4,2,1),(5,3,3);

select title, authorName, rating 
from reviews r
join author a on a.id = r.fk_reviewer_id
join books b on r.fk_book_id = b.id
and a.id = r.fk_book_id;

select title, authorname, rating
from books b
join author a on b.fk_author_id = a.id
join reviews r on r.fk_book_id = b.id
and r.fk_reviewer_id = a.id;
select * from comments;

select photo_id, count(id)
from comments
group by photo_id;
