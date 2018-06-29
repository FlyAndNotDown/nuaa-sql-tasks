/* 查询学习全部课程学生姓名 */
select name from student where not exists(
    select * from class where not exists(
        select * from sc where sno = student.no and cno = class.no
    )
);
