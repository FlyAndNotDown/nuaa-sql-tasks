/* 查询选修课程名为'数据库'的学生学号与姓名 */
select student.no, student.name from student, sc, class
    where student.no = sc.sno and sc.cno = class.no and class.name = '数据库';
