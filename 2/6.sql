/* 查询选修信息系统成绩第2名的学生姓名 */
select student.name from student, sc, class
    where student.no = sc.sno
        and sc.cno = class.no
        and class.name = '信息系统'
        and sc.grade = (
            select max(sc.grade) from sc, class
                where sc.cno = class.no
                    and class.name = '信息系统'
                    and sc.grade != (
                        select max(sc.grade) from sc, class
                            where sc.cno = class.no
                                and class.name = '信息系统'
                    )
        );
