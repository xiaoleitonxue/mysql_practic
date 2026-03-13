CREATE DATABASE IF NOT EXISTS book_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

USE book_lib;

CREATE TABLE IF NOT EXISTS books(
	book_name VARCHAR(20) COMMENT '书名',
	book_price DOUBLE(4, 1) COMMENT '图书价格',
	book_num INT COMMENT '图书数量'

)CHARSET = utf8mb4 COMMENT '图书表';

SHOW TABLES FROM book_lib;



CREATE DATABASE IF NOT dol;

CREATE TABLE IF NOT EXISTS ti(
	ti_age TINYINT UNSIGNED COMMENT '年龄',
	ti_nmber BIGINT UNSIGNED COMMENT '学号'
);



