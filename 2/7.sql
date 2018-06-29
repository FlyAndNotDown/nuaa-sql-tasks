/* 查询所有3个学分课程中有3门以上（含3门）课程获80分以上（含80分）的学生的姓名 */
select student.name from sc, class, student
    where sc.cno = class.no
        and sc.sno = student.no
        and sc.grade >= 80
        and class.credit = 4
    group by student.no, student.name
    having count(student.no) >= 3;
