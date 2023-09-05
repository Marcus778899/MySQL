use ig_app;
show tables;
-- 第一題
select * from users order by created_at limit 5;

-- 第二題
select count(*),dayname(created_at) from users 
group by dayname(created_at)
order by count(*) desc;

-- 第三題
select * from users;
select * from photos;
desc photos;
select u.username,p.image_url from users u
left join photos p on u.id = p.user_id
order by image_url;

-- 第四題(重點複習)
select * from likes;
select count(*) as count_num,likes.photo_id,photos.image_url from likes
join photos on photos.id = likes.photo_id
group by photo_id
order by count_num desc;

select photos.id, username
from photos
join users
on photos.user_id = users.id
where photos.id =
(select photo_id
from likes
group by photo_id
order by count(*) desc
limit 1);

-- 第五題
DELIMITER //
create procedure most_like()
begin
	select photos.id, username
	from photos
	join users
	on photos.user_id = users.id
	where photos.id =
	(select photo_id
	from likes
	group by photo_id
	order by count(*) desc
	limit 1);
end //
DELIMITER ;

call most_like();

-- 第六題
select * from tags;
select * from photo_tags;
select count(*) total,p.tag_id,t.tag_name from photo_tags p
join tags t on t.id = p.tag_id
group by tag_id
order by count(*) desc limit 10;

-- 第七題
select * from users;
select * from likes;
select u.username,count(l.photo_id) total from users u
join likes l on l.user_id = u.id
group by l.user_id
having total =(select count(*) from photos);

-- 第八題
select * from users;
select count(*) from users;
select * from photos;
select count(*) from photos;
select (select count(*) from photos)/(select count(*) from users) as '平均'