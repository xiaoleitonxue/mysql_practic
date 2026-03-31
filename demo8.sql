-- 开启事务
START TRANSACTION ;

-- 保存员工基本信息 - emp
INSERT INTO emp(id, username, NAME, gender, phone, job, salary, image, entry_date, dept_id, create_time, update_time)
  VALUES (48, 'qiaofeng', '乔峰', 1, '13356560011', 1, 6000, '1.jpg', '2020-01-01', 1, NOW(), NOW());

-- 批量保存员工工作经历信息 - emp_expr
INSERT INTO emp_expr(emp_id, BEGIN, END, company, job)
  VALUES(48,'2020-01-01','2021-01-01','百度','java开发'),
        (48,'2021-01-01','2023-01-01','字节','java开发');

-- 提交事务
COMMIT ;

-- 回滚事务
ROLLBACK ;




-- 创建员工日志表
CREATE TABLE emp_log(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID, 主键',
    operate_time DATETIME COMMENT '操作时间',
    info VARCHAR(2000) COMMENT '日志信息'
) COMMENT '员工日志表';