/* 查询选课门数唯一的学生的学号 */
select sno from sc
    group by sno
    having count(*) = 2;
