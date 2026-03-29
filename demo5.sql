CREATE TABLE dept (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID, 主键',
  NAME VARCHAR(10) NOT NULL UNIQUE COMMENT '部门名称',
  create_time DATETIME DEFAULT NULL COMMENT '创建时间',
  update_time DATETIME DEFAULT NULL COMMENT '修改时间'
) COMMENT '部门表';

INSERT INTO dept VALUES (1,'学工部','2023-09-25 09:47:40','2023-09-25 09:47:40'),
						  (2,'教研部','2023-09-25 09:47:40','2023-10-09 15:17:04'),
						  (3,'咨询部2','2023-09-25 09:47:40','2023-11-30 21:26:24'),
						  (4,'就业部','2023-09-25 09:47:40','2023-09-25 09:47:40'),
						  (5,'人事部','2023-09-25 09:47:40','2023-09-25 09:47:40'),
						  (15,'行政部','2023-11-30 20:56:37','2023-11-30 20:56:37');




CREATE TABLE emp(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID,主键',
    username VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
    PASSWORD VARCHAR(32) DEFAULT '123456' COMMENT '密码',
    NAME VARCHAR(10) NOT NULL COMMENT '姓名',
    gender TINYINT UNSIGNED NOT NULL COMMENT '性别, 1:男, 2:女',
    phone CHAR(11) NOT NULL UNIQUE COMMENT '手机号',
    job TINYINT UNSIGNED COMMENT '职位, 1 班主任, 2 讲师 , 3 学工主管, 4 教研主管, 5 咨询师',
    salary INT UNSIGNED COMMENT '薪资',
    image VARCHAR(255) COMMENT '头像',
    entry_date DATE COMMENT '入职日期',
    dept_id INT UNSIGNED COMMENT '部门ID',
    create_time DATETIME COMMENT '创建时间',
    update_time DATETIME COMMENT '修改时间'
) COMMENT '员工表';


INSERT INTO emp VALUES 
(1,'shinaian','123456','施耐庵',1,'13309090001',4,15000,'5.png','2000-01-01',2,'2023-10-20 16:35:33','2023-11-16 16:11:26'),
(2,'songjiang','123456','宋江',1,'13309090002',2,8600,'01.png','2015-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:37'),
(3,'lujunyi','123456','卢俊义',1,'13309090003',2,8900,'01.png','2008-05-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:39'),
(4,'wuyong','123456','吴用',1,'13309090004',2,9200,'01.png','2007-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:41'),
(5,'gongsunsheng','123456','公孙胜',1,'13309090005',2,9500,'01.png','2012-12-05',2,'2023-10-20 16:35:33','2023-10-20 16:35:43'),
(6,'huosanniang','123456','扈三娘',2,'13309090006',3,6500,'01.png','2013-09-05',1,'2023-10-20 16:35:33','2023-10-20 16:35:45'),
(7,'chaijin','123456','柴进',1,'13309090007',1,4700,'01.png','2005-08-01',1,'2023-10-20 16:35:33','2023-10-20 16:35:47'),
(8,'likui','123456','李逵',1,'13309090008',1,4800,'01.png','2014-11-09',1,'2023-10-20 16:35:33','2023-10-20 16:35:49'),
(9,'wusong','123456','武松',1,'13309090009',1,4900,'01.png','2011-03-11',1,'2023-10-20 16:35:33','2023-10-20 16:35:51'),
(10,'linchong','123456','林冲',1,'13309090010',1,5000,'01.png','2013-09-05',1,'2023-10-20 16:35:33','2023-10-20 16:35:53'),
(11,'huyanzhuo','123456','呼延灼',1,'13309090011',2,9700,'01.png','2007-02-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:55'),
(12,'xiaoliguang','123456','小李广',1,'13309090012',2,10000,'01.png','2008-08-18',2,'2023-10-20 16:35:33','2023-10-20 16:35:57'),
(13,'yangzhi','123456','杨志',1,'13309090013',1,5300,'01.png','2012-11-01',1,'2023-10-20 16:35:33','2023-10-20 16:35:59'),
(14,'shijin','123456','史进',1,'13309090014',2,10600,'01.png','2002-08-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:01'),
(15,'sunerniang','123456','孙二娘',2,'13309090015',2,10900,'01.png','2011-05-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:03'),
(16,'luzhishen','123456','鲁智深',1,'13309090016',2,9600,'01.png','2010-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:05'),
(17,'liying','12345678','李应',1,'13309090017',1,5800,'01.png','2015-03-21',1,'2023-10-20 16:35:33','2023-10-20 16:36:07'),
(18,'shiqian','123456','时迁',1,'13309090018',2,10200,'01.png','2015-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:09'),
(19,'gudasao','123456','顾大嫂',2,'13309090019',2,10500,'01.png','2008-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:11'),
(20,'ruanxiaoer','123456','阮小二',1,'13309090020',2,10800,'01.png','2018-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:13'),
(21,'ruanxiaowu','123456','阮小五',1,'13309090021',5,5200,'01.png','2015-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:15'),
(22,'ruanxiaoqi','123456','阮小七',1,'13309090022',5,5500,'01.png','2016-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:17'),
(23,'ruanji','123456','阮籍',1,'13309090023',5,5800,'01.png','2012-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:19'),
(24,'tongwei','123456','童威',1,'13309090024',5,5000,'01.png','2006-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:21'),
(25,'tongmeng','123456','童猛',1,'13309090025',5,4800,'01.png','2002-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:23'),
(26,'yanshun','123456','燕顺',1,'13309090026',5,5400,'01.png','2011-01-01',3,'2023-10-20 16:35:33','2023-11-08 22:12:46'),
(27,'lijun','123456','李俊',1,'13309090027',2,6600,'8.png','2004-01-01',2,'2023-10-20 16:35:33','2023-11-16 17:56:59'),
(28,'lizhong','123456','李忠',1,'13309090028',5,5000,'6.png','2007-01-01',3,'2023-10-20 16:35:33','2023-11-17 16:34:22'),
(30,'liyun','123456','李云',1,'13309090030',NULL,NULL,'01.png','2020-03-01',NULL,'2023-10-20 16:35:33','2023-10-20 16:36:31'),
(36,'linghuchong','123456','令狐冲',1,'18809091212',2,6800,'1.png','2023-10-19',2,'2023-10-20 20:44:54','2023-11-09 09:41:04');



