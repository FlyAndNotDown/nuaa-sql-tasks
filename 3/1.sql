/* 把1号课程的非空成绩提高10％ */
update sc set sc.grade = grade * 1.1
    where cno = '1'
        and grade != '0';
