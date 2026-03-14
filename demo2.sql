/*CREATE TABLE if not exists t2(
	NAME VARCHAR(20),
	register_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
	update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
)*/





/*
create database if not exists book_libs character set utf8mb4 collate utf8mb4_0900_as_cs;

use book_libs;

create table if not exists student(
	stu_name varchar(20) comment '学生姓名',
	stu_sex char comment '性别',
	stu_age tinyint comment '年龄',
	stu_height double(3,1) comment '身高',
	stu_birthday date comment '生日',
	stu_regtime datetime default current_timestamp comment '注册',
	stu_uptime dateTIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT '更新'
	
);
*/


/*
alter table aaa add bbb int [first|after ccc];

alter table aaa change ccc rename bbb int [first|after ccc];

alter table aaa modify bbb ccc inr [first|after ccc];

alter table aaa drop bbb;

alter table aaa rename bbb;

drop table if not exists aaa;

truncate table aaa;
*/




/*create table if not exists employees();

alter table employees modify mobile after code1;
alter table employees change birth rename birthday date;
alter table employees modify sex char(1);
alter table employees drop if not exists note;
ALTER TABLE employees add favoriate_activity varchar(100);
ALTER TABLE employees rename employees_info;
*/


/*
insert into aaa values (bbb);

insert into student values (1,'a',1,1);

insert into student(a,b,c) values (a,b,x);

insert into student values (),();

*/





/*
update aaa set ();

upadte aaa set name = 'ew' where if = '8';

upadte aaa set height = height + 2 where age < 20;

upadte student set birthday = '2003-01-01' , age = 21 where id = 11；

update student set age = age + 1;

*/


/*
delete from aaa where bbb;

delete from student where sge > 23;

delete from student where sge > 23 and id > 12;

delete from student where sge > 23 or id > 12;

delete from student;

*/



/*
create database if not exists test04;

use test04;

select now();

select * from aaa;
select aaa.* from aaa;

select aaa,bbb from ccc;

select aaa as bbb, ccc ddd from ggg;

select distinct sex from aaa;

SELECT aaa AS bbb, ccc ddd, 'aaa' bbb FROM ggg;

select aaa,bbb,aaa* ifnull (12,0) as ccc from ggg;
*/


/*
describe student;
desc books;

select * from aaa where a = '1';

select * from aaa where a is not null;
select * from aaa where a is null;
SELECT * FROM aaa WHERE a <=> NULL;

SELECT * FROM aaa WHERE birthday between '1111-11-11' and '2222-22-22';

SELECT * FROM aaa WHERE gender = '女';
SELECT * FROM aaa WHERE gender != '女';
SELECT * FROM aaa WHERE gender <> '女';

SELECT * FROM aaa WHERE tel like '136________';
SELECT * FROM aaa WHERE tel LIKE '136%';

SELECT * FROM aaa WHERE work_place in ('1','2','3','4');

SELECT * FROM aaa WHERE birthday not BETWEEN '1111-11-11' AND '2222-22-22';
*/


/*
select * from aaa where bbb = 111 and ccc like '%222%'；
select *,find_in_set('222', ccc) from aaa;

select * from aaa where gender = '男' and find_in_set('111', bbb) = 0;
*/

 
 /*
 select abs(-5), ceil(2.3), ceil(-2.3), floor(2.3), FLOOR(-2.3), rand(),truncate(rand(), 2), rand(8), RAND(8), round(2.3), round(2.36, 1), truncate(2.36, 1);
 */
 
 
 
 /*
 select char_length('1231234'), concat('%','1234513','%'), find_in_set('aa', '12,3123,123,aa');
 
 select curdate(), curtime(), now(), utc_date(), utc_time();
 
 select year(NOW()), month(NOW()), week(NOW()), weekday(NOW()), dayofweek(NOW()), day(NOW()), DAYOFmonth(NOW());
 
 select adddate(now(), interval 1 month), addtime('11:11:11', 20), datediff(curdate(), '2026-11-11'), timediff('12:00:00', '11:00:00') ;
 
 select date_format(now(), '%Y年%m月%d日');
 
 select time_format(now(), '%H时%i分%s秒');
 
 select str_to_date('2000年03月01日', '%Y年%m月%d日');
 
 select * from aaa where day(birthday) = day(now(0) and month(birthday) = month(now());
 select * from aaa where date_format(birthday, '%m-%d') = DATE_FORMAT(now(), '%m-%d');
 
 select * from aaa where month(birthday) = month(now());
 SELECT * FROM aaa WHERE MONTH(birthday) = MONTH(NOW() + 1);
 
 SELECT * WHERE round(datediff(now(), birthday), 1) / 365 as age FROM aaa;
 */