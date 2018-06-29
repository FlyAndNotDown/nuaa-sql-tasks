/* 在SC表中删除课程名为数据结构的成绩的元组 */
delete from sc
    where sc.cno = (
        select class.no from class where class.name = '数据结构'
    );
