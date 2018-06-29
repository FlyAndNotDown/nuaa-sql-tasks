/* 添加入学日期 */
alter table student add entrance date;

/* 将student的age列更改为smallint类型，尝试更改一下，虽然他原来就是 */
alter table student modify age smallint;

/* 将class表中的name设置为unique */
alter table class add unique(name);
