/* 创建索引 */
create unique index student_no on student(no);
create unique index class_no on class(no);
create unique index sc_no on sc(sno asc, cno asc);
