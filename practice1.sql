CREATE DATABASE IF NOT EXISTS test04_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

USE test04_lib;

CREATE TABLE IF NOT EXISTS books(
	id INT COMMENT '书编号',
	NAME VARCHAR(50) COMMENT '书名',
	AUTHORS VARCHAR(100) COMMENT '作者',
	price FLOAT(3,1) COMMENT '价格',
	pubdate YEAR COMMENT '出版日期',
	note VARCHAR(100) COMMENT '说明',
	num INT COMMENT '库存'
)CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

INSERT INTO books VALUES ('1', 'Tal of AAA', 'Dickes', '23', '1995', 'novel', '11');

INSERT INTO books(id, NAME, AUTHORS, price, pubdate, note, num) VALUES ('2', 'EmmaT', 'Jane lura', '35', '1993', 'joke', '22');

INSERT INTO books VALUES 
	('3', 'Story of Jane', 'JaneTin', '40', '2001', 'novel', '0'), 
	('4', 'Lovey Day', 'George Byron', '20', '2005', 'novel', '30'),  
	('5', 'Old land', 'Honore Blade', '30', '2010', 'law', '0'),  
	('6', 'The Battle', 'Upton Sara', '30', '1999', 'medicine', '40'),  
	('7', 'Rose Hood', 'Richard haggard', '28', '2008', 'cartoon', '28');
	
UPDATE books SET price = price + 5 WHERE note = 'novel';

UPDATE books SET price = 40, note = 'drama' WHERE NAME = 'EmmaT';

DELETE FROM books WHERE num = 0;

SELECT NAME FROM books WHERE NAME LIKE '%a%';

SELECT COUNT(*) AS 数量, SUM(num) AS 总库存 FROM books WHERE NAME LIKE '%a%';

SELECT * FROM books WHERE note = 'novel' ORDER BY price DESC;

SELECT * FROM books ORDER BY num DESC, note ASC;

SELECT note, COUNT(*) AS 数量 FROM books GROUP BY note;

SELECT note, SUM(num) AS 数量 FROM books GROUP BY note HAVING 数量 > 30;

SELECT * FROM books LIMIT 5, 5;

SELECT note, SUM(num) AS 数量 FROM books GROUP BY note LIMIT 1;

SELECT * FROM books WHERE CHAR_LENGTH(REPLACE(NAME, ' ' , '')) >= 10;

SELECT NAME AS 书名,
	CASE note 
		WHEN 'novel' THEN '小说'
		WHEN 'law' THEN '法律'
		WHEN 'medicine' THEN '医药'
		WHEN 'cartoon' THEN '卡通'
		WHEN 'joke' THEN '笑话' 
		ELSE note
	END AS 类型
FROM books;

SELECT NAME, 
	CASE 
		WHEN num = 0 THEN '无货'
		WHEN num < 10 THEN '畅销'
		WHEN num > 30 THEN '滞销'
		ELSE num
	END
FROM books;

/*
select note, sum(num) from books group by note; 
*/

SELECT IFNULL(note, '总量') AS 类型, SUM(num) FROM books GROUP BY note WITH ROLLUP; 

/*
SELECT 
    note,
    SUM(num) AS 分类库存,
    (SELECT SUM(num) FROM books) AS 总库存
FROM books
GROUP BY note;
*/

/*
select note, count(note) from books group by note;
*/

SELECT IFNULL(note, '总量') AS 类型, COUNT(note) FROM books GROUP BY note WITH ROLLUP;

/*
select * from books order by num desc limit 3;

SELECT * FROM books ORDER BY pubdate LIMIT 1;

SELECT * FROM books ORDER BY price desc LIMIT 1;
*/

SELECT * FROM books

SELECT * FROM books WHERE pubdate = (SELECT MIN(pubdate) FROM books);

SELECT * FROM books WHERE price = (SELECT MAX(price) FROM books);

SELECT * FROM books WHERE CHAR_LENGTH(REPLACE(NAME, ' ', '')) = (SELECT MAX(CHAR_LENGTH(REPLACE(NAME, ' ', ''))) FROM books);