/* 查询所有学生除了选修1号课程外的学号和平均成绩，其结果按平均成绩的降序排列 */
select student.no, avg(sc.grade) from student, class, sc
    where class.no = sc.cno
        and class.no <> '1'
        and sc.grade >= 60
        and student.no = sc.sno
    group by(student.no)
    order by avg(sc.grade) desc;
