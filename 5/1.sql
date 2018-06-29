/* 计算每个学生有成绩的课程门数、平均成绩 */
select count(sc.cno), avg(sc.grade) from sc;
