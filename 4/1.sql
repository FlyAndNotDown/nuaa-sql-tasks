/* 建立男学生的视图，属性包括学号、姓名、选修课程名和成绩 */
create view male_student(sno, sname, cname, grade) as (
    select student.no, student.name, class.name, sc.grade
        from student, sc, class
            where student.sex = '男'
                and student.no = sc.sno
                and class.no = sc.cno
);
