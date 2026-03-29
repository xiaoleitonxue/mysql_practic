-- 部门管理
CREATE TABLE dept(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID, 主键',
    NAME VARCHAR(10) NOT NULL UNIQUE COMMENT '部门名称',
    create_time DATETIME COMMENT '创建时间',
    update_time DATETIME COMMENT '修改时间'
) COMMENT '部门表' ;

INSERT INTO dept (id, NAME, create_time, update_time) VALUES
        (1,'学工部',NOW(),NOW()),
        (2,'教研部',NOW(),NOW()),
        (3,'咨询部',NOW(),NOW()),
        (4,'就业部',NOW(),NOW()),
        (5,'人事部',NOW(),NOW());


-- 员工管理
CREATE TABLE emp(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID,主键',
    username VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
    PASSWORD VARCHAR(32) NOT NULL COMMENT '密码',
    NAME VARCHAR(10) NOT NULL COMMENT '姓名',
    gender TINYINT UNSIGNED NOT NULL COMMENT '性别, 1:男, 2:女',
    phone CHAR(11) NOT NULL UNIQUE COMMENT '手机号',
    job TINYINT UNSIGNED COMMENT '职位, 1:班主任,2:讲师,3:学工主管,4:教研主管,5:咨询师',
    salary INT UNSIGNED COMMENT '薪资',
    image VARCHAR(255) COMMENT '头像',
    entry_date DATE COMMENT '入职日期',
    dept_id INT UNSIGNED COMMENT '关联的部门ID',
    create_time DATETIME COMMENT '创建时间',
    update_time DATETIME COMMENT '修改时间'
) COMMENT '员工表';


