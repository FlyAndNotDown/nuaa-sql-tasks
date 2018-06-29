/* 在男学生视图中查询平均成绩大于80分的学生学号与姓名 */
select sno, sname
    from male_student
    group by sno
    having avg(grade) > 80;
