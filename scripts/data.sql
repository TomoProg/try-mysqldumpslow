drop database if exists try_dumpslow_db
;
create database try_dumpslow_db
;

use try_dumpslow_db
;

create table comments (
	id integer primary key,
	user_id integer not null,
	contents varchar(255)
)
;

insert into comments values
(1, 1,  'コメント1-1'),
(2, 1,  'コメント2-1'),
(3, 2,  'コメント3-2'),
(4, 3,  'コメント4-3'),
(5, 10, 'コメント5-10')
;
