show databases;
use abc;
show tables;
select * from abc1;
drop table abc1;
create table data1(
 ID int not null primary key auto_increment,
 student varchar(3),
 gender varchar(10),
 class int
 );
desc data1;
insert into data1(class, student, gender)
value(302,'林聖倫','male'),
	 (302,'金城武','male'),
     (310,'王祖賢','female');
     
select id, gender, class, student from data1;
update data1 set class = 308 where class=302;
delete from data1 where student = '林聖倫';
use mysql;
show tables;
select * from password_history;

show databases;
create database photo_app2;
use photo_app2;
show tables;

select * from photos;

select * from comments;

select user_id, count(id) from comments group by user_id ;

select user_id, count(*) num_comment_create from comments group by user_id ;

select photo_id ,count(id) num_photo_comment from comments group by photo_id;

create table artists(
  id int primary key auto_increment,
  artist_name varchar(10));

insert into artists(artist_name)
value('Jay'),('Leo王'),('陳綺貞'),('太妍');

select * from artists;

create table songs(
  id int primary key auto_increment,
  song_name varchar(50),
  artists_id int,
  foreign key (artists_id) references artists(id) on delete cascade);


insert into songs(song_name, artists_id)
value('以父之名',1),
     ('夜的第七章',1),
     ('快樂的甘蔗人',2),
     ('旅行的意義',3),
     ('私奔到月球',3),
     ('Spark',4);
     
select * from songs;
select * from artists join songs on artists.id = songs.artists_id;
select artist_name, count(artists_id) as numbers_of_songs from artists
join songs on artists.id = songs.artists_id
group by artist_name;        


-- Having與編寫程序
select * from photos;

select * from comments;

select photo_id, count(*) numbers from comments c
where photo_id < 3
group by photo_id
having count(*);

show databases;