ALTER TABLE emp ADD CONSTRAINT fk_emp_dept_id FOREIGN KEY (dept_id) REFERENCES dept(id);


-- ===========================================一对一=====================================
CREATE TABLE tb_user(
    id INT UNSIGNED  PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
    NAME VARCHAR(10) NOT NULL COMMENT '姓名',
    gender TINYINT UNSIGNED NOT NULL COMMENT '性别, 1 男  2 女',
    phone CHAR(11) COMMENT '手机号',
    degree VARCHAR(10) COMMENT '学历'
) COMMENT '用户信息表';

INSERT INTO tb_user VALUES (1,'白眉鹰王',1,'18812340001','初中'),
                        (2,'青翼蝠王',1,'18812340002','大专'),
                        (3,'金毛狮王',1,'18812340003','初中'),
                        (4,'紫衫龙王',2,'18812340004','硕士');


CREATE TABLE tb_user_card(
    id INT UNSIGNED  PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
    nationality VARCHAR(10) NOT NULL COMMENT '民族',
    birthday DATE NOT NULL COMMENT '生日',
    idcard CHAR(18) NOT NULL COMMENT '身份证号',
    issued VARCHAR(20) NOT NULL COMMENT '签发机关',
    expire_begin DATE NOT NULL COMMENT '有效期限-开始',
    expire_end DATE COMMENT '有效期限-结束',
    user_id INT UNSIGNED NOT NULL UNIQUE COMMENT '用户ID',
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES tb_user(id)
) COMMENT '用户信息表';

INSERT INTO tb_user_card VALUES (1,'汉','1960-11-06','100000100000100001','朝阳区公安局','2000-06-10',NULL,1),
        (2,'汉','1971-11-06','100000100000100002','静安区公安局','2005-06-10','2025-06-10',2),
        (3,'汉','1963-11-06','100000100000100003','昌平区公安局','2006-06-10',NULL,3),
        (4,'回','1980-11-06','100000100000100004','海淀区公安局','2008-06-10','2028-06-10',4);
        
        
        
--  ======================================多对多=============================
CREATE TABLE tb_student(
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    NAME VARCHAR(10) COMMENT '姓名',
    NO VARCHAR(10) COMMENT '学号'
) COMMENT '学生表';
INSERT INTO tb_student(NAME, NO) VALUES ('黛绮丝', '2000100101'),('谢逊', '2000100102'),('殷天正', '2000100103'),('韦一笑', '2000100104');


CREATE TABLE tb_course(
   id INT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
   NAME VARCHAR(10) COMMENT '课程名称'
) COMMENT '课程表';
INSERT INTO tb_course (NAME) VALUES ('Java'), ('PHP'), ('MySQL') , ('Hadoop');


CREATE TABLE tb_student_course(
   id INT AUTO_INCREMENT COMMENT '主键' PRIMARY KEY,
   student_id INT NOT NULL COMMENT '学生ID',
   course_id  INT NOT NULL COMMENT '课程ID',
   CONSTRAINT fk_courseid FOREIGN KEY (course_id) REFERENCES tb_course (id),
   CONSTRAINT fk_studentid FOREIGN KEY (student_id) REFERENCES tb_student (id)
)COMMENT '学生课程中间表';

INSERT INTO tb_student_course(student_id, course_id) VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(3,4);`tb_student_course`