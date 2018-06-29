/* 创建三张表 */
create table student(
	no char(9) primary key,
	name char(20) unique,
	sex char(2),
	age smallint,
	dept char(20)
);

create table class(
	no char(4) primary key,
	name char(40),
	pno char(4),
	credit smallint,
	foreign key(pno) references class(no)
);

create table sc(
	sno char(9),
	cno char(4),
	grade smallint,
	primary key(sno, cno),
	foreign key(sno) references student(no),
	foreign key(cno) references class(no)
);