-- 准备测试数据
INSERT INTO `emp` VALUES (1,'shinaian','123456','施耐庵',1,'13309090001',4,15000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2000-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:35:35'),
			(2,'songjiang','123456','宋江',1,'13309090002',2,8600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:35:37'),
			(3,'lujunyi','123456','卢俊义',1,'13309090003',2,8900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-05-01',2,'2024-10-27 16:35:33','2024-10-27 16:35:39'),
			(4,'wuyong','123456','吴用',1,'13309090004',2,9200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:35:41'),
			(5,'gongsunsheng','123456','公孙胜',1,'13309090005',2,9500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-12-05',2,'2024-10-27 16:35:33','2024-10-27 16:35:43'),
			(6,'huosanniang','123456','扈三娘',2,'13309090006',3,6500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2013-09-05',1,'2024-10-27 16:35:33','2024-10-27 16:35:45'),
			(7,'chaijin','123456','柴进',1,'13309090007',1,4700,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2005-08-01',1,'2024-10-27 16:35:33','2024-10-27 16:35:47'),
			(8,'likui','123456','李逵',1,'13309090008',1,4800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2014-11-09',1,'2024-10-27 16:35:33','2024-10-27 16:35:49'),
			(9,'wusong','123456','武松',1,'13309090009',1,4900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-03-11',1,'2024-10-27 16:35:33','2024-10-27 16:35:51'),
			(10,'lichong','123456','林冲',1,'13309090010',1,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2013-09-05',1,'2024-10-27 16:35:33','2024-10-27 16:35:53'),
			(11,'huyanzhuo','123456','呼延灼',1,'13309090011',2,9700,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-02-01',2,'2024-10-27 16:35:33','2024-10-27 16:35:55'),
			(12,'xiaoliguang','123456','小李广',1,'13309090012',2,10000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-08-18',2,'2024-10-27 16:35:33','2024-10-27 16:35:57'),
			(13,'yangzhi','123456','杨志',1,'13309090013',1,5300,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-11-01',1,'2024-10-27 16:35:33','2024-10-27 16:35:59'),
			(14,'shijin','123456','史进',1,'13309090014',2,10600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2002-08-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:01'),
			(15,'sunerniang','123456','孙二娘',2,'13309090015',2,10900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-05-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:03'),
			(16,'luzhishen','123456','鲁智深',1,'13309090016',2,9600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2010-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:05'),
			(17,'liying','12345678','李应',1,'13309090017',1,5800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-03-21',1,'2024-10-27 16:35:33','2024-10-27 16:36:07'),
			(18,'shiqian','123456','时迁',1,'13309090018',2,10200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:09'),
			(19,'gudasao','123456','顾大嫂',2,'13309090019',2,10500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:11'),
			(20,'ruanxiaoer','123456','阮小二',1,'13309090020',2,10800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2018-01-01',2,'2024-10-27 16:35:33','2024-10-27 16:36:13'),
			(21,'ruanxiaowu','123456','阮小五',1,'13309090021',5,5200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:15'),
			(22,'ruanxiaoqi','123456','阮小七',1,'13309090022',5,5500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2016-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:17'),
			(23,'ruanji','123456','阮籍',1,'13309090023',5,5800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:19'),
			(24,'tongwei','123456','童威',1,'13309090024',5,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2006-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:21'),
			(25,'tongmeng','123456','童猛',1,'13309090025',5,4800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2002-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:23'),
			(26,'yanshun','123456','燕顺',1,'13309090026',5,5400,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:25'),
			(27,'lijun','123456','李俊',1,'13309090027',5,6600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2004-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:27'),
			(28,'lizhong','123456','李忠',1,'13309090028',5,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-01-01',3,'2024-10-27 16:35:33','2024-10-27 16:36:29'),
			(29,'songqing','123456','宋清',1,'13309090029',NULL,5100,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2020-01-01',NULL,'2024-10-27 16:35:33','2024-10-27 16:36:31'),
			(30,'liyun','123456','李云',1,'13309090030',NULL,NULL,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2020-03-01',NULL,'2024-10-27 16:35:33','2024-10-27 16:36:31');





SELECT * FROM emp;

SELECT * FROM emp, dept;

SELECT * FROM emp, dept WHERE emp.dept_id = dept.id;



SELECT emp.id, emp.name, dept.name FROM emp, dept WHERE emp.dept_id = dept.id;

//SELECT emp.id, emp.name, dept.name FROM emp INNER JOIN dept ON emp.dept_id = dept.id;

SELECT emp.id, emp.name, dept.name FROM emp JOIN dept ON emp.dept_id = dept.id;



SELECT emp.id, emp.name, dept.name FROM emp, dept WHERE emp.dept_id = dept.id AND emp.gender = 1 AND salary > 8000;

SELECT emp.id, emp.name, dept.name FROM emp JOIN dept ON emp.dept_id = dept.id WHERE emp.gender = 1 AND salary > 8000;



SELECT e.id, e.name, d.name FROM emp e JOIN dept d ON e.dept_id = d.id WHERE e.gender = 1 AND salary > 8000;



SELECT e.name, d.name FROM emp e LEFT OUTER JOIN dept d ON e.dept_id = d.id;

SELECT e.name, d.name FROM emp e RIGHT OUTER JOIN dept d ON e.dept_id = d.id;

SELECT e.name, d.name FROM  emp e LEFT JOIN dept d ON e.dept_id = d.id WHERE salary > 8000;




SELECT MIN(entry_date) FROM emp;

SELECT * FROM emp WHERE entry_date = '2000-01-01';

SELECT * FROM emp WHERE entry_date = (SELECT MIN(entry_date) FROM emp);



-- 行子查询
-- A. 查询与“李忠”的薪资及职位都相同的员工信息；
-- a. 查询“李忠”的薪资及职位

SELECT salary, job FROM emp WHERE NAME = '李忠';

-- b. 查询指定薪资和职位的员工信息

SELECT * FROM emp WHERE salary = 5000 AND job = 5;

SELECT * FROM emp WHERE salary = (SELECT salary FROM emp WHERE NAME = '李忠') AND job = (SELECT job FROM emp WHERE NAME = '李忠');

-- 优化

SELECT * FROM emp WHERE (salary, job) = (SELECT salary, job FROM emp WHERE NAME = '李忠');





SELECT dept_id, MAX(salary) FROM emp GROUP BY dept_id;

SELECT * FROM emp e, (SELECT dept_id, MAX(salary) max_salary FROM emp GROUP BY dept_id) a WHERE (e.dept_id, e.salary) = (a.dept_id, a.max_salary);





-- 需求：

-- 1. 查询 "教研部" 性别为男，且在 "2011-05-01" 之后入职的员工信息。

SELECT * FROM emp WHERE gender = '1' AND entry_date >= '2011-05-01';

SELECT id FROM dept WHERE NAME = '教研部';

SELECT * FROM emp WHERE gender = '1' AND entry_date >= '2011-05-01' AND dept_id = (SELECT id FROM dept WHERE NAME = '教研部');

-- 2. 查询工资低于公司平均工资的且性别为男的员工信息。

SELECT AVG(salary) FROM emp;

SELECT * FROM emp WHERE gender = '1' AND salary <= (SELECT AVG(salary) FROM emp);


-- 3. 查询部门人数超过 10 人的部门名称。

SELECT dept_id, COUNT(dept_id) num FROM emp  GROUP BY dept_id HAVING num >= 10;

SELECT NAME FROM dept d, (SELECT dept_id, COUNT(dept_id) num FROM emp  GROUP BY dept_id HAVING num >= 10) a WHERE d.id = a.dept_id;


-- 4. 查询在 "2010-05-01" 后入职，且薪资高于 10000 的 "教研部" 员工信息，并根据薪资倒序排序。


SELECT * FROM emp WHERE entry_date > '2010-05-01' AND salary > 10000 AND dept_id = (SELECT id FROM dept WHERE NAME = '教研部') ORDER BY salary DESC;


-- 5. 查询工资低于本部门平均工资的员工信息。


SELECT dept_id, AVG(salary) FROM emp GROUP BY dept_id;

SELECT * FROM emp e, (SELECT dept_id, AVG(salary) avg_salary FROM emp GROUP BY dept_id) a WHERE e.salary < a.avg_salary;

