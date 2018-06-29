/* 查询选修1号课程的学生学号与姓名 */
select student.no, student.name from student, sc
    where student.no = sc.sno and sc.cno = '1';
