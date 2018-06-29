/* 查询不选1号课程的学生学号与姓名 */
select no, name from student where not exists(
    select * from sc where sno = student.name and cno = '1'
);
