`tlias`CREATE TABLE USER (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID,主键',
    username VARCHAR(20) COMMENT '用户名',
    PASSWORD VARCHAR(32) COMMENT '密码',
    NAME VARCHAR(10) COMMENT '姓名',
    age TINYINT UNSIGNED COMMENT '年龄'
) COMMENT '用户表';

INSERT INTO USER (id, username, PASSWORD, NAME, age) VALUES 
(1, 'daqiao', '123456', '大乔', 22),
(2, 'xiaoqiao', '123456', '小乔', 18),
(3, 'diaohan', '123456', '貂蝉', 24),
(4, 'lvbu', '123456', '吕布', 28),
(5, 'zhaoyun', '12345678', '赵云', 27);

