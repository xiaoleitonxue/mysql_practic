/*
if(aaa, 111, 222);
ifnull(aaa, 111);
case when aaa then bbb else ccc end as ccc from ddd;


select aaa, bbb, ccc, round(if(year(birthday) > 1990, salary *1.1, salary *1.05), 1) as newsalary from fff;

select aaa, if(gender = '男', 'man', 'woman') as  type from bbb;

select salary * ifnull(pct,  0) as 奖金 from aaa;

SELECT salary * IFNULL(pct,  0) AS 奖金 FROM aaa;

select aa, bb, cc,
	case
		when gender = '男' then 2000 * IFNULL(pct,  0)
		when gender = '女' THEN 3000 * IFNULL(pct,  0)
		else 0
	end as 奖金
	from ddd;
	
	
	SELECT aa, bb, cc,
	CASE gender
		WHEN '男' THEN 2000 * IFNULL(pct,  0)
		WHEN '女' THEN 3000 * IFNULL(pct,  0)
		ELSE 0
	END AS 奖金
	FROM ddd;
	*/



/*
select avg(salary), min(salary), max(salary), sum (salary) from aaa

select max(birthday) as 最小， min(birthday) as 最大 from aaa;

select count(*), count(1), count(aaa) from bbb; 
*/


/*
select gender, count(*), avg(salary) from aaa group by gender;

sELECT year(birthday), COUNT(*), AVG(salary) FROM aaa GROUP BY YEAR(birthday), gender;

SELECT gender, COUNT(*), AVG(salary) FROM aaa where salary > 5000 GROUP BY gender;

SELECT gender, COUNT(*), AVG(salary) FROM aaa GROUP BY gender having avg(salary) > 11000;
SELECT gender, COUNT(*), AVG(salary) as av FROM aaa GROUP BY gender HAVING av > 11000;

select * from aaa order by birth asc;
SELECT * FROM aaa ORDER BY birth desc;

SELECT * FROM aaa ORDER BY salary DESC;

SELECT * FROM aaa ORDER BY salary DESC, birth desc;

SELECT * FROM aaa where pct is not null ORDER BY birth DESC;

select * from aaa order by salary desc limit 0, 1;
SELECT * FROM aaa ORDER BY salary DESC LIMIT 1;

SELECT * FROM aaa ORDER BY salary DESC LIMIT 1, 1;

SELECT * FROM aaa ORDER BY salary LIMIT 1;
SELECT * FROM aaa ORDER BY salary asc LIMIT 1;

SELECT * FROM aaa where gender = '女' ORDER BY salary LIMIT 1;

SELECT * FROM aaa ORDER BY bbb ASC LIMIT (page - 1) * size, size;
*/
